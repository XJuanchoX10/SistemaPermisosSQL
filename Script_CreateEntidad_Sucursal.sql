--Crear tabla de entidad Sucursal
CREATE TABLE Sucursal (
    SucursalID INT PRIMARY KEY,
    NombreSucursal VARCHAR(100)
);

INSERT INTO Sucursal (SucursalID, NombreSucursal) VALUES 
(1, 'Sucursal Norte'),
(2, 'Sucursal Sur'),
(3, 'Sucursal Centro');