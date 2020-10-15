/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.steevy.form;

import com.steevy.dao.PersonneJpaController;
import com.steevy.manager.Manager;
import com.steevy.model.Personne;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Sanon
 */
public class FormMod {

    public String traitMod(HttpServletRequest request) throws Exception {
        String reponse = "";
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String adresse = request.getParameter("adresse");
        String s_age = request.getParameter("age");
        String s_id = request.getParameter("id");
        if (nom.isEmpty() || prenom.isEmpty() || adresse.isEmpty() || s_age.isEmpty()) {
            int age = Integer.parseInt(s_age);
            reponse = "Veuillez remplir correctement tout les champs";
        } else {
            int age = Integer.parseInt(s_age);
            if (age < 0) {
                reponse = "Age incorrect";
            } else {
                int id=Integer.parseInt(s_id);
                Personne pers = new Personne(id,nom, prenom, age,null,adresse);
                PersonneJpaController p_dao = new PersonneJpaController(Manager.getManagerFactory());
                p_dao.edit(pers);
                reponse = "ok";
            }
        }
        return reponse;
    }
}
