
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/13/2026 09:28:46
-- Generated from EDMX file: C:\Users\opilane\source\repos\lasteaedAnton\lasteaedAnton\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [lasteaiadAnton];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_menuutoidu_jagamine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[toidu_jagamineSet] DROP CONSTRAINT [FK_menuutoidu_jagamine];
GO
IF OBJECT_ID(N'[dbo].[FK_ruhmtootamine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tootamineSet] DROP CONSTRAINT [FK_ruhmtootamine];
GO
IF OBJECT_ID(N'[dbo].[FK_amrtikohttootamine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tootamineSet] DROP CONSTRAINT [FK_amrtikohttootamine];
GO
IF OBJECT_ID(N'[dbo].[FK_tootajatootamine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tootamineSet] DROP CONSTRAINT [FK_tootajatootamine];
GO
IF OBJECT_ID(N'[dbo].[FK_lapsjarjekorda]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[jarjekordaSet] DROP CONSTRAINT [FK_lapsjarjekorda];
GO
IF OBJECT_ID(N'[dbo].[FK_ruhmjarjekorda]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[jarjekordaSet] DROP CONSTRAINT [FK_ruhmjarjekorda];
GO
IF OBJECT_ID(N'[dbo].[FK_lapslaps_ruhm]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[laps_ruhmSet] DROP CONSTRAINT [FK_lapslaps_ruhm];
GO
IF OBJECT_ID(N'[dbo].[FK_ruhmlaps_ruhm]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[laps_ruhmSet] DROP CONSTRAINT [FK_ruhmlaps_ruhm];
GO
IF OBJECT_ID(N'[dbo].[FK_lapspuudumine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[puudumineSet] DROP CONSTRAINT [FK_lapspuudumine];
GO
IF OBJECT_ID(N'[dbo].[FK_roogmenuu]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[menuuSet] DROP CONSTRAINT [FK_roogmenuu];
GO
IF OBJECT_ID(N'[dbo].[FK_ruhmtoidu_jagamine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[toidu_jagamineSet] DROP CONSTRAINT [FK_ruhmtoidu_jagamine];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Lasteaiad]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Lasteaiad];
GO
IF OBJECT_ID(N'[dbo].[Ruhmatuubid]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Ruhmatuubid];
GO
IF OBJECT_ID(N'[dbo].[Ametikohad]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Ametikohad];
GO
IF OBJECT_ID(N'[dbo].[Ruhmad]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Ruhmad];
GO
IF OBJECT_ID(N'[dbo].[Soimeruhmad]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Soimeruhmad];
GO
IF OBJECT_ID(N'[dbo].[Lapsed]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Lapsed];
GO
IF OBJECT_ID(N'[dbo].[Lapse_Puudumised]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Lapse_Puudumised];
GO
IF OBJECT_ID(N'[dbo].[Lasteaia_Jarjekord]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Lasteaia_Jarjekord];
GO
IF OBJECT_ID(N'[dbo].[Ruhma_Koosseis]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Ruhma_Koosseis];
GO
IF OBJECT_ID(N'[dbo].[Kasvatajad]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Kasvatajad];
GO
IF OBJECT_ID(N'[dbo].[Kasvataja_Too_Ajalugu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Kasvataja_Too_Ajalugu];
GO
IF OBJECT_ID(N'[dbo].[Lapse_Ruhma_Ajalugu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Lapse_Ruhma_Ajalugu];
GO
IF OBJECT_ID(N'[dbo].[Kook]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Kook];
GO
IF OBJECT_ID(N'[dbo].[Koogi_Menuu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Koogi_Menuu];
GO
IF OBJECT_ID(N'[dbo].[Toit]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Toit];
GO
IF OBJECT_ID(N'[dbo].[Toidu_Valjaandmine]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Toidu_Valjaandmine];
GO
IF OBJECT_ID(N'[dbo].[ruhmSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ruhmSet];
GO
IF OBJECT_ID(N'[dbo].[amrtikohtSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[amrtikohtSet];
GO
IF OBJECT_ID(N'[dbo].[tootajaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tootajaSet];
GO
IF OBJECT_ID(N'[dbo].[tootamineSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tootamineSet];
GO
IF OBJECT_ID(N'[dbo].[lapsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[lapsSet];
GO
IF OBJECT_ID(N'[dbo].[jarjekordaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[jarjekordaSet];
GO
IF OBJECT_ID(N'[dbo].[laps_ruhmSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[laps_ruhmSet];
GO
IF OBJECT_ID(N'[dbo].[puudumineSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[puudumineSet];
GO
IF OBJECT_ID(N'[dbo].[roogSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[roogSet];
GO
IF OBJECT_ID(N'[dbo].[menuuSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[menuuSet];
GO
IF OBJECT_ID(N'[dbo].[toidu_jagamineSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[toidu_jagamineSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Lasteaiad'
CREATE TABLE [dbo].[Lasteaiad] (
    [id] int IDENTITY(1,1) NOT NULL,
    [Nimi] nvarchar(200)  NOT NULL,
    [Aadress] nvarchar(300)  NULL
);
GO

-- Creating table 'Ruhmatuubid'
CREATE TABLE [dbo].[Ruhmatuubid] (
    [tyma_id] int IDENTITY(1,1) NOT NULL,
    [Nimi] nvarchar(100)  NOT NULL,
    [Preschool] nvarchar(100)  NULL
);
GO

-- Creating table 'Ametikohad'
CREATE TABLE [dbo].[Ametikohad] (
    [job_id] int IDENTITY(1,1) NOT NULL,
    [Nimi] nvarchar(100)  NOT NULL,
    [Is_Kook] bit  NULL
);
GO

-- Creating table 'Ruhmad'
CREATE TABLE [dbo].[Ruhmad] (
    [group_id] int IDENTITY(1,1) NOT NULL,
    [Ruhmatuubi_FK] int  NULL,
    [Nimi] nvarchar(100)  NOT NULL,
    [Aadress] nvarchar(200)  NULL
);
GO

-- Creating table 'Soimeruhmad'
CREATE TABLE [dbo].[Soimeruhmad] (
    [group_id] int IDENTITY(1,1) NOT NULL,
    [Soime_id] nvarchar(100)  NULL,
    [Nimi] nvarchar(100)  NULL
);
GO

-- Creating table 'Lapsed'
CREATE TABLE [dbo].[Lapsed] (
    [child_id] int IDENTITY(1,1) NOT NULL,
    [Eesnimi] nvarchar(100)  NOT NULL,
    [Perenimi] nvarchar(100)  NOT NULL,
    [Synnipaev] datetime  NULL
);
GO

-- Creating table 'Lapse_Puudumised'
CREATE TABLE [dbo].[Lapse_Puudumised] (
    [absence_id] int IDENTITY(1,1) NOT NULL,
    [Lapse_FK] int  NOT NULL,
    [Kuupaev] datetime  NOT NULL,
    [Pohjus] nvarchar(250)  NULL
);
GO

-- Creating table 'Lasteaia_Jarjekord'
CREATE TABLE [dbo].[Lasteaia_Jarjekord] (
    [queue_id] int IDENTITY(1,1) NOT NULL,
    [Lapse_FK] int  NOT NULL,
    [Ruhma_Vihje_FK] int  NULL,
    [Taotluse_kuupaev] datetime  NULL
);
GO

-- Creating table 'Ruhma_Koosseis'
CREATE TABLE [dbo].[Ruhma_Koosseis] (
    [group_staff_id] int IDENTITY(1,1) NOT NULL,
    [Ruhma_FK] int  NOT NULL,
    [Kasvataja_FK] int  NULL,
    [Ametikoha_FK] int  NULL
);
GO

-- Creating table 'Kasvatajad'
CREATE TABLE [dbo].[Kasvatajad] (
    [educator_id] int IDENTITY(1,1) NOT NULL,
    [Eesnimi] nvarchar(100)  NOT NULL,
    [Perenimi] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'Kasvataja_Too_Ajalugu'
CREATE TABLE [dbo].[Kasvataja_Too_Ajalugu] (
    [history_id] int IDENTITY(1,1) NOT NULL,
    [Kasvataja_FK] int  NOT NULL,
    [Ruhma_FK] int  NULL,
    [Ametikoha_FK] int  NULL
);
GO

-- Creating table 'Lapse_Ruhma_Ajalugu'
CREATE TABLE [dbo].[Lapse_Ruhma_Ajalugu] (
    [child_group_id] int IDENTITY(1,1) NOT NULL,
    [Lapse_FK] int  NOT NULL,
    [Ruhma_FK] int  NOT NULL,
    [Start_Date] datetime  NOT NULL,
    [End_Date] datetime  NULL
);
GO

-- Creating table 'Kook'
CREATE TABLE [dbo].[Kook] (
    [kitchen_id] int IDENTITY(1,1) NOT NULL,
    [Nimi] nvarchar(150)  NOT NULL
);
GO

-- Creating table 'Koogi_Menuu'
CREATE TABLE [dbo].[Koogi_Menuu] (
    [menu_id] int IDENTITY(1,1) NOT NULL,
    [Koogi_FK] int  NOT NULL,
    [Kuupaev] datetime  NOT NULL
);
GO

-- Creating table 'Toit'
CREATE TABLE [dbo].[Toit] (
    [dish_id] int IDENTITY(1,1) NOT NULL,
    [Nimi] nvarchar(200)  NOT NULL
);
GO

-- Creating table 'Toidu_Valjaandmine'
CREATE TABLE [dbo].[Toidu_Valjaandmine] (
    [food_serving_id] int IDENTITY(1,1) NOT NULL,
    [Toidu_FK] int  NOT NULL,
    [Ruhma_FK] int  NULL,
    [Portsjonid] int  NULL,
    [Kuupaev] datetime  NOT NULL
);
GO

-- Creating table 'ruhmSet'
CREATE TABLE [dbo].[ruhmSet] (
    [ruhmID] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [tuup] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'amrtikohtSet'
CREATE TABLE [dbo].[amrtikohtSet] (
    [ametID] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tootajaSet'
CREATE TABLE [dbo].[tootajaSet] (
    [tootajaID] int IDENTITY(1,1) NOT NULL,
    [eesnimi] nvarchar(max)  NOT NULL,
    [perenimi] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tootamineSet'
CREATE TABLE [dbo].[tootamineSet] (
    [tootamineID] int IDENTITY(1,1) NOT NULL,
    [algus] nvarchar(max)  NOT NULL,
    [lopp] nvarchar(max)  NOT NULL,
    [ruhm_ruhmID] int  NOT NULL,
    [amrtikoht_ametID] int  NOT NULL,
    [tootaja_tootajaID] int  NOT NULL
);
GO

-- Creating table 'lapsSet'
CREATE TABLE [dbo].[lapsSet] (
    [lapsID] int IDENTITY(1,1) NOT NULL,
    [eesnimi] nvarchar(max)  NOT NULL,
    [perenimi] nvarchar(max)  NOT NULL,
    [sunniag] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'jarjekordaSet'
CREATE TABLE [dbo].[jarjekordaSet] (
    [jarjekordaID] int IDENTITY(1,1) NOT NULL,
    [kuupaev] nvarchar(max)  NOT NULL,
    [laps_lapsID] int  NOT NULL,
    [ruhm_ruhmID] int  NOT NULL
);
GO

-- Creating table 'laps_ruhmSet'
CREATE TABLE [dbo].[laps_ruhmSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [algus] nvarchar(max)  NOT NULL,
    [lopp] nvarchar(max)  NOT NULL,
    [laps_lapsID] int  NOT NULL,
    [ruhm_ruhmID] int  NOT NULL
);
GO

-- Creating table 'puudumineSet'
CREATE TABLE [dbo].[puudumineSet] (
    [puudumineID] int IDENTITY(1,1) NOT NULL,
    [algus] nvarchar(max)  NOT NULL,
    [lopp] nvarchar(max)  NOT NULL,
    [pohjus] nvarchar(max)  NOT NULL,
    [laps_lapsID] int  NOT NULL
);
GO

-- Creating table 'roogSet'
CREATE TABLE [dbo].[roogSet] (
    [roogID] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'menuuSet'
CREATE TABLE [dbo].[menuuSet] (
    [menuuID] int IDENTITY(1,1) NOT NULL,
    [kuupaev] nvarchar(max)  NOT NULL,
    [toidukord] nvarchar(max)  NOT NULL,
    [roog_roogID] int  NOT NULL
);
GO

-- Creating table 'toidu_jagamineSet'
CREATE TABLE [dbo].[toidu_jagamineSet] (
    [jagamineID] int IDENTITY(1,1) NOT NULL,
    [portseoinid] nvarchar(max)  NOT NULL,
    [menuu_menuuID] int  NOT NULL,
    [ruhm_ruhmID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id] in table 'Lasteaiad'
ALTER TABLE [dbo].[Lasteaiad]
ADD CONSTRAINT [PK_Lasteaiad]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [tyma_id] in table 'Ruhmatuubid'
ALTER TABLE [dbo].[Ruhmatuubid]
ADD CONSTRAINT [PK_Ruhmatuubid]
    PRIMARY KEY CLUSTERED ([tyma_id] ASC);
GO

-- Creating primary key on [job_id] in table 'Ametikohad'
ALTER TABLE [dbo].[Ametikohad]
ADD CONSTRAINT [PK_Ametikohad]
    PRIMARY KEY CLUSTERED ([job_id] ASC);
GO

-- Creating primary key on [group_id] in table 'Ruhmad'
ALTER TABLE [dbo].[Ruhmad]
ADD CONSTRAINT [PK_Ruhmad]
    PRIMARY KEY CLUSTERED ([group_id] ASC);
GO

-- Creating primary key on [group_id] in table 'Soimeruhmad'
ALTER TABLE [dbo].[Soimeruhmad]
ADD CONSTRAINT [PK_Soimeruhmad]
    PRIMARY KEY CLUSTERED ([group_id] ASC);
GO

-- Creating primary key on [child_id] in table 'Lapsed'
ALTER TABLE [dbo].[Lapsed]
ADD CONSTRAINT [PK_Lapsed]
    PRIMARY KEY CLUSTERED ([child_id] ASC);
GO

-- Creating primary key on [absence_id] in table 'Lapse_Puudumised'
ALTER TABLE [dbo].[Lapse_Puudumised]
ADD CONSTRAINT [PK_Lapse_Puudumised]
    PRIMARY KEY CLUSTERED ([absence_id] ASC);
GO

-- Creating primary key on [queue_id] in table 'Lasteaia_Jarjekord'
ALTER TABLE [dbo].[Lasteaia_Jarjekord]
ADD CONSTRAINT [PK_Lasteaia_Jarjekord]
    PRIMARY KEY CLUSTERED ([queue_id] ASC);
GO

-- Creating primary key on [group_staff_id] in table 'Ruhma_Koosseis'
ALTER TABLE [dbo].[Ruhma_Koosseis]
ADD CONSTRAINT [PK_Ruhma_Koosseis]
    PRIMARY KEY CLUSTERED ([group_staff_id] ASC);
GO

-- Creating primary key on [educator_id] in table 'Kasvatajad'
ALTER TABLE [dbo].[Kasvatajad]
ADD CONSTRAINT [PK_Kasvatajad]
    PRIMARY KEY CLUSTERED ([educator_id] ASC);
GO

-- Creating primary key on [history_id] in table 'Kasvataja_Too_Ajalugu'
ALTER TABLE [dbo].[Kasvataja_Too_Ajalugu]
ADD CONSTRAINT [PK_Kasvataja_Too_Ajalugu]
    PRIMARY KEY CLUSTERED ([history_id] ASC);
GO

-- Creating primary key on [child_group_id] in table 'Lapse_Ruhma_Ajalugu'
ALTER TABLE [dbo].[Lapse_Ruhma_Ajalugu]
ADD CONSTRAINT [PK_Lapse_Ruhma_Ajalugu]
    PRIMARY KEY CLUSTERED ([child_group_id] ASC);
GO

-- Creating primary key on [kitchen_id] in table 'Kook'
ALTER TABLE [dbo].[Kook]
ADD CONSTRAINT [PK_Kook]
    PRIMARY KEY CLUSTERED ([kitchen_id] ASC);
GO

-- Creating primary key on [menu_id] in table 'Koogi_Menuu'
ALTER TABLE [dbo].[Koogi_Menuu]
ADD CONSTRAINT [PK_Koogi_Menuu]
    PRIMARY KEY CLUSTERED ([menu_id] ASC);
GO

-- Creating primary key on [dish_id] in table 'Toit'
ALTER TABLE [dbo].[Toit]
ADD CONSTRAINT [PK_Toit]
    PRIMARY KEY CLUSTERED ([dish_id] ASC);
GO

-- Creating primary key on [food_serving_id] in table 'Toidu_Valjaandmine'
ALTER TABLE [dbo].[Toidu_Valjaandmine]
ADD CONSTRAINT [PK_Toidu_Valjaandmine]
    PRIMARY KEY CLUSTERED ([food_serving_id] ASC);
GO

-- Creating primary key on [ruhmID] in table 'ruhmSet'
ALTER TABLE [dbo].[ruhmSet]
ADD CONSTRAINT [PK_ruhmSet]
    PRIMARY KEY CLUSTERED ([ruhmID] ASC);
GO

-- Creating primary key on [ametID] in table 'amrtikohtSet'
ALTER TABLE [dbo].[amrtikohtSet]
ADD CONSTRAINT [PK_amrtikohtSet]
    PRIMARY KEY CLUSTERED ([ametID] ASC);
GO

-- Creating primary key on [tootajaID] in table 'tootajaSet'
ALTER TABLE [dbo].[tootajaSet]
ADD CONSTRAINT [PK_tootajaSet]
    PRIMARY KEY CLUSTERED ([tootajaID] ASC);
GO

-- Creating primary key on [tootamineID] in table 'tootamineSet'
ALTER TABLE [dbo].[tootamineSet]
ADD CONSTRAINT [PK_tootamineSet]
    PRIMARY KEY CLUSTERED ([tootamineID] ASC);
GO

-- Creating primary key on [lapsID] in table 'lapsSet'
ALTER TABLE [dbo].[lapsSet]
ADD CONSTRAINT [PK_lapsSet]
    PRIMARY KEY CLUSTERED ([lapsID] ASC);
GO

-- Creating primary key on [jarjekordaID] in table 'jarjekordaSet'
ALTER TABLE [dbo].[jarjekordaSet]
ADD CONSTRAINT [PK_jarjekordaSet]
    PRIMARY KEY CLUSTERED ([jarjekordaID] ASC);
GO

-- Creating primary key on [Id] in table 'laps_ruhmSet'
ALTER TABLE [dbo].[laps_ruhmSet]
ADD CONSTRAINT [PK_laps_ruhmSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [puudumineID] in table 'puudumineSet'
ALTER TABLE [dbo].[puudumineSet]
ADD CONSTRAINT [PK_puudumineSet]
    PRIMARY KEY CLUSTERED ([puudumineID] ASC);
GO

-- Creating primary key on [roogID] in table 'roogSet'
ALTER TABLE [dbo].[roogSet]
ADD CONSTRAINT [PK_roogSet]
    PRIMARY KEY CLUSTERED ([roogID] ASC);
GO

-- Creating primary key on [menuuID] in table 'menuuSet'
ALTER TABLE [dbo].[menuuSet]
ADD CONSTRAINT [PK_menuuSet]
    PRIMARY KEY CLUSTERED ([menuuID] ASC);
GO

-- Creating primary key on [jagamineID] in table 'toidu_jagamineSet'
ALTER TABLE [dbo].[toidu_jagamineSet]
ADD CONSTRAINT [PK_toidu_jagamineSet]
    PRIMARY KEY CLUSTERED ([jagamineID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [menuu_menuuID] in table 'toidu_jagamineSet'
ALTER TABLE [dbo].[toidu_jagamineSet]
ADD CONSTRAINT [FK_menuutoidu_jagamine]
    FOREIGN KEY ([menuu_menuuID])
    REFERENCES [dbo].[menuuSet]
        ([menuuID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_menuutoidu_jagamine'
CREATE INDEX [IX_FK_menuutoidu_jagamine]
ON [dbo].[toidu_jagamineSet]
    ([menuu_menuuID]);
GO

-- Creating foreign key on [ruhm_ruhmID] in table 'tootamineSet'
ALTER TABLE [dbo].[tootamineSet]
ADD CONSTRAINT [FK_ruhmtootamine]
    FOREIGN KEY ([ruhm_ruhmID])
    REFERENCES [dbo].[ruhmSet]
        ([ruhmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ruhmtootamine'
CREATE INDEX [IX_FK_ruhmtootamine]
ON [dbo].[tootamineSet]
    ([ruhm_ruhmID]);
GO

-- Creating foreign key on [amrtikoht_ametID] in table 'tootamineSet'
ALTER TABLE [dbo].[tootamineSet]
ADD CONSTRAINT [FK_amrtikohttootamine]
    FOREIGN KEY ([amrtikoht_ametID])
    REFERENCES [dbo].[amrtikohtSet]
        ([ametID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_amrtikohttootamine'
CREATE INDEX [IX_FK_amrtikohttootamine]
ON [dbo].[tootamineSet]
    ([amrtikoht_ametID]);
GO

-- Creating foreign key on [tootaja_tootajaID] in table 'tootamineSet'
ALTER TABLE [dbo].[tootamineSet]
ADD CONSTRAINT [FK_tootajatootamine]
    FOREIGN KEY ([tootaja_tootajaID])
    REFERENCES [dbo].[tootajaSet]
        ([tootajaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tootajatootamine'
CREATE INDEX [IX_FK_tootajatootamine]
ON [dbo].[tootamineSet]
    ([tootaja_tootajaID]);
GO

-- Creating foreign key on [laps_lapsID] in table 'jarjekordaSet'
ALTER TABLE [dbo].[jarjekordaSet]
ADD CONSTRAINT [FK_lapsjarjekorda]
    FOREIGN KEY ([laps_lapsID])
    REFERENCES [dbo].[lapsSet]
        ([lapsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_lapsjarjekorda'
CREATE INDEX [IX_FK_lapsjarjekorda]
ON [dbo].[jarjekordaSet]
    ([laps_lapsID]);
GO

-- Creating foreign key on [ruhm_ruhmID] in table 'jarjekordaSet'
ALTER TABLE [dbo].[jarjekordaSet]
ADD CONSTRAINT [FK_ruhmjarjekorda]
    FOREIGN KEY ([ruhm_ruhmID])
    REFERENCES [dbo].[ruhmSet]
        ([ruhmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ruhmjarjekorda'
CREATE INDEX [IX_FK_ruhmjarjekorda]
ON [dbo].[jarjekordaSet]
    ([ruhm_ruhmID]);
GO

-- Creating foreign key on [laps_lapsID] in table 'laps_ruhmSet'
ALTER TABLE [dbo].[laps_ruhmSet]
ADD CONSTRAINT [FK_lapslaps_ruhm]
    FOREIGN KEY ([laps_lapsID])
    REFERENCES [dbo].[lapsSet]
        ([lapsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_lapslaps_ruhm'
CREATE INDEX [IX_FK_lapslaps_ruhm]
ON [dbo].[laps_ruhmSet]
    ([laps_lapsID]);
GO

-- Creating foreign key on [ruhm_ruhmID] in table 'laps_ruhmSet'
ALTER TABLE [dbo].[laps_ruhmSet]
ADD CONSTRAINT [FK_ruhmlaps_ruhm]
    FOREIGN KEY ([ruhm_ruhmID])
    REFERENCES [dbo].[ruhmSet]
        ([ruhmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ruhmlaps_ruhm'
CREATE INDEX [IX_FK_ruhmlaps_ruhm]
ON [dbo].[laps_ruhmSet]
    ([ruhm_ruhmID]);
GO

-- Creating foreign key on [laps_lapsID] in table 'puudumineSet'
ALTER TABLE [dbo].[puudumineSet]
ADD CONSTRAINT [FK_lapspuudumine]
    FOREIGN KEY ([laps_lapsID])
    REFERENCES [dbo].[lapsSet]
        ([lapsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_lapspuudumine'
CREATE INDEX [IX_FK_lapspuudumine]
ON [dbo].[puudumineSet]
    ([laps_lapsID]);
GO

-- Creating foreign key on [roog_roogID] in table 'menuuSet'
ALTER TABLE [dbo].[menuuSet]
ADD CONSTRAINT [FK_roogmenuu]
    FOREIGN KEY ([roog_roogID])
    REFERENCES [dbo].[roogSet]
        ([roogID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_roogmenuu'
CREATE INDEX [IX_FK_roogmenuu]
ON [dbo].[menuuSet]
    ([roog_roogID]);
GO

-- Creating foreign key on [ruhm_ruhmID] in table 'toidu_jagamineSet'
ALTER TABLE [dbo].[toidu_jagamineSet]
ADD CONSTRAINT [FK_ruhmtoidu_jagamine]
    FOREIGN KEY ([ruhm_ruhmID])
    REFERENCES [dbo].[ruhmSet]
        ([ruhmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ruhmtoidu_jagamine'
CREATE INDEX [IX_FK_ruhmtoidu_jagamine]
ON [dbo].[toidu_jagamineSet]
    ([ruhm_ruhmID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------