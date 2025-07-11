/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import Startups.Login;
import java.awt.Color;
import config.Session;
import config.dbConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import javax.swing.JOptionPane;
public class AdminDashboard extends javax.swing.JFrame {

    private Color H;
    Color h = new Color(51,51,255);
    private Color D;
    Color d = new Color(240,240,240);
    public AdminDashboard() {
        initComponents();
    }
    
    
    public void logEvent(int userId, String username, String action) {
        dbConnect dbc = new dbConnect();
        Connection con = dbc.getConnection();
        PreparedStatement pstmt = null;
        Timestamp time = new Timestamp(new Date().getTime());

        try {
            String sql = "INSERT INTO tbl_logs (u_id, u_username, action_time, log_action) "
                    + "VALUES ('" + userId + "', '" + username + "', '" + time + "', '" + action + "')";
            pstmt = con.prepareStatement(sql);

            /*            pstmt.setInt(1, userId);
            pstmt.setString(2, username);
            pstmt.setTimestamp(3, new Timestamp(new Date().getTime()));
            pstmt.setString(4, userType);*/
            pstmt.executeUpdate();
            System.out.println("Login log recorded successfully.");
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Error recording log: " + e.getMessage());
        } finally {
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                JOptionPane.showMessageDialog(null, "Error closing resources: " + e.getMessage());
            }
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        Main = new javax.swing.JPanel();
        users1 = new javax.swing.JPanel();
        jLabel14 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        users = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        users2 = new javax.swing.JPanel();
        jLabel15 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        users3 = new javax.swing.JPanel();
        jLabel16 = new javax.swing.JLabel();
        jLabel17 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        users4 = new javax.swing.JPanel();
        jLabel18 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        users5 = new javax.swing.JPanel();
        jLabel19 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();
        acc_id = new javax.swing.JLabel();
        acc_fname = new javax.swing.JLabel();
        logout = new javax.swing.JPanel();
        jLabel10 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowActivated(java.awt.event.WindowEvent evt) {
                formWindowActivated(evt);
            }
        });

        Main.setBackground(new java.awt.Color(0, 0, 0));
        Main.setMinimumSize(new java.awt.Dimension(780, 520));
        Main.setPreferredSize(new java.awt.Dimension(780, 520));
        Main.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        users1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                users1MouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                users1MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                users1MouseExited(evt);
            }
        });
        users1.setLayout(null);

        jLabel14.setFont(new java.awt.Font("Arial", 1, 10)); // NOI18N
        jLabel14.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel14.setText("Change Password");
        users1.add(jLabel14);
        jLabel14.setBounds(0, 70, 100, 22);

        jLabel3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/password.png"))); // NOI18N
        users1.add(jLabel3);
        jLabel3.setBounds(20, 10, 64, 64);

        Main.add(users1, new org.netbeans.lib.awtextra.AbsoluteConstraints(170, 90, 100, 100));

        users.setPreferredSize(new java.awt.Dimension(90, 89));
        users.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                usersMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                usersMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                usersMouseExited(evt);
            }
        });
        users.setLayout(null);

        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/006-multiple-users-silhouette.png"))); // NOI18N
        users.add(jLabel2);
        jLabel2.setBounds(20, 10, 64, 64);

        jLabel12.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jLabel12.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel12.setText("Users");
        users.add(jLabel12);
        jLabel12.setBounds(20, 70, 60, 20);

        Main.add(users, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 90, 100, 100));

        users2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                users2MouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                users2MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                users2MouseExited(evt);
            }
        });
        users2.setLayout(null);

        jLabel15.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jLabel15.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel15.setText("Logs");
        users2.add(jLabel15);
        jLabel15.setBounds(20, 70, 60, 22);

        jLabel4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/log.png"))); // NOI18N
        users2.add(jLabel4);
        jLabel4.setBounds(20, 10, 64, 64);

        Main.add(users2, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 90, 100, 100));

        users3.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                users3MouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                users3MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                users3MouseExited(evt);
            }
        });
        users3.setLayout(null);

        jLabel16.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jLabel16.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel16.setText("Add Password");
        users3.add(jLabel16);
        jLabel16.setBounds(0, 70, 100, 15);

        jLabel17.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jLabel17.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel17.setText("Recovery");
        users3.add(jLabel17);
        jLabel17.setBounds(0, 80, 100, 17);

        jLabel6.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/pin-code.png"))); // NOI18N
        users3.add(jLabel6);
        jLabel6.setBounds(20, 10, 64, 64);

        Main.add(users3, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 90, 100, 100));

        users4.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                users4MouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                users4MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                users4MouseExited(evt);
            }
        });
        users4.setLayout(null);

        jLabel18.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jLabel18.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel18.setText("Manage");
        users4.add(jLabel18);
        jLabel18.setBounds(0, 60, 100, 30);

        jLabel7.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jLabel7.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel7.setText("Reservations");
        users4.add(jLabel7);
        jLabel7.setBounds(5, 80, 90, 15);

        jLabel8.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/choose.png"))); // NOI18N
        users4.add(jLabel8);
        jLabel8.setBounds(20, 0, 64, 70);

        Main.add(users4, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 230, 100, 100));

        users5.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                users5MouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                users5MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                users5MouseExited(evt);
            }
        });
        users5.setLayout(null);

        jLabel19.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jLabel19.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel19.setText("Manage Catering");
        users5.add(jLabel19);
        jLabel19.setBounds(0, 70, 100, 15);

        jLabel9.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jLabel9.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel9.setText("Packages");
        users5.add(jLabel9);
        jLabel9.setBounds(0, 80, 100, 20);

        jLabel11.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/catering (1).png"))); // NOI18N
        users5.add(jLabel11);
        jLabel11.setBounds(20, 10, 64, 64);

        Main.add(users5, new org.netbeans.lib.awtextra.AbsoluteConstraints(170, 230, 100, 100));

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setFont(new java.awt.Font("Yu Gothic UI Semibold", 1, 24)); // NOI18N
        jLabel1.setText("Admin Dashboard");
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, -1, -1));

        Main.add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 780, 60));

        jPanel2.setBackground(new java.awt.Color(255, 255, 255));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/005-man-in-suit-and-tie.png"))); // NOI18N
        jPanel2.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 70, 90));

        acc_id.setFont(new java.awt.Font("Arial", 1, 18)); // NOI18N
        acc_id.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        acc_id.setText("ID");
        jPanel2.add(acc_id, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 50, 20, 30));

        acc_fname.setFont(new java.awt.Font("Arial", 1, 18)); // NOI18N
        acc_fname.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        acc_fname.setText("Name");
        jPanel2.add(acc_fname, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 20, -1, 30));

        logout.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                logoutMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                logoutMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                logoutMouseExited(evt);
            }
        });
        logout.setLayout(null);

        jLabel10.setFont(new java.awt.Font("Arial", 1, 18)); // NOI18N
        jLabel10.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel10.setText("Logout");
        logout.add(jLabel10);
        jLabel10.setBounds(0, 10, 130, 22);

        jPanel2.add(logout, new org.netbeans.lib.awtextra.AbsoluteConstraints(630, 30, 130, 40));

        Main.add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 430, 780, 90));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(Main, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(Main, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        setSize(new java.awt.Dimension(796, 559));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void logoutMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_logoutMouseClicked
        dbConnect connector = new dbConnect();
        dbConnect dbc = new dbConnect();
        Session sess = Session.getInstance();
        int userId = 0;
        String uname = null;
        try {
            String query2 = "SELECT * FROM tbl_users WHERE u_id = '" + sess.getUid() + "'";
            PreparedStatement pstmt = connector.getConnection().prepareStatement(query2);

            ResultSet resultSet = pstmt.executeQuery();

            if (resultSet.next()) {
                userId = resultSet.getInt("u_id");   // Update the outer `userId` correctly
                uname = resultSet.getString("u_username");
            }
        } catch (SQLException ex) {
            System.out.println("SQL Exception: " + ex);
        }

        logEvent(userId, uname, "Logged Out");
        Login lg = new Login();
        lg.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_logoutMouseClicked

    private void logoutMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_logoutMouseEntered
        logout.setBackground(h);
    }//GEN-LAST:event_logoutMouseEntered

    private void logoutMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_logoutMouseExited
        logout.setBackground(d);
    }//GEN-LAST:event_logoutMouseExited

    private void usersMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_usersMouseClicked
        U_Admin ua = new U_Admin();
        ua.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_usersMouseClicked

    private void usersMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_usersMouseEntered
        users.setBackground(h);
    }//GEN-LAST:event_usersMouseEntered

    private void usersMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_usersMouseExited
        users.setBackground(d);
    }//GEN-LAST:event_usersMouseExited

    private void formWindowActivated(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowActivated
        Session sess = Session.getInstance();
       if(sess.getUid() == 0)
       {
           JOptionPane.showMessageDialog(null,"No Account. Login FIrst");
           Login lg = new Login();
           lg.setVisible(true);
           this.dispose();
       }else
       {
           acc_fname.setText("" + sess.getFname());
           acc_id.setText("" + sess.getUid());
       }
    }//GEN-LAST:event_formWindowActivated

    private void users1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_users1MouseClicked
    Admin_ChangePass acp = new Admin_ChangePass();
    acp.setVisible(true);
    this.dispose();
    }//GEN-LAST:event_users1MouseClicked

    private void users1MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_users1MouseEntered
        users1.setBackground(h);
    }//GEN-LAST:event_users1MouseEntered

    private void users1MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_users1MouseExited
        users1.setBackground(d);
    }//GEN-LAST:event_users1MouseExited

    private void users2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_users2MouseClicked
        Logs_Admin la = new Logs_Admin();
        la.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_users2MouseClicked

    private void users2MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_users2MouseEntered
        users2.setBackground(h);
    }//GEN-LAST:event_users2MouseEntered

    private void users2MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_users2MouseExited
        users2.setBackground(d);
    }//GEN-LAST:event_users2MouseExited

    private void users3MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_users3MouseClicked
    A_Add_Recovery aar = new A_Add_Recovery();
    aar.setVisible(true);
    this.dispose();
    }//GEN-LAST:event_users3MouseClicked

    private void users3MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_users3MouseEntered
        users3.setBackground(h);
    }//GEN-LAST:event_users3MouseEntered

    private void users3MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_users3MouseExited
        users3.setBackground(d);
    }//GEN-LAST:event_users3MouseExited

    private void users4MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_users4MouseClicked
            aReservations ar = new aReservations();
        ar.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_users4MouseClicked

    private void users4MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_users4MouseEntered
        users4.setBackground(h);
    }//GEN-LAST:event_users4MouseEntered

    private void users4MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_users4MouseExited
        users4.setBackground(d);
    }//GEN-LAST:event_users4MouseExited

    private void users5MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_users5MouseClicked
        aCateringP cp = new aCateringP();
        cp.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_users5MouseClicked

    private void users5MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_users5MouseEntered
        users5.setBackground(h);
    }//GEN-LAST:event_users5MouseEntered

    private void users5MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_users5MouseExited
        users5.setBackground(d);
    }//GEN-LAST:event_users5MouseExited

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(AdminDashboard.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(AdminDashboard.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(AdminDashboard.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(AdminDashboard.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new AdminDashboard().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel Main;
    private javax.swing.JLabel acc_fname;
    private javax.swing.JLabel acc_id;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel logout;
    private javax.swing.JPanel users;
    private javax.swing.JPanel users1;
    private javax.swing.JPanel users2;
    private javax.swing.JPanel users3;
    private javax.swing.JPanel users4;
    private javax.swing.JPanel users5;
    // End of variables declaration//GEN-END:variables
}
