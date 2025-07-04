package com.example.userapp.models;

import java.util.List;

public class User {
    private String nom;
    private String email;

    public User(String nom, String email){
            this.nom = nom;
            this.email = email;
    }

    public String getNom(){
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "User{" +
                "nom='" + nom + '\'' +
                ",email='" + email + '\'' +
                '}';
    }

    }


