CREATE TABLE [dbo].[COMPRADETALLE]
(
[CODCOMDET] [char] (5) COLLATE Modern_Spanish_CI_AS NOT NULL,
[NOMALI] [varchar] (20) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CANALI] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL,
[RUCPRO] [char] (11) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CODCOM] [char] (5) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[COMPRADETALLE] ADD CONSTRAINT [COMPRADETALLE_pk] PRIMARY KEY CLUSTERED ([CODCOMDET]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[COMPRADETALLE] ADD CONSTRAINT [COMPRADETALLE_COMPRA] FOREIGN KEY ([CODCOM]) REFERENCES [dbo].[COMPRA] ([CODCOM])
GO
ALTER TABLE [dbo].[COMPRADETALLE] ADD CONSTRAINT [COMPRADETALLE_PROVEEDOR] FOREIGN KEY ([RUCPRO]) REFERENCES [dbo].[PROVEEDOR] ([RUCPRO])
GO
