package DAO;

import DTO.LoginDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class LoginDAO {

    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<LoginDTO> lista = new ArrayList();

    public ResultSet autenticacaoUsuario(LoginDTO objlogindto) {
        conn = new ConexaoDAO().concectaBD();

        try {
            String sql = "CALL sp_logar(?,?)";
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, objlogindto.getCpf());
            pstm.setString(2, objlogindto.getSenha());

            rs = pstm.executeQuery();
            return rs;

        } catch (SQLException erro) {
            JOptionPane.showMessageDialog(null, "LoginDAO: " + erro);
            return null;
        }
    }

    public ResultSet cadastrarLogin(LoginDTO objlogindto) {

        conn = new ConexaoDAO().concectaBD();

        try {

            String sql = "CALL sp_criar_login(?,?,?)";

            pstm = conn.prepareStatement(sql);
            pstm.setString(1, objlogindto.getEmail());
            pstm.setString(2, objlogindto.getCpf());
            pstm.setString(3, objlogindto.getSenha());

            pstm.execute();
            pstm.close();

        } catch (SQLException erro) {
            JOptionPane.showMessageDialog(null, "E-mail ou CPF já existentes");
        }
        return null;

    }

    public ArrayList<LoginDTO> ListarLogin() {

        conn = new ConexaoDAO().concectaBD();

        try {

            String sql = "CALL sp_listar_login()";

            pstm = conn.prepareStatement(sql);

            rs = pstm.executeQuery();

            while (rs.next()) {
                LoginDTO objLoginDTO = new LoginDTO();
                objLoginDTO.setIdUsuario(rs.getInt("codigo"));
                objLoginDTO.setEmail(rs.getString("email"));
                objLoginDTO.setCpf(rs.getString("cpf"));

                lista.add(objLoginDTO);

            }

        } catch (SQLException erro) {
            JOptionPane.showMessageDialog(null, "LoginDAO: Pesquisar " + erro);
        }

        return lista;
    }

    public ResultSet alterarLogin(LoginDTO objlogindto) {

        conn = new ConexaoDAO().concectaBD();

        try {
            String sql = "CALL sp_atualizar_login(?,?,?,?)";
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, objlogindto.getIdUsuario());
            pstm.setString(2, objlogindto.getEmail());
            pstm.setString(3, objlogindto.getCpf());
            pstm.setString(4, objlogindto.getSenha());

            pstm.execute();
            pstm.close();

        } catch (SQLException erro) {
            JOptionPane.showMessageDialog(null, "LoginDAO: Alterar " + erro);
        }
        return null;

    }

    public ResultSet alterarLoginSemSenha(LoginDTO objlogindto) {

        conn = new ConexaoDAO().concectaBD();

        try {

            String sql = "CALL sp_atualizar_login_sem_senha(?,?,?)";

            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, objlogindto.getIdUsuario());
            pstm.setString(2, objlogindto.getEmail());
            pstm.setString(3, objlogindto.getCpf());

            pstm.execute();
            pstm.close();

        } catch (SQLException erro) {
            JOptionPane.showMessageDialog(null, "LoginDAO: Alterar " + erro);
        }
        return null;

    }

    public ResultSet excluirLogin(LoginDTO objlogindto) {

        conn = new ConexaoDAO().concectaBD();

        try {
            String sql = "CALL sp_deletar_login(?)";
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, objlogindto.getIdUsuario());

            pstm.execute();
            pstm.close();

        } catch (SQLException erro) {
            JOptionPane.showMessageDialog(null, "LoginDAO: Excluir " + erro);
        }
        return null;

    }

}
