-- Insertar Permisos
INSERT INTO Permission (PermissionID, PermissionName) VALUES (1, 'Leer'), (2, 'Escribir'), (3, 'Eliminar');

-- Asignar permisos a usuarios y roles
INSERT INTO PermiUser (UserID, EntityID, PermissionID) VALUES (1, 100, 1);
INSERT INTO PermiRole (RoleID, EntityID, PermissionID) VALUES (2, 100, 2);
INSERT INTO PermiUserRecord (UserID, RecordID, PermissionID) VALUES (1, 200, 3);
INSERT INTO PermiRoleRecord (RoleID, RecordID, PermissionID) VALUES (2, 200, 1);