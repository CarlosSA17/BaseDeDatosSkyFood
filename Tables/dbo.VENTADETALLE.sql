CREATE TABLE [dbo].[VENTADETALLE]
(
[CODVENDET] [char] (5) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CANTVEND] [int] NOT NULL,
[PRECVEND] [decimal] (8, 2) NOT NULL,
[CODVEN] [char] (5) COLLATE Modern_Spanish_CI_AS NOT NULL,
[IDMEN] [int] NOT NULL,
[CODCOM] [char] (5) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VENTADETALLE] ADD CONSTRAINT [VENTADETALLE_pk] PRIMARY KEY CLUSTERED ([CODVENDET]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VENTADETALLE] ADD CONSTRAINT [VENTADETALLE_COMIDA] FOREIGN KEY ([CODCOM]) REFERENCES [dbo].[COMIDA] ([CODCOM])
GO
ALTER TABLE [dbo].[VENTADETALLE] ADD CONSTRAINT [VENTADETALLE_MENU] FOREIGN KEY ([IDMEN]) REFERENCES [dbo].[MENU] ([IDMEN])
GO
ALTER TABLE [dbo].[VENTADETALLE] ADD CONSTRAINT [VENTADETALLE_VENTA] FOREIGN KEY ([CODVEN]) REFERENCES [dbo].[VENTA] ([CODVEN])
GO