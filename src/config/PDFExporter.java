package config;

import com.lowagie.text.*;
import com.lowagie.text.pdf.*;
import java.awt.Color;

import javax.swing.*;
import javax.swing.filechooser.FileNameExtensionFilter;
import javax.swing.table.TableModel;
import java.io.File;
import java.io.FileOutputStream;
import java.sql.*;

public class PDFExporter {

    // --- Update these with your DB info ---
    private static final String DB_URL = "jdbc:mysql://localhost:3306/cateringdb";
    private static final String DB_USER = "cateringdb";
    private static final String DB_PASSWORD = "";

    // Helper method: get customer name by user ID from DB
    private static String getCustomerNameFromUserId(String userId) {
        String customerName = "N/A";
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            String sql = "SELECT u_fname FROM tbl_users WHERE id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, userId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                customerName = rs.getString("u_fname");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return customerName;
    }

    public static void exportSelectedRowsToPDF(JTable table, int[] selectedRows) {
        JFileChooser chooser = new JFileChooser();
        chooser.setDialogTitle("Save PDF");
        chooser.setFileFilter(new FileNameExtensionFilter("PDF Documents", "pdf"));

        int result = chooser.showSaveDialog(null);
        if (result != JFileChooser.APPROVE_OPTION) {
            return;
        }

        File file = chooser.getSelectedFile();
        String filePath = file.getAbsolutePath();
        if (!filePath.toLowerCase().endsWith(".pdf")) {
            filePath += ".pdf";
        }

        Document document = new Document(PageSize.A4, 50, 50, 50, 50); // Portrait

        try {
            PdfWriter.getInstance(document, new FileOutputStream(filePath));
            document.open();

            // --- HEADER ---
            Font headerFont = new Font(Font.TIMES_ROMAN, 18, Font.BOLD);
            Paragraph title = new Paragraph("JOHANNES CATERING SERVICES\n", headerFont);
            title.setAlignment(Element.ALIGN_CENTER);
            document.add(title);

            Font subtitleFont = new Font(Font.TIMES_ROMAN, 14, Font.BOLD);
            Paragraph subtitle = new Paragraph("Catering Reservation Receipt\n\n", subtitleFont);
            subtitle.setAlignment(Element.ALIGN_CENTER);
            document.add(subtitle);

            // --- Loop through each selected row and print receipt details ---
            TableModel model = table.getModel();

            for (int rowIndex : selectedRows) {
                // Get data from table model
                String reservationDate = getColumnValue(model, rowIndex, "reservation_date");
                String uId = getColumnValue(model, rowIndex, "u_id");
                String cateringPackage = getColumnValue(model, rowIndex, "catering_package");
                String numberOfGuestsStr = getColumnValue(model, rowIndex, "number_of_guests");
                String specialRequests = getColumnValue(model, rowIndex, "special_requests");
                String status = getColumnValue(model, rowIndex, "status");

                // Lookup customer name from DB by u_id
                String customerName = getCustomerNameFromUserId(uId);

                // Convert reservationDate to nicer format (e.g. May 30, 2025)
                String formattedDate = formatDate(reservationDate);

                // Parse number of guests
                int numberOfGuests = 0;
                try {
                    numberOfGuests = Integer.parseInt(numberOfGuestsStr);
                } catch (Exception e) {
                    numberOfGuests = 0;
                }

                // Assume package price per guest based on cateringPackage (example values)
                double packagePricePerGuest = getPackagePrice(cateringPackage);
                double totalPrice = packagePricePerGuest * numberOfGuests;

                // Receipt content
                Font normalFont = new Font(Font.TIMES_ROMAN, 12);
                Font boldFont = new Font(Font.TIMES_ROMAN, 12, Font.BOLD);

                // Draw a separator line
                document.add(new Paragraph("-----------------------------------------------------"));

                Paragraph datePara = new Paragraph("Date: " + formattedDate + "\n\n", normalFont);
                document.add(datePara);

                document.add(new Paragraph("Reservation Details:", boldFont));
                document.add(new Paragraph("---------------------", normalFont));
                document.add(new Paragraph("Customer Name     : " + customerName, normalFont));
                document.add(new Paragraph("Reservation Date  : " + formattedDate, normalFont));
                document.add(new Paragraph("Catering Package  : " + cateringPackage, normalFont));
                document.add(new Paragraph("Number of Guests  : " + numberOfGuests, normalFont));
                document.add(new Paragraph("Special Requests  : " + specialRequests, normalFont));
                document.add(new Paragraph("Status            : " + status + "\n", normalFont));

                document.add(new Paragraph("Pricing:", boldFont));
                document.add(new Paragraph("---------------------", normalFont));
                document.add(new Paragraph(String.format("Package Price     : ₱%,.2f per guest", packagePricePerGuest), normalFont));
                document.add(new Paragraph(String.format("Total Price       : ₱%,.2f\n", totalPrice), normalFont));

                document.add(new Paragraph("-----------------------------------------------------"));
                document.add(new Paragraph("Thank you for choosing Johannes Catering Services!", normalFont));
                document.add(new Paragraph("For questions, call us at (0908) 161-8046"));
                document.add(new Paragraph("-----------------------------------------------------\n\n"));
            }

            // Footer with generated date
            Font footerFont = new Font(Font.TIMES_ROMAN, 10, Font.ITALIC);
            Paragraph footer = new Paragraph("Generated on: " + java.time.LocalDate.now(), footerFont);
            footer.setAlignment(Element.ALIGN_RIGHT);
            document.add(footer);

            document.close();
            JOptionPane.showMessageDialog(null, "PDF exported successfully to:\n" + filePath);

        } catch (Exception e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(null, "Error generating PDF: " + e.getMessage(), "PDF Export Error", JOptionPane.ERROR_MESSAGE);
        }
    }

    // Helper: get the string value of a column by its name in the table model
    private static String getColumnValue(TableModel model, int rowIndex, String columnName) {
        int colIndex = -1;
        for (int i = 0; i < model.getColumnCount(); i++) {
            if (model.getColumnName(i).equalsIgnoreCase(columnName)) {
                colIndex = i;
                break;
            }
        }
        if (colIndex == -1) return "";
        Object value = model.getValueAt(rowIndex, colIndex);
        return value != null ? value.toString() : "";
    }

    // Helper: format date string (assumes input is yyyy-MM-dd or similar)
    private static String formatDate(String dateStr) {
        try {
            java.time.LocalDate date = java.time.LocalDate.parse(dateStr.substring(0, 10)); // trim time if exists
            java.time.format.DateTimeFormatter formatter = java.time.format.DateTimeFormatter.ofPattern("MMMM d, yyyy");
            return date.format(formatter);
        } catch (Exception e) {
            return dateStr;
        }
    }

    // Helper: get package price per guest based on package name
    private static double getPackagePrice(String packageName) {
        // Example prices, replace with your actual logic
        switch (packageName.toLowerCase()) {
            case "standard": return 500.00;
            case "premium": return 750.00;
            default: return 500.00;
        }
    }
}
