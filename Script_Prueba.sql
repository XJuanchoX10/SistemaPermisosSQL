--*****Asignar Permisos a Nivel de Entidad*****--

-- Asignar permiso de lectura a un usuario sobre la entidad completa (Sucursal 1)
INSERT INTO PermiUser (UserID, EntityID, PermissionID) VALUES 
(1, 1, 1);  -- Usuario 1 tiene permiso de "Leer" en Sucursal 1

-- Asignar permiso de escritura a un rol sobre toda una entidad (Sucursal 2)
INSERT INTO PermiRole (RoleID, EntityID, PermissionID) VALUES 
(2, 2, 2);  -- Rol 2 tiene permiso de "Escribir" en Sucursal 2


--*****Asignar Permisos a Nivel de Registro Individual*****--

-- Asignar permiso de eliminación a un usuario sobre un registro específico (SucursalID 3)
INSERT INTO PermiUserRecord (UserID, RecordID, PermissionID) VALUES 
(1, 3, 3);  -- Usuario 1 tiene permiso de "Eliminar" en el registro de la Sucursal 3

-- Asignar permiso de lectura a un rol sobre un registro específico (Centro de Costos 1)
INSERT INTO PermiRoleRecord (RoleID, RecordID, PermissionID) VALUES 
(2, 1, 1);  -- Rol 2 tiene permiso de "Leer" en el Centro de Costos 1


--Ejecutar Store Procedure
-- Obtener los permisos del Usuario 1 sobre la Sucursal 1
EXEC GetUserPermissions @EntityID = 1, @UserID = 1;