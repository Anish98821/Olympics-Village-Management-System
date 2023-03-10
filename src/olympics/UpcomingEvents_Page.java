/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package olympics;

import connection.connection;
import java.awt.Toolkit;
import java.awt.event.WindowEvent;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Locale;
import javax.swing.table.DefaultTableModel;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoField;
import java.time.temporal.TemporalAccessor;
import java.util.Locale;

/**
 *
 * @author anish
 */
public class UpcomingEvents_Page extends javax.swing.JFrame {
        public void close(){
        WindowEvent we = new WindowEvent(this, WindowEvent.WINDOW_CLOSING);
        Toolkit.getDefaultToolkit().getSystemEventQueue().postEvent(we);
        
    }
    Connection con = null;
    PreparedStatement p = null;
    ResultSet rs = null;
    String query;
    DefaultTableModel model;

    /**
     * Creates new form UpcomingEvents_Page
     */
    public UpcomingEvents_Page() {
        con = connection.connectDB();
        initComponents();
        model = (DefaultTableModel) table.getModel();
        try
        {
         query = String.format("select name from stadiums");
            p = con.prepareStatement(query);      
            rs = p.executeQuery();

           while(rs.next())
           stadium.addItem(rs.getString("name"));
        }
        catch(SQLException e)
        {
        
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

        athleteSidebar5 = new javax.swing.JPanel();
        jPanel11 = new javax.swing.JPanel();
        jPanel27 = new javax.swing.JPanel();
        jLabel18 = new javax.swing.JLabel();
        jLabel19 = new javax.swing.JLabel();
        jPanel6 = new javax.swing.JPanel();
        dashBoard1 = new javax.swing.JButton();
        transportInfo1 = new javax.swing.JButton();
        upcomingEvents1 = new javax.swing.JButton();
        scoreBoards1 = new javax.swing.JButton();
        jLabel8 = new javax.swing.JLabel();
        logout6 = new javax.swing.JButton();
        main = new javax.swing.JPanel();
        header = new javax.swing.JPanel();
        jPanel30 = new javax.swing.JPanel();
        jLabel13 = new javax.swing.JLabel();
        filters = new javax.swing.JPanel();
        date = new com.toedter.calendar.JDateChooser();
        stadiumChoice = new javax.swing.JCheckBox();
        stadium = new javax.swing.JComboBox<>();
        dateChoice = new javax.swing.JCheckBox();
        jLabel1 = new javax.swing.JLabel();
        apply = new javax.swing.JButton();
        tableScroll = new javax.swing.JScrollPane();
        table = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setMinimumSize(new java.awt.Dimension(1920, 1080));
        setPreferredSize(new java.awt.Dimension(1920, 1080));
        setSize(new java.awt.Dimension(1920, 1080));

        athleteSidebar5.setBackground(new java.awt.Color(252, 177, 49));

        jPanel11.setBackground(new java.awt.Color(255, 204, 153));

        jPanel27.setBackground(new java.awt.Color(255, 255, 240));

        jLabel18.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel18.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/rings2(1).png"))); // NOI18N
        jLabel18.setToolTipText("");
        jLabel18.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);

        jLabel19.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel19.setForeground(new java.awt.Color(51, 51, 51));
        jLabel19.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel19.setText("OLYMPICS");

        javax.swing.GroupLayout jPanel27Layout = new javax.swing.GroupLayout(jPanel27);
        jPanel27.setLayout(jPanel27Layout);
        jPanel27Layout.setHorizontalGroup(
            jPanel27Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel27Layout.createSequentialGroup()
                .addGroup(jPanel27Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel27Layout.createSequentialGroup()
                        .addGap(20, 20, 20)
                        .addComponent(jLabel18))
                    .addGroup(jPanel27Layout.createSequentialGroup()
                        .addGap(75, 75, 75)
                        .addComponent(jLabel19)))
                .addContainerGap(20, Short.MAX_VALUE))
        );
        jPanel27Layout.setVerticalGroup(
            jPanel27Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel27Layout.createSequentialGroup()
                .addGap(30, 30, 30)
                .addComponent(jLabel18)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel19)
                .addContainerGap(12, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel11Layout = new javax.swing.GroupLayout(jPanel11);
        jPanel11.setLayout(jPanel11Layout);
        jPanel11Layout.setHorizontalGroup(
            jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel11Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel27, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel11Layout.setVerticalGroup(
            jPanel11Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel11Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel27, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        jPanel6.setBackground(new java.awt.Color(255, 255, 240));

        dashBoard1.setBackground(new java.awt.Color(130, 146, 149));
        dashBoard1.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        dashBoard1.setForeground(new java.awt.Color(255, 255, 240));
        dashBoard1.setText("Dashboard");
        dashBoard1.setBorder(null);
        dashBoard1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                dashBoard1ActionPerformed(evt);
            }
        });

        transportInfo1.setBackground(new java.awt.Color(130, 146, 152));
        transportInfo1.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        transportInfo1.setForeground(new java.awt.Color(255, 255, 240));
        transportInfo1.setText("Transportation");
        transportInfo1.setBorder(null);
        transportInfo1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                transportInfo1ActionPerformed(evt);
            }
        });

        upcomingEvents1.setBackground(new java.awt.Color(130, 146, 152));
        upcomingEvents1.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        upcomingEvents1.setForeground(new java.awt.Color(255, 255, 240));
        upcomingEvents1.setText("Upcoming Events");
        upcomingEvents1.setBorder(null);
        upcomingEvents1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                upcomingEvents1ActionPerformed(evt);
            }
        });

        scoreBoards1.setBackground(new java.awt.Color(130, 146, 152));
        scoreBoards1.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        scoreBoards1.setForeground(new java.awt.Color(255, 255, 255));
        scoreBoards1.setText("Scoreboards");
        scoreBoards1.setBorder(null);
        scoreBoards1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                scoreBoards1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel6Layout = new javax.swing.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel6Layout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addGroup(jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(scoreBoards1, javax.swing.GroupLayout.PREFERRED_SIZE, 214, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(upcomingEvents1, javax.swing.GroupLayout.PREFERRED_SIZE, 214, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(transportInfo1, javax.swing.GroupLayout.PREFERRED_SIZE, 214, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(dashBoard1, javax.swing.GroupLayout.PREFERRED_SIZE, 214, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(20, 20, 20))
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel6Layout.createSequentialGroup()
                .addGap(44, 44, 44)
                .addComponent(dashBoard1, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(40, 40, 40)
                .addComponent(transportInfo1, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(40, 40, 40)
                .addComponent(upcomingEvents1, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(40, 40, 40)
                .addComponent(scoreBoards1, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(134, Short.MAX_VALUE))
        );

        jLabel8.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jLabel8.setForeground(new java.awt.Color(255, 255, 255));
        jLabel8.setText("version 3.14");

        logout6.setBackground(new java.awt.Color(153, 153, 153));
        logout6.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        logout6.setForeground(new java.awt.Color(255, 255, 255));
        logout6.setText("Logout");
        logout6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                logout6ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout athleteSidebar5Layout = new javax.swing.GroupLayout(athleteSidebar5);
        athleteSidebar5.setLayout(athleteSidebar5Layout);
        athleteSidebar5Layout.setHorizontalGroup(
            athleteSidebar5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, athleteSidebar5Layout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addGroup(athleteSidebar5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jPanel11, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(20, 20, 20))
            .addGroup(athleteSidebar5Layout.createSequentialGroup()
                .addGap(75, 75, 75)
                .addGroup(athleteSidebar5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel8)
                    .addComponent(logout6, javax.swing.GroupLayout.PREFERRED_SIZE, 124, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        athleteSidebar5Layout.setVerticalGroup(
            athleteSidebar5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(athleteSidebar5Layout.createSequentialGroup()
                .addGap(38, 38, 38)
                .addComponent(jPanel11, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(39, 39, 39)
                .addComponent(jPanel6, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(logout6, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel8)
                .addContainerGap())
        );

        main.setBackground(new java.awt.Color(252, 239, 186));

        header.setBackground(new java.awt.Color(130, 146, 149));

        jPanel30.setBackground(new java.awt.Color(255, 255, 240));

        jLabel13.setBackground(new java.awt.Color(255, 255, 240));
        jLabel13.setFont(new java.awt.Font("Segoe UI", 1, 48)); // NOI18N
        jLabel13.setForeground(new java.awt.Color(193, 141, 107));
        jLabel13.setText("Upcoming Events");
        jLabel13.setVerticalAlignment(javax.swing.SwingConstants.BOTTOM);

        javax.swing.GroupLayout jPanel30Layout = new javax.swing.GroupLayout(jPanel30);
        jPanel30.setLayout(jPanel30Layout);
        jPanel30Layout.setHorizontalGroup(
            jPanel30Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel30Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel13, javax.swing.GroupLayout.PREFERRED_SIZE, 655, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(549, Short.MAX_VALUE))
        );
        jPanel30Layout.setVerticalGroup(
            jPanel30Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel30Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel13, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        javax.swing.GroupLayout headerLayout = new javax.swing.GroupLayout(header);
        header.setLayout(headerLayout);
        headerLayout.setHorizontalGroup(
            headerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, headerLayout.createSequentialGroup()
                .addContainerGap(30, Short.MAX_VALUE)
                .addComponent(jPanel30, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(130, 130, 130))
        );
        headerLayout.setVerticalGroup(
            headerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(headerLayout.createSequentialGroup()
                .addGap(25, 25, 25)
                .addComponent(jPanel30, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(20, Short.MAX_VALUE))
        );

        filters.setBackground(new java.awt.Color(252, 177, 49));

        stadiumChoice.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        stadiumChoice.setForeground(new java.awt.Color(255, 255, 255));
        stadiumChoice.setText("Stadium");

        dateChoice.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        dateChoice.setForeground(new java.awt.Color(255, 255, 255));
        dateChoice.setText("Date");
        dateChoice.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                dateChoiceActionPerformed(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Segoe UI", 1, 36)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("Filters");

        apply.setBackground(new java.awt.Color(130, 146, 149));
        apply.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        apply.setForeground(new java.awt.Color(255, 255, 255));
        apply.setText("Apply");
        apply.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                applyActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout filtersLayout = new javax.swing.GroupLayout(filters);
        filters.setLayout(filtersLayout);
        filtersLayout.setHorizontalGroup(
            filtersLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(filtersLayout.createSequentialGroup()
                .addGap(49, 49, 49)
                .addGroup(filtersLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(stadiumChoice, javax.swing.GroupLayout.PREFERRED_SIZE, 85, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(dateChoice, javax.swing.GroupLayout.PREFERRED_SIZE, 85, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(stadium, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(filtersLayout.createSequentialGroup()
                        .addGap(49, 49, 49)
                        .addComponent(apply, javax.swing.GroupLayout.PREFERRED_SIZE, 123, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(date, javax.swing.GroupLayout.DEFAULT_SIZE, 229, Short.MAX_VALUE)
                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 165, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(72, Short.MAX_VALUE))
        );
        filtersLayout.setVerticalGroup(
            filtersLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(filtersLayout.createSequentialGroup()
                .addGap(50, 50, 50)
                .addComponent(jLabel1)
                .addGap(45, 45, 45)
                .addComponent(dateChoice)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(date, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(stadiumChoice)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(stadium, javax.swing.GroupLayout.PREFERRED_SIZE, 58, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(60, 60, 60)
                .addComponent(apply, javax.swing.GroupLayout.PREFERRED_SIZE, 58, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(2000, 2000, 2000))
        );

        table.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        table.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Event Name", "Date", "Time", "Stadium Name"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        table.setGridColor(new java.awt.Color(255, 255, 240));
        table.setRowHeight(50);
        tableScroll.setViewportView(table);

        javax.swing.GroupLayout mainLayout = new javax.swing.GroupLayout(main);
        main.setLayout(mainLayout);
        mainLayout.setHorizontalGroup(
            mainLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(mainLayout.createSequentialGroup()
                .addGap(68, 68, 68)
                .addComponent(tableScroll, javax.swing.GroupLayout.PREFERRED_SIZE, 782, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(74, 74, 74)
                .addComponent(filters, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addComponent(header, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        mainLayout.setVerticalGroup(
            mainLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(mainLayout.createSequentialGroup()
                .addComponent(header, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGroup(mainLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(filters, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(mainLayout.createSequentialGroup()
                        .addGap(73, 73, 73)
                        .addComponent(tableScroll, javax.swing.GroupLayout.PREFERRED_SIZE, 519, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(990, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addComponent(athleteSidebar5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGap(0, 0, 0)
                .addComponent(main, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(256, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(main, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
            .addComponent(athleteSidebar5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void dateChoiceActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_dateChoiceActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_dateChoiceActionPerformed

    private void applyActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_applyActionPerformed

        String eventName;
        String eventTime;
        String eventDate;
        String stadiumName;

        for (int i = table.getRowCount() - 1; i >= 0; i--) 
            model.removeRow(i);
        
            try {

                query = "select e.name event_name,e.date,e.time,s.name stadium_name from stadiums s ,events e where s.stadium_id = e.stadium_id";
                if (dateChoice.isSelected()) {
                    String str = date.getDate().toString();
                    String[] arrOfStr = str.split(" ", 6);
                    DateTimeFormatter parser = DateTimeFormatter.ofPattern("MMM").withLocale(Locale.ENGLISH);
                    TemporalAccessor accessor = parser.parse(arrOfStr[1]);
                    String month = Integer.toString(accessor.get(ChronoField.MONTH_OF_YEAR));
                    String date = arrOfStr[2];
                    String year = arrOfStr[5];

                    query += String.format(" and date = '%s-%s-%s'", year, month, date);
                }

                if (stadiumChoice.isSelected()) {
                    query += String.format(" and s.name = '%s'", stadium.getSelectedItem().toString());
                }

                p = con.prepareStatement(query);
                rs = p.executeQuery();

                while (rs.next()) {
                    eventName = rs.getString("event_name");
                    stadiumName = rs.getString("stadium_name");
                    eventDate = rs.getString("date");
                    eventTime = rs.getString("time");

                    model.addRow(new String[]{eventName, eventDate, eventTime, stadiumName});
                }

            } catch (SQLException e) {
                System.out.println(e);
            }
        
    }//GEN-LAST:event_applyActionPerformed

    private void dashBoard1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_dashBoard1ActionPerformed
        close();
        new AthleteMain_Page().setVisible(true);
    }//GEN-LAST:event_dashBoard1ActionPerformed

    private void transportInfo1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_transportInfo1ActionPerformed
        close();
        new Check_transportation().setVisible(true);// TODO add your handling code here:
    }//GEN-LAST:event_transportInfo1ActionPerformed

    private void upcomingEvents1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_upcomingEvents1ActionPerformed
        close();
        new UpcomingEvents_Page().setVisible(true);// TODO add your handling code here:
    }//GEN-LAST:event_upcomingEvents1ActionPerformed

    private void scoreBoards1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_scoreBoards1ActionPerformed
        close();
        new Scoreboard_Page().setVisible(true);// TODO add your handling code here:
    }//GEN-LAST:event_scoreBoards1ActionPerformed

    private void logout6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_logout6ActionPerformed
        close();
        new loginPage().setVisible(true);
    }//GEN-LAST:event_logout6ActionPerformed

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
            java.util.logging.Logger.getLogger(UpcomingEvents_Page.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(UpcomingEvents_Page.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(UpcomingEvents_Page.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(UpcomingEvents_Page.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new UpcomingEvents_Page().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton apply;
    private javax.swing.JPanel athleteSidebar5;
    private javax.swing.JButton dashBoard1;
    private com.toedter.calendar.JDateChooser date;
    private javax.swing.JCheckBox dateChoice;
    private javax.swing.JPanel filters;
    private javax.swing.JPanel header;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel11;
    private javax.swing.JPanel jPanel27;
    private javax.swing.JPanel jPanel30;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JButton logout6;
    private javax.swing.JPanel main;
    private javax.swing.JButton scoreBoards1;
    private javax.swing.JComboBox<String> stadium;
    private javax.swing.JCheckBox stadiumChoice;
    private javax.swing.JTable table;
    private javax.swing.JScrollPane tableScroll;
    private javax.swing.JButton transportInfo1;
    private javax.swing.JButton upcomingEvents1;
    // End of variables declaration//GEN-END:variables
}
