IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [Category] (
    [id] uniqueidentifier NOT NULL,
    [name] nvarchar(max) NOT NULL,
    [naics] nvarchar(max) NULL,
    [popularity] int NOT NULL,
    [parentId] uniqueidentifier NULL,
    CONSTRAINT [PK_Category] PRIMARY KEY ([id])
);
GO

CREATE TABLE [CustomerInfo] (
    [id] uniqueidentifier NOT NULL,
    [businessName] nvarchar(max) NULL,
    [address] nvarchar(max) NULL,
    [website] nvarchar(max) NULL,
    [ownerName] nvarchar(max) NULL,
    [phone] nvarchar(max) NULL,
    [businessCategoryId] nvarchar(max) NULL,
    [businessCategoryName] nvarchar(max) NULL,
    [contentRichness] int NOT NULL,
    [productDetectedRange] int NOT NULL,
    CONSTRAINT [PK_CustomerInfo] PRIMARY KEY ([id])
);
GO

CREATE TABLE [Schema] (
    [id] int NOT NULL IDENTITY,
    [name] nvarchar(max) NULL,
    [parentId] int NULL,
    CONSTRAINT [PK_Schema] PRIMARY KEY ([id])
);
GO

CREATE TABLE [WebsiteSection] (
    [id] uniqueidentifier NOT NULL,
    [name] nvarchar(max) NOT NULL,
    [description] nvarchar(max) NULL,
    [groupName] nvarchar(max) NOT NULL,
    [categoryID] uniqueidentifier NOT NULL,
    CONSTRAINT [PK_WebsiteSection] PRIMARY KEY ([id]),
    CONSTRAINT [FK_WebsiteSection_Category_categoryID] FOREIGN KEY ([categoryID]) REFERENCES [Category] ([id]) ON DELETE CASCADE
);
GO

CREATE TABLE [CustomerAssociatedBusiness] (
    [id] uniqueidentifier NOT NULL,
    [customerId] uniqueidentifier NOT NULL,
    [name] nvarchar(max) NULL,
    [description] nvarchar(max) NULL,
    [CustomerInfoid] uniqueidentifier NULL,
    CONSTRAINT [PK_CustomerAssociatedBusiness] PRIMARY KEY ([id]),
    CONSTRAINT [FK_CustomerAssociatedBusiness_CustomerInfo_CustomerInfoid] FOREIGN KEY ([CustomerInfoid]) REFERENCES [CustomerInfo] ([id])
);
GO

CREATE TABLE [CustomerJson] (
    [id] uniqueidentifier NOT NULL,
    [customerId] uniqueidentifier NOT NULL,
    [JsonData] nvarchar(max) NULL,
    [processed] bit NOT NULL,
    CONSTRAINT [PK_CustomerJson] PRIMARY KEY ([id]),
    CONSTRAINT [FK_CustomerJson_CustomerInfo_customerId] FOREIGN KEY ([customerId]) REFERENCES [CustomerInfo] ([id]) ON DELETE CASCADE
);
GO

CREATE TABLE [CustomerPage] (
    [id] uniqueidentifier NOT NULL,
    [customerId] uniqueidentifier NOT NULL,
    [name] nvarchar(max) NULL,
    [category] nvarchar(max) NULL,
    [type] nvarchar(max) NULL,
    [groupName] nvarchar(max) NULL,
    [CustomerInfoid] uniqueidentifier NULL,
    CONSTRAINT [PK_CustomerPage] PRIMARY KEY ([id]),
    CONSTRAINT [FK_CustomerPage_CustomerInfo_CustomerInfoid] FOREIGN KEY ([CustomerInfoid]) REFERENCES [CustomerInfo] ([id])
);
GO

CREATE TABLE [CustomerPerson] (
    [id] uniqueidentifier NOT NULL,
    [customerId] uniqueidentifier NOT NULL,
    [name] nvarchar(max) NULL,
    [position] nvarchar(max) NULL,
    [address] nvarchar(max) NULL,
    [title] nvarchar(max) NULL,
    [phone] nvarchar(max) NULL,
    [CustomerInfoid] uniqueidentifier NULL,
    CONSTRAINT [PK_CustomerPerson] PRIMARY KEY ([id]),
    CONSTRAINT [FK_CustomerPerson_CustomerInfo_CustomerInfoid] FOREIGN KEY ([CustomerInfoid]) REFERENCES [CustomerInfo] ([id])
);
GO

CREATE TABLE [CustomerService] (
    [id] uniqueidentifier NOT NULL,
    [customerId] uniqueidentifier NOT NULL,
    [name] nvarchar(max) NULL,
    [price] nvarchar(max) NULL,
    [description] nvarchar(max) NULL,
    [CustomerInfoid] uniqueidentifier NULL,
    CONSTRAINT [PK_CustomerService] PRIMARY KEY ([id]),
    CONSTRAINT [FK_CustomerService_CustomerInfo_CustomerInfoid] FOREIGN KEY ([CustomerInfoid]) REFERENCES [CustomerInfo] ([id])
);
GO

CREATE TABLE [CustomerSocialMedia] (
    [id] uniqueidentifier NOT NULL,
    [customerId] uniqueidentifier NOT NULL,
    [name] nvarchar(max) NOT NULL,
    [address] nvarchar(max) NULL,
    [CustomerInfoid] uniqueidentifier NULL,
    CONSTRAINT [PK_CustomerSocialMedia] PRIMARY KEY ([id]),
    CONSTRAINT [FK_CustomerSocialMedia_CustomerInfo_CustomerInfoid] FOREIGN KEY ([CustomerInfoid]) REFERENCES [CustomerInfo] ([id])
);
GO

CREATE TABLE [SchemaProperty] (
    [id] int NOT NULL IDENTITY,
    [name] nvarchar(max) NULL,
    [friendlyName] nvarchar(max) NULL,
    [schemaId] int NULL,
    [datatype] int NOT NULL,
    [schemaDataTypeId] int NULL,
    [visible] bit NOT NULL,
    CONSTRAINT [PK_SchemaProperty] PRIMARY KEY ([id]),
    CONSTRAINT [FK_SchemaProperty_Schema_schemaId] FOREIGN KEY ([schemaId]) REFERENCES [Schema] ([id])
);
GO

CREATE TABLE [WebsiteGroupSchema] (
    [id] uniqueidentifier NOT NULL,
    [groupName] nvarchar(max) NOT NULL,
    [visible] bit NOT NULL,
    [schemaId] int NOT NULL,
    CONSTRAINT [PK_WebsiteGroupSchema] PRIMARY KEY ([id]),
    CONSTRAINT [FK_WebsiteGroupSchema_Schema_schemaId] FOREIGN KEY ([schemaId]) REFERENCES [Schema] ([id]) ON DELETE CASCADE
);
GO

CREATE INDEX [IX_CustomerAssociatedBusiness_CustomerInfoid] ON [CustomerAssociatedBusiness] ([CustomerInfoid]);
GO

CREATE INDEX [IX_CustomerJson_customerId] ON [CustomerJson] ([customerId]);
GO

CREATE INDEX [IX_CustomerPage_CustomerInfoid] ON [CustomerPage] ([CustomerInfoid]);
GO

CREATE INDEX [IX_CustomerPerson_CustomerInfoid] ON [CustomerPerson] ([CustomerInfoid]);
GO

CREATE INDEX [IX_CustomerService_CustomerInfoid] ON [CustomerService] ([CustomerInfoid]);
GO

CREATE INDEX [IX_CustomerSocialMedia_CustomerInfoid] ON [CustomerSocialMedia] ([CustomerInfoid]);
GO

CREATE INDEX [IX_SchemaProperty_schemaId] ON [SchemaProperty] ([schemaId]);
GO

CREATE INDEX [IX_WebsiteGroupSchema_schemaId] ON [WebsiteGroupSchema] ([schemaId]);
GO

CREATE INDEX [IX_WebsiteSection_categoryID] ON [WebsiteSection] ([categoryID]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20231117150208_InitialCreate', N'7.0.14');
GO

COMMIT;
GO

