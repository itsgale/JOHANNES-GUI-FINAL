
package config;
import com.lowagie.text.*;
import com.lowagie.text.pdf.*;
import java.awt.Color;

import javax.swing.*;
import javax.swing.filechooser.FileNameExtensionFilter;
import javax.swing.table.TableModel;
import java.io.File;
import java.io.FileOutputStream;

public class PDFExporter {

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

    Document document = new Document(PageSize.A4.rotate(), 40, 40, 40, 40); // Landscape mode for more space

    try {
        PdfWriter.getInstance(document, new FileOutputStream(filePath));
        document.open();

        // Logo (optional)
        try {
            Image logo = Image.getInstance("Images/logo.png");
            logo.scaleToFit(60, 60);
            logo.setAlignment(Image.ALIGN_LEFT);
            document.add(logo);
        } catch (Exception e) {
            System.out.println("Logo not found.");
        }

        // Header
        Font titleFont = new Font(Font.TIMES_ROMAN, 20, Font.BOLD);
        Paragraph header = new Paragraph("Johannes Pogi Catering Services\nCatering Reservation ", titleFont);
        header.setAlignment(Element.ALIGN_CENTER);
        header.setSpacingAfter(20);
        document.add(header);

        TableModel model = table.getModel();
        int columnCount = model.getColumnCount();

        // Table with headers
        PdfPTable pdfTable = new PdfPTable(columnCount);
        pdfTable.setWidthPercentage(100);
        pdfTable.setSpacingBefore(10f);
        pdfTable.setSpacingAfter(10f);

        Font headerFont = new Font(Font.HELVETICA, 12, Font.BOLD);
        Font cellFont = new Font(Font.HELVETICA, 11);

        // Column headers
        for (int col = 0; col < columnCount; col++) {
            PdfPCell headerCell = new PdfPCell(new Phrase(model.getColumnName(col), headerFont));
            headerCell.setBackgroundColor(new Color(220, 220, 220)); // light gray
            headerCell.setHorizontalAlignment(Element.ALIGN_CENTER);
            headerCell.setPadding(5);
            pdfTable.addCell(headerCell);
        }

        // Data rows
        for (int rowIndex : selectedRows) {
            for (int col = 0; col < columnCount; col++) {
                Object valueObj = model.getValueAt(rowIndex, col);
                String value = valueObj != null ? valueObj.toString() : "";
                PdfPCell dataCell = new PdfPCell(new Phrase(value, cellFont));
                dataCell.setHorizontalAlignment(Element.ALIGN_CENTER);
                dataCell.setPadding(4);
                pdfTable.addCell(dataCell);
            }
        }

        document.add(pdfTable);

        // Footer
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
}