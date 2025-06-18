package com.example.userapp.Filtre;

import com.sun.net.httpserver.HttpExchange;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;
@WebFilter("/*")
public class FiltrerChemin implements Filter {
    @Override
    public void init(FilterConfig filterConfig){

    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        System.out.println("requête" + req.getRequestURI());
        chain.doFilter(request,response);
    }


    @Override
    public void destroy(){

    }


}
