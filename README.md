# SistemaPermisosSQL
Sistema de permisos en SQL Server

Orden de ejecucion de Scripts
1. Compilar el archivo: Script_CreateDB.sql
    - Compilar primero el comando: CREATE DATABASE sistema_permisos;
    - Seguido compilar el comando: USE sistema_permisos;
    - Compilar todos los create table del script

2. Compilar el archivo: Script_CreateSP.sql
3. Script_InsertPermisos_Asignar.sql
    - Compilar los insert en el orden que vienen en el archivo

4. Compilar archivo: Script_CreateEntidad_Sucursal.sql
    - Compilar create table
    - Seguido compilar los insert a esa tabla

5. Compilar archivo: Script_CreateEntidad_CentroCostos.sql
    - Compilar create table
    - Seguido compilar los insert a esa tabla

6. Compilar archivo: Script_Prueba.sql
    - Compilar insert en el orden que viene el archivo
    - Ejecutar el Store procedure como se encuentra en el archivo
