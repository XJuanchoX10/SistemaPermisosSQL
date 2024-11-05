CREATE DATABASE sistema_permisos;
USE sistema_permisos;

-- Tabla de Permisos
CREATE TABLE Permission (
    PermissionID INT PRIMARY KEY,
    PermissionName VARCHAR(50) NOT NULL
);

-- Tabla de Permisos por Usuario
CREATE TABLE PermiUser (
    UserID INT,
    EntityID INT,
    PermissionID INT,
    CONSTRAINT FK_UserPermission FOREIGN KEY (PermissionID) REFERENCES Permission(PermissionID),
    PRIMARY KEY (UserID, EntityID, PermissionID)
);

-- Tabla de Permisos por Rol
CREATE TABLE PermiRole (
    RoleID INT,
    EntityID INT,
    PermissionID INT,
    CONSTRAINT FK_RolePermission FOREIGN KEY (PermissionID) REFERENCES Permission(PermissionID),
    PRIMARY KEY (RoleID, EntityID, PermissionID)
);

-- Permisos por Usuario a nivel de registro individual
CREATE TABLE PermiUserRecord (
    UserID INT,
    RecordID INT,
    PermissionID INT,
    CONSTRAINT FK_UserRecordPermission FOREIGN KEY (PermissionID) REFERENCES Permission(PermissionID),
    PRIMARY KEY (UserID, RecordID, PermissionID)
);

-- Permisos por Rol a nivel de registro individual
CREATE TABLE PermiRoleRecord (
    RoleID INT,
    RecordID INT,
    PermissionID INT,
    CONSTRAINT FK_RoleRecordPermission FOREIGN KEY (PermissionID) REFERENCES Permission(PermissionID),
    PRIMARY KEY (RoleID, RecordID, PermissionID)
);

CREATE TABLE UserRole (
    UserID INT,
    RoleID INT,
    PRIMARY KEY (UserID, RoleID)
);