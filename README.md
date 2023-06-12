# Project: The As and When Foundation web application

## Notas:
Tutorial creating-and-running-your-first-java-ee-application 
Descargar Glassfish 6.2.5 para Jakarta 9.1(Webprofile)
Opcional TomEE 9.x para Jakarta 9.1 (Plume)

## SQLite
En Windows la versión de 32, en Ubuntu con sudo apt-get install
Instalar SQLite Studio, SQLite dependency para IntelliJ
Antes de crear la conexion, no te olvides de incluir Class.forName("org.sqlite.JDBC");

# Recuperación (miniproyecto):
Partimos del proyecto del tema 13 (versión mejorada)
Renombrar la página index a admin
Crear un formulario en la nuevo index: user & password
El campo id se considera usuario
El campo estatura se considera password
Si el login es correcto se recarga la página index y ahora aparece varias cosas
opción de comprar entrada (no hace nada)
logout: se redirecciona al formulario inicial
profile: que muestra el resultado “SELECT * FROM socio WHERE socioID”

## Requisitos mínimos:
Formulario de login (ejemplo de Sesiones)
CRUD de socios (listar, crear, actualizar, borrar socios) 

## Mejora:	
Cambiar base de datos por fichero csv

---------------------------------------------------------------------------------------------------

# Usuarios
- connect(), newStatement() implementarlo como os dé la gana
- verifica(id, pwd) devuelve true si el usuario tiene pwd como contraseña
- toString() hace un “select * from”			
- setName(id, nuevo) devuelve true si el update ha sido satisfactorio
- setPwd(id, nuevo) devuelve true si el update ha sido satisfactorio
- create(name, pwd) utiliza search() para asegurarse de que el usuario no existe ya
- delete(id) devuelve true si el “delete from” ha sido satisfactorio
- search(name) devuelve el id del usuario siendo negativo si no existe 
