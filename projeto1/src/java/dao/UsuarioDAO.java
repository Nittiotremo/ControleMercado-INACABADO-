package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Usuario;
import utils.Conexao;

public class UsuarioDAO {
    
    private Connection conexao;
    
    public UsuarioDAO() throws SQLException, ClassNotFoundException {
        this.conexao = Conexao.abrirConexao();
    }
    
    public Usuario logarUsuario(String cpfUsuario, String senhaUsuario, String perfilUsuario) throws SQLException {
        String sql = "select * from usuario where cpfusuario = ? and senhausuario = ? and perfilusuario = ? and statususuario = true";
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Usuario usuario = null;
        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setString(1, cpfUsuario);
            stmt.setString(2, senhaUsuario);
            stmt.setString(3, perfilUsuario);
            rs = stmt.executeQuery();
            while(rs.next()) {
                usuario = new Usuario(
                        rs.getInt("codigousuario"),
                        rs.getString("nomeusuario"),
                        rs.getString("cpfusuario"),
                        rs.getString("senhausuario"),
                        rs.getString("perfilusuario"),
                        rs.getBoolean("statususuario")
                );
            }
        } catch (SQLException ex) {
            throw new SQLException("Erro ao buscar usuário");
        } finally {
            Conexao.encerrarConexao(conexao, stmt, rs);
        }
        return usuario;
    }
}
