package com.daw1.baloncesto;

public class Socio {
    private int id;
    private String name;
    private int height;
    private int age;
    private String location;
    private int numTickets;

    public Socio(int id, String nombre, int estatura, int edad, String localidad) {
        this.id = id;
        this.name = nombre;
        this.height = estatura;
        this.age = edad;
        this.location = localidad;
    }

    public Socio(int id, String nombre, int estatura, int edad, String localidad, int numTickets) {
        this.id = id;
        this.name = nombre;
        this.height = estatura;
        this.age = edad;
        this.location = localidad;
        this.numTickets = numTickets;
    }

    public int getId() { // id
        return this.id;
    } // id
    public void setId(int id) {
        this.id = id;
    }

    public String getName() { // nombre
        return this.name;
    } // nombre
    public void setName(String nombre) {
        this.name = nombre;
    }

    public int getHeight() { // estatura
        return this.height;
    } // estatura
    public void setHeight(int estatura) {
        this.height = estatura;
    }

    public int getAge() { // edad
        return this.age;
    } // edad
    public void setAge(int edad) {
        this.age = edad;
    }

    public String getLocation() { // localidad
        return this.location;
    } // localidad
    public void setLocation(String localidad) {
        this.location = localidad;
    }

    public int getNumTickets() {
        return this.numTickets;
    } // numEntradas
    public void setNumTickets(int number) {
        this.numTickets = number;
    }


    // METODOS PARA OPERACION EN EL BASE DE DATOS

    public String createTable(String dbTable) {
        String query = "CREATE TABLE " + dbTable + " (";
        query += "socioID INTEGER PRIMARY KEY AUTOINCREMENT, ";
        query += "nombre TEXT, ";
        query += "estatura INTEGER, ";
        query += "edad INTEGER, ";
        query += "localidad TEXT ); ";
        return query;
    }

    public String insertInto(String dbTable){
        String query = "INSERT INTO " + dbTable + " (socioID, nombre, estatura, edad, localidad) VALUES (";
        query += this.id + ", \'" + this.name + "\', " + this.height + ", " + this.age + ", \'" + this.location  + "\')";
        return query;
    }

    public String deleteFrom(String dbTable) {
        return "DELETE FROM " + dbTable + " WHERE socioID=" + this.id;
    }

    public String updateName(String dbTable) {
        return "UPDATE " + dbTable + " SET name=\'" + this.name + "\' WHERE socioID=" + this.id;
    }

    public String updatePassword(String dbTable) {
        return "UPDATE " + dbTable + " SET estatura=" + this.height + " WHERE socioID=" + this.id;
    }

    public String updateAll(String dbTable) {
        return "UPDATE " + dbTable + " SET socioID=" + this.id + ", nombre=\'" + this.name
                + "\', estatura=" + this.height + ", edad=" + this.age
                + ", localidad=\'" + this.location + "\' WHERE socioID=" + this.id + " OR nombre=\'" + this.name + "\'";
    }

    public String selectFrom(String dbTable) {
        return "SELECT FROM " + dbTable + " WHERE socioID=" + this.id;
    }

}

