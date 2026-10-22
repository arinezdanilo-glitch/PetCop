-- Esquema base (referencia). Ajustar al modelo real del equipo.
CREATE TABLE Rol (Id INT PRIMARY KEY, Nombre VARCHAR(30) UNIQUE NOT NULL);       -- Administrador, Recepcionista, Veterinario
CREATE TABLE Usuario (Id INT PRIMARY KEY, Username VARCHAR(50) UNIQUE NOT NULL, PasswordHash VARCHAR(255) NOT NULL, RolId INT REFERENCES Rol(Id), Activo BIT DEFAULT 1);
CREATE TABLE Producto (Id INT PRIMARY KEY, Codigo VARCHAR(50) UNIQUE, Nombre VARCHAR(120), Precio DECIMAL(10,2), StockActual INT, StockMinimo INT, Activo BIT DEFAULT 1);
CREATE TABLE LoteProducto (Id INT PRIMARY KEY, ProductoId INT REFERENCES Producto(Id), Lote VARCHAR(40), FechaVencimiento DATE, Cantidad INT);
CREATE TABLE Kardex (Id INT PRIMARY KEY, ProductoId INT REFERENCES Producto(Id), Tipo VARCHAR(30), Cantidad INT, UsuarioId INT REFERENCES Usuario(Id), Fecha DATETIME DEFAULT GETDATE());
CREATE TABLE Auditoria (Id INT PRIMARY KEY, UsuarioId INT, Accion VARCHAR(100), Detalle VARCHAR(500), Fecha DATETIME DEFAULT GETDATE());
