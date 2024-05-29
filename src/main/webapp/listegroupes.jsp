<%@ include file="header.jsp" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@ page import="pack.*" %>
            <%@ page import="java.util.*" %>

                <!DOCTYPE html>
                <html>

                <head>
                    <meta charset="UTF-8">
                    <title>Insert title here</title>
                    <link rel="stylesheet" type="text/css" href="style.css">
                </head>

                <body>

                    Liste des groupes : <br>
                    <br>
                    <% Collection<Groupe> gs = (Collection<Groupe>) request.getAttribute("listegroupes");
                            for(Groupe g : gs) {
                            if ( g.getIsNotEventGroup()){


                            String s = g.getNom();

                            %>
                            <%= s %> <br>
                                <blockquote>
                                    <p>
                                        <% for (Utilisateur u : g.getUtilisateurs()){ String userName=u.getPrenom()
                                            + " " + u.getNom(); %>
                                            <%= userName %> <br>
                                                <% } %>
                                    </p>
                                </blockquote>
                                <% } } %>
                                    <a href="index.jsp" id="retourAcceuil" /> Retour</a><br>
                </body>

                </html>