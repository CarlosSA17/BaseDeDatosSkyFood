CREATE TABLE [dbo].[COMIDA]
(
[CODCOM] [char] (5) COLLATE Modern_Spanish_CI_AS NOT NULL,
[DESCOM] [varchar] (40) COLLATE Modern_Spanish_CI_AS NOT NULL,
[NOMCOM] [varchar] (20) COLLATE Modern_Spanish_CI_AS NOT NULL,
[PRECOM] [decimal] (8, 2) NOT NULL,
[IDMEN] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[COMIDA] ADD CONSTRAINT [COMIDA_pk] PRIMARY KEY CLUSTERED ([CODCOM]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[COMIDA] ADD CONSTRAINT [COMIDA_MENU] FOREIGN KEY ([IDMEN]) REFERENCES [dbo].[MENU] ([IDMEN])
GO
