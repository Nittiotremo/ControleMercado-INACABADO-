package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Usuario;

@WebFilter(filterName = "RequestFilter", urlPatterns = {"/home.jsp",
    "/gravarConsulta.jsp", "/gravarMedico.jsp", "/gravarPaciente.jsp", "/gravarProfissao.jsp",
    "/listarConsulta.jsp", "/listarMedico.jsp", "/listarPaciente.jsp", "/listarProfissao.jsp"},
        servletNames = {"NovoPaciente", "NovoMedico", "NovaProfissao", "NovaConsulta", "ListarProfissao",
            "ListarPaciente", "ListarMedico", "ListarConsulta", "GravarProfissao", "GravarPaciente",
            "GravarMedico", "GravarConsulta", "ExcluirProfissao", "ExcluirPaciente", "ExcluirMedico",
            "ExcluirConsulta", "ConsultarProfissao", "ConsultarPaciente", "ConsultarMedico",
            "ConsultarConsulta"})
public class RequestFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;

        HttpSession sessao = req.getSession(false);
        Usuario usuario = (Usuario) sessao.getAttribute("usuario");

        if (usuario != null) {
            chain.doFilter(request, response);
        } else {
            resp.sendRedirect(req.getContextPath());
        }
    }
}
