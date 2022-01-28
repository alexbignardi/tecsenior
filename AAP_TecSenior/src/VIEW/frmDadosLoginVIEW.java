package VIEW;

import DAO.LoginDAO;
import DTO.LoginDTO;
import VIEW.util.LimitaCaracteres;
import java.awt.Color;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;


public class frmDadosLoginVIEW extends javax.swing.JFrame {

    /**
     * Creates new form frmCadastroLoginVIEW
     */
    public frmDadosLoginVIEW() {
        initComponents();
        DesabilitarSenha();
        Caracteres();
        getContentPane().setBackground(Color.WHITE);

    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        txtCadEmail = new javax.swing.JTextField();
        txtCadCPF = new javax.swing.JTextField();
        txtCadSenha1 = new javax.swing.JPasswordField();
        txtCadSenha2 = new javax.swing.JPasswordField();
        btnCadastrar = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tabelaLogin = new javax.swing.JTable();
        btnListar = new javax.swing.JButton();
        txtCodigo = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        btnCarregar = new javax.swing.JButton();
        btnLimpar = new javax.swing.JButton();
        btnAlterar = new javax.swing.JButton();
        btnExcluir = new javax.swing.JButton();
        jLabel7 = new javax.swing.JLabel();
        rboxSim = new javax.swing.JRadioButton();
        rboxNao = new javax.swing.JRadioButton();
        btnVoltar = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel1.setText("LOGIN");

        jLabel2.setText("E-mail");

        jLabel3.setText("CPF");

        jLabel4.setText("Senha");

        jLabel5.setText("Repetir Senha");

        txtCadSenha1.setEnabled(false);

        txtCadSenha2.setEnabled(false);
        txtCadSenha2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtCadSenha2ActionPerformed(evt);
            }
        });

        btnCadastrar.setText("CADASTRAR");
        btnCadastrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCadastrarActionPerformed(evt);
            }
        });

        tabelaLogin.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Código", "E-mail", "CPF"
            }
        ));
        jScrollPane1.setViewportView(tabelaLogin);

        btnListar.setText("LISTAR");
        btnListar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnListarActionPerformed(evt);
            }
        });

        txtCodigo.setEnabled(false);

        jLabel6.setText("Código");

        btnCarregar.setText("CARREGAR CAMPOS");
        btnCarregar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCarregarActionPerformed(evt);
            }
        });

        btnLimpar.setText("LIMPAR");
        btnLimpar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLimparActionPerformed(evt);
            }
        });

        btnAlterar.setText("ALTERAR");
        btnAlterar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAlterarActionPerformed(evt);
            }
        });

        btnExcluir.setText("EXCLUIR");
        btnExcluir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnExcluirActionPerformed(evt);
            }
        });

        jLabel7.setText("Alterar Senha");

        rboxSim.setText("Sim");
        rboxSim.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                rboxSimActionPerformed(evt);
            }
        });

        rboxNao.setText("Não");
        rboxNao.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                rboxNaoActionPerformed(evt);
            }
        });

        btnVoltar.setText("VOLTAR");
        btnVoltar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnVoltarActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 528, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(layout.createSequentialGroup()
                            .addGap(300, 300, 300)
                            .addComponent(jLabel1))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(37, 37, 37)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                .addGroup(layout.createSequentialGroup()
                                    .addComponent(btnVoltar)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(btnLimpar, javax.swing.GroupLayout.PREFERRED_SIZE, 79, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGap(18, 18, 18)
                                    .addComponent(btnCarregar))
                                .addGroup(layout.createSequentialGroup()
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                        .addComponent(jLabel5)
                                        .addComponent(jLabel4))
                                    .addGap(18, 18, 18)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(txtCadSenha1, javax.swing.GroupLayout.PREFERRED_SIZE, 269, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(txtCadSenha2, javax.swing.GroupLayout.PREFERRED_SIZE, 269, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGap(173, 173, 173))))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(40, 40, 40)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                .addComponent(btnListar)
                                .addGroup(layout.createSequentialGroup()
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                        .addComponent(jLabel7)
                                        .addComponent(jLabel2)
                                        .addComponent(jLabel3)
                                        .addComponent(jLabel6))
                                    .addGap(18, 18, 18)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(txtCadEmail, javax.swing.GroupLayout.PREFERRED_SIZE, 271, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(txtCodigo, javax.swing.GroupLayout.PREFERRED_SIZE, 52, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(txtCadCPF, javax.swing.GroupLayout.PREFERRED_SIZE, 271, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGroup(layout.createSequentialGroup()
                                            .addComponent(rboxSim)
                                            .addGap(18, 18, 18)
                                            .addComponent(rboxNao)))
                                    .addGap(35, 35, 35)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                        .addComponent(btnCadastrar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(btnAlterar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(btnExcluir, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))))))
                .addContainerGap(79, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addComponent(jLabel1)
                .addGap(23, 23, 23)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtCodigo, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel6))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtCadEmail, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2)
                    .addComponent(btnCadastrar))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(txtCadCPF, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel3))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 6, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel7)
                            .addComponent(rboxSim)
                            .addComponent(rboxNao)))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(btnAlterar)
                        .addGap(11, 11, 11)
                        .addComponent(btnExcluir)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtCadSenha1, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4))
                .addGap(11, 11, 11)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtCadSenha2, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel5)
                    .addComponent(btnListar))
                .addGap(18, 18, 18)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 199, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnCarregar)
                    .addComponent(btnLimpar)
                    .addComponent(btnVoltar))
                .addGap(64, 64, 64))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnCadastrarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCadastrarActionPerformed

        cadastrarLogin();
        listarLogin();
        LimparCampos();

    }//GEN-LAST:event_btnCadastrarActionPerformed

    private void txtCadSenha2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtCadSenha2ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtCadSenha2ActionPerformed

    private void btnListarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnListarActionPerformed

        listarLogin();

    }//GEN-LAST:event_btnListarActionPerformed

    private void btnCarregarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCarregarActionPerformed

        carregarCampos();

    }//GEN-LAST:event_btnCarregarActionPerformed

    private void btnLimparActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLimparActionPerformed

        LimparCampos();

    }//GEN-LAST:event_btnLimparActionPerformed

    private void btnAlterarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAlterarActionPerformed

        AlterarLogin();
        listarLogin();
        LimparCampos();

    }//GEN-LAST:event_btnAlterarActionPerformed

    private void btnExcluirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnExcluirActionPerformed

        ExcluirLogin();
        listarLogin();
        LimparCampos();
    }//GEN-LAST:event_btnExcluirActionPerformed

    private void rboxSimActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_rboxSimActionPerformed

        HabilitarSenha();
    }//GEN-LAST:event_rboxSimActionPerformed

    private void rboxNaoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_rboxNaoActionPerformed

        DesabilitarSenha();
    }//GEN-LAST:event_rboxNaoActionPerformed

    private void btnVoltarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnVoltarActionPerformed

        Voltar();


    }//GEN-LAST:event_btnVoltarActionPerformed

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
            java.util.logging.Logger.getLogger(frmDadosLoginVIEW.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(frmDadosLoginVIEW.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(frmDadosLoginVIEW.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(frmDadosLoginVIEW.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new frmDadosLoginVIEW().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnAlterar;
    private javax.swing.JButton btnCadastrar;
    private javax.swing.JButton btnCarregar;
    private javax.swing.JButton btnExcluir;
    private javax.swing.JButton btnLimpar;
    private javax.swing.JButton btnListar;
    private javax.swing.JButton btnVoltar;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JRadioButton rboxNao;
    private javax.swing.JRadioButton rboxSim;
    private javax.swing.JTable tabelaLogin;
    private javax.swing.JTextField txtCadCPF;
    private javax.swing.JTextField txtCadEmail;
    private javax.swing.JPasswordField txtCadSenha1;
    private javax.swing.JPasswordField txtCadSenha2;
    private javax.swing.JTextField txtCodigo;
    // End of variables declaration//GEN-END:variables

    private void cadastrarLogin() {
        String email;
        String cpf;
        String senha1;
        String senha2;

        email = txtCadEmail.getText();
        cpf = txtCadCPF.getText();
        senha1 = txtCadSenha1.getText();
        senha2 = txtCadSenha2.getText();

        if (email.equals("") || cpf.equals("") || senha1.equals("") || senha2.equals("")) {
            JOptionPane.showMessageDialog(null, "Campos obrigatórios");

        } else {

            if (senha1.equals(senha2)) {

            } else {
                JOptionPane.showMessageDialog(null, "Senhas não conferem");
            }

            LoginDTO objlogindto = new LoginDTO();

            objlogindto.setEmail(email);
            objlogindto.setCpf(cpf);
            objlogindto.setSenha(senha1);

            LoginDAO objlogindao = new LoginDAO();
            objlogindao.cadastrarLogin(objlogindto);

        }
    }

    private void listarLogin() {
        try {

            LoginDAO objlogindao = new LoginDAO();

            DefaultTableModel model = (DefaultTableModel) tabelaLogin.getModel();
            model.setNumRows(0);

            ArrayList<LoginDTO> lista = objlogindao.ListarLogin();

            for (int num = 0; num < lista.size(); num++) {
                model.addRow(new Object[]{
                    lista.get(num).getIdUsuario(),
                    lista.get(num).getEmail(),
                    lista.get(num).getCpf()
                });

            }

        } catch (Exception erro) {
            JOptionPane.showMessageDialog(null, "Listar Logins VIEW: " + erro);

        }

    }

    private void carregarCampos() {
        int setar = tabelaLogin.getSelectedRow();

        txtCodigo.setText(tabelaLogin.getModel().getValueAt(setar, 0).toString());
        txtCadEmail.setText(tabelaLogin.getModel().getValueAt(setar, 1).toString());
        txtCadCPF.setText(tabelaLogin.getModel().getValueAt(setar, 2).toString());
    }

    private void LimparCampos() {

        txtCodigo.setText("");
        txtCadEmail.setText("");
        txtCadCPF.setText("");
        txtCadSenha1.setText("");
        txtCadSenha2.setText("");
        txtCadEmail.requestFocus();

    }

    private void AlterarLogin() {

        int id;
        String email;
        String cpf;
        String senha1;
        String senha2;

        id = Integer.parseInt(txtCodigo.getText());
        email = txtCadEmail.getText();
        cpf = txtCadCPF.getText();
        senha1 = txtCadSenha1.getText();
        senha2 = txtCadSenha2.getText();

        if (senha1.equals(senha2)) {

        } else {
            JOptionPane.showMessageDialog(null, "Senhas não conferem");
        }

        if (rboxSim.isSelected()) {
            if (email.equals("") || cpf.equals("") || senha1.equals("") || senha2.equals("")) {
                JOptionPane.showMessageDialog(null, "Campos obrigatórios");

            } else {
                LoginDTO objlogindto = new LoginDTO();
                objlogindto.setIdUsuario(id);
                objlogindto.setEmail(email);
                objlogindto.setCpf(cpf);
                objlogindto.setSenha(senha1);

                LoginDAO objlogindao = new LoginDAO();
                objlogindao.alterarLogin(objlogindto);
            }
        } else {
            if (email.equals("") || cpf.equals("")) {
                JOptionPane.showMessageDialog(null, "Campos obrigatórios");

            } else {

                LoginDTO objlogindto = new LoginDTO();
                objlogindto.setIdUsuario(id);
                objlogindto.setEmail(email);
                objlogindto.setCpf(cpf);

                LoginDAO objlogindao = new LoginDAO();
                objlogindao.alterarLoginSemSenha(objlogindto);

            }
        }

    }

    private void ExcluirLogin() {

        int id;

        id = Integer.parseInt(txtCodigo.getText());

        LoginDTO objlogindto = new LoginDTO();
        objlogindto.setIdUsuario(id);

        LoginDAO objlogindao = new LoginDAO();
        objlogindao.excluirLogin(objlogindto);

    }

    private void HabilitarSenha() {

        rboxSim.setSelected(true);
        txtCadSenha1.setEnabled(true);
        txtCadSenha2.setEnabled(true);
        rboxNao.setSelected(false);

    }

    private void DesabilitarSenha() {
        txtCadSenha1.setEnabled(false);
        txtCadSenha2.setEnabled(false);
        rboxNao.setSelected(true);
        rboxSim.setSelected(false);

    }

    private void Caracteres() {
        txtCadEmail.setDocument(new LimitaCaracteres(64, LimitaCaracteres.TipoEntrada.Email));
        txtCadCPF.setDocument(new LimitaCaracteres(11, LimitaCaracteres.TipoEntrada.NumeroInteiro));
        txtCadSenha1.setDocument(new LimitaCaracteres(16, LimitaCaracteres.TipoEntrada.Senha));
        txtCadSenha2.setDocument(new LimitaCaracteres(16, LimitaCaracteres.TipoEntrada.Senha));

    }

    private void Voltar() {

        frmMenuVIEW objfrmmenuview = new frmMenuVIEW();
        objfrmmenuview.setVisible(true);

        dispose();

    }

}