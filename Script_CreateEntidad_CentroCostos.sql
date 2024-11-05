--Crear tabla de entidad Centro de costos
CREATE TABLE CentroCostos (
    CentroCostosID INT PRIMARY KEY,
    NombreCentroCostos VARCHAR(100)
);

INSERT INTO CentroCostos (CentroCostosID, NombreCentroCostos) VALUES 
(1, 'Centro de Costos Ventas'),
(2, 'Centro de Costos Producción'),
(3, 'Centro de Costos Investigación');
