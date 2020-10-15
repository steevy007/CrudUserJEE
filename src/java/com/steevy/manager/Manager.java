/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.steevy.manager;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Sanon
 */
public class Manager {
    private static EntityManagerFactory emf=null;
    private static EntityManager em=null;
    
    public static EntityManagerFactory getManagerFactory(){
        try{
            if(emf==null && em==null){
                emf=Persistence.createEntityManagerFactory("CrudJavaEEJPAPU");
                em=emf.createEntityManager();
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return emf;
    }
}
