CREATE PROCEDURE GetUserPermissions
    @EntityID INT,
    @UserID INT
AS
BEGIN
    -- Obtener permisos a nivel de entidad para el usuario
    SELECT 'Entidad' AS Scope, P.PermissionName
    FROM PermiUser PU
    JOIN Permission P ON PU.PermissionID = P.PermissionID
    WHERE PU.EntityID = @EntityID AND PU.UserID = @UserID

    UNION

    -- Obtener permisos a nivel de entidad asignados por rol
    SELECT 'Entidad' AS Scope, P.PermissionName
    FROM PermiRole PR
    JOIN UserRole UR ON PR.RoleID = UR.RoleID
    JOIN Permission P ON PR.PermissionID = P.PermissionID
    WHERE PR.EntityID = @EntityID AND UR.UserID = @UserID

    UNION

    -- Obtener permisos a nivel de registros individuales asignados al usuario
    SELECT 'Registro' AS Scope, P.PermissionName
    FROM PermiUserRecord PUR
    JOIN Permission P ON PUR.PermissionID = P.PermissionID
    WHERE PUR.UserID = @UserID

    UNION

    -- Obtener permisos a nivel de registros individuales asignados por rol
    SELECT 'Registro' AS Scope, P.PermissionName
    FROM PermiRoleRecord PRR
    JOIN UserRole UR ON PRR.RoleID = UR.RoleID
    JOIN Permission P ON PRR.PermissionID = P.PermissionID
    WHERE UR.UserID = @UserID;
END;