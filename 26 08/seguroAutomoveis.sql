CREATE TABLE [Clientes] (
  [clienteId] int PRIMARY KEY,
  [cpf] char(11),
  [nome] nvarchar(255),
  [telefone] varchar(11),
  [sexo] char(1),
  [endereco] nvarchar(255)
)
GO

CREATE TABLE [Apolice] (
  [apoliceId] int PRIMARY KEY,
  [clienteId] int,
  [placaId] char(7),
  [inicioVigencia] date,
  [fimVigencia] date,
  [valorAssegurado] float,
  [valorFranquia] float
)
GO

CREATE TABLE [Carros] (
  [placaId] char PRIMARY KEY,
  [chassi] int,
  [modelo] nvarchar(255),
  [marca] nvarchar(255),
  [cor] nvarchar(255),
  [ano] int
)
GO

CREATE TABLE [Sinitro] (
  [sinitroId] int PRIMARY KEY,
  [carroId] char,
  [dataSinistro] date,
  [horaSinitro] time,
  [localSinitro] nvarchar(255)
)
GO

ALTER TABLE [Apolice] ADD FOREIGN KEY ([clienteId]) REFERENCES [Clientes] ([clienteId])
GO

ALTER TABLE [Apolice] ADD FOREIGN KEY ([placaId]) REFERENCES [Carros] ([placaId])
GO

ALTER TABLE [Sinitro] ADD FOREIGN KEY ([carroId]) REFERENCES [Carros] ([placaId])
GO
