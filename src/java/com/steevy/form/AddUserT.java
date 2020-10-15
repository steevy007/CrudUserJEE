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
public class AddUserT {
    public String traitAdd(HttpServletRequest request){
        String reponse="";
        String nom=request.getParameter("nom");
        String prenom=request.getParameter("prenom");
        String adresse=request.getParameter("adresse");
        String s_age=request.getParameter("age");
        if(nom.isEmpty() || prenom.isEmpty() || adresse.isEmpty() || s_age.isEmpty()){
            reponse="Veuillez remplir correctement tout les champs";
        }else{
            int age=Integer.parseInt(s_age);
            if(age<0){
                reponse="Age incorrect";
            }else{
                Personne pers=new Personne(nom,prenom,age,adresse);
                PersonneJpaController p_dao=new PersonneJpaController(Manager.getManagerFactory());
                p_dao.create(pers);
                reponse="ok";
            }
        }
        return reponse;
    }
}
