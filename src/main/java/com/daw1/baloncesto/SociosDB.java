package com.daw1.baloncesto;

import java.sql.*;

public class SociosDB {
    private String dbTable;
    private Statement smt;
    private Connection conn;

    public SociosDB(String fichero, String dbTable) {
        this.dbTable = dbTable;
        this.conn = connect(fichero);
        this.smt = newStatement(this.conn);
    }

    public Statement newStatement(Connection connect) {
        try {
            return connect.createStatement();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Connection connect(String fichero) {
        String url = "jdbc:sqlite:/home/zhuyana/IdeaProjects/baloncesto/" + fichero;
        try {
            Class.forName("org.sqlite.JDBC");
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        try {
            return DriverManager.getConnection(url);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public int search(String name) {
        int retVal = -1;
        String query = "SELECT * FROM " + this.dbTable + " WHERE nombre=\'" + name + "\' OR socioID=\'" + name + "\'";
        try {
            ResultSet listado = smt.executeQuery(query);
            while (listado.next()) {
                retVal = listado.getInt("socioID");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return retVal;
    }

    public boolean verifica(int id, String pwd) {
        boolean retVal = false;
        String query = "SELECT COUNT(*) FROM " + this.dbTable
                + " WHERE (socioID=" + id + ") AND (estatura=" + pwd + ")";
        try {
            ResultSet contador = smt.executeQuery(query);
            if(contador.next() && contador.getInt(1) > 0) {
                retVal = true;
            };
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return retVal;
    }

    public boolean create(int id, String name, int height, int age, String location) {
        boolean retVal = false;
        if (search(name) < 0 && exist(id) == false) {
            Socio aux = new Socio(id, name, height, age, location);
            String cmd = aux.insertInto(this.dbTable);
            retVal = command_helper(cmd);
        }
        return retVal;
    }

    private boolean command_helper(String comando) {
        boolean retVal = false;
        try {
            if (this.smt.executeUpdate(comando) > 0)
                retVal = true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return retVal;
    }

    public boolean exist(int nuevoID) {
        boolean retVal = false;
        String query = "SELECT * FROM "+ this.dbTable + " WHERE socioID=" + nuevoID;
        try {
            ResultSet listado = this.smt.executeQuery(query);
            retVal = listado.next();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return retVal;
    }

    public boolean setAll(int id, String name, int height, int age, String location) {
        boolean retVal = false;
        Socio aux = new Socio(id, name, height, age, location);
        aux.setId(id); aux.setName(name); aux.setHeight(height); aux.setAge(age); aux.setLocation(location);
        String cmd = aux.updateAll(this.dbTable);
        try {
            int filasActulizadas = smt.executeUpdate(cmd);
            if (filasActulizadas > 0) {
                retVal = true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return retVal;
    }

    public boolean setTicket(int id, int nTickets) {
        boolean retVal = false;
        Socio aux = new Socio(id, "x", 0, 0, "x", nTickets);
        aux.setNumTickets(nTickets);
        String cmd = "UPDATE " + this.dbTable + " SET numEntradas=" + nTickets + " WHERE socioID=" + id;
        try {
            int filasActulizadas = smt.executeUpdate(cmd);
            if (filasActulizadas > 0) {
                retVal = true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return retVal;
    }

    public Socio read(int id) {
        Socio aux = null;
        String query = "SELECT * FROM " + this.dbTable + " WHERE socioID=\'" + id + "\'";
        try {
            ResultSet listado = this.smt.executeQuery(query);
            if(listado.next()) {
                // id = listado.getInt("socioID");
                String name = listado.getString("nombre");
                int height = listado.getInt("estatura");
                int age = listado.getInt("edad");
                String location = listado.getString("localidad");
                aux = new Socio(id, name, height, age, location);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return aux;
    }

    public boolean delete(int id) {
        boolean retVal = false;
        Socio aux = new Socio (id, "x", 0, 0, "x");
        String cmd = aux.deleteFrom(this.dbTable);
        try {
            int filasEliminadas = smt.executeUpdate(cmd);
            if (filasEliminadas > 0) {
                retVal = true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return retVal;
    }

    public void close() {
        try {
            this.conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
