USE [gis]
GO

/****** Object:  Table [dbo].[map]    Script Date: 6/29/2020 1:02:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[map](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[center_lat] [float] NOT NULL,
	[center_long] [float] NOT NULL,
	[crs] [nvarchar](10) NOT NULL,
	[zoom] [int] NOT NULL,
	[basemap_id] [int] NOT NULL,
 CONSTRAINT [PK_map] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[map]  WITH CHECK ADD  CONSTRAINT [FK_map_basemap] FOREIGN KEY([basemap_id])
REFERENCES [dbo].[basemap] ([id])
GO

ALTER TABLE [dbo].[map] CHECK CONSTRAINT [FK_map_basemap]
GO

USE [gis]
GO

/****** Object:  Table [dbo].[basemap]    Script Date: 6/29/2020 1:03:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[basemap](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[url] [nvarchar](200) NOT NULL,
	[layers] [nvarchar](100) NOT NULL,
	[format] [nvarchar](20) NOT NULL,
	[transparent] [bit] NOT NULL,
	[service] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_basemap] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[basemap] ADD  CONSTRAINT [DF_basemap_format]  DEFAULT ('image/png') FOR [format]
GO

ALTER TABLE [dbo].[basemap] ADD  CONSTRAINT [DF_basemap_transparent]  DEFAULT ((1)) FOR [transparent]
GO

ALTER TABLE [dbo].[basemap] ADD  CONSTRAINT [DF_basemap_service]  DEFAULT ('NONE') FOR [service]
GO


USE [gis]
GO

/****** Object:  Table [dbo].[layer]    Script Date: 6/29/2020 1:03:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[layer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[url] [nvarchar](200) NOT NULL,
	[layers] [nvarchar](100) NOT NULL,
	[format] [nvarchar](20) NOT NULL,
	[transparent] [bit] NOT NULL,
	[is_basemap] [bit] NOT NULL,
	[map_id] [int] NOT NULL,
	[group] [nvarchar](100) NULL,
	[group_number] [int] NULL,
	[layer_number] [int] NULL,
	[styles_url] [nvarchar](200) NULL,
	[legend_url] [nvarchar](200) NULL,
	[is_wfs] [bit] NOT NULL,
	[wfs_url] [nvarchar](200) NULL,
	[namespace] [nvarchar](50) NULL,
	[layer] [nvarchar](50) NULL,
	[geometry_type] [nvarchar](20) NULL,
 CONSTRAINT [PK_layer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[layer] ADD  CONSTRAINT [DF_layer_transparent]  DEFAULT ((1)) FOR [transparent]
GO

ALTER TABLE [dbo].[layer] ADD  CONSTRAINT [DF_layer_is_basemap]  DEFAULT ((0)) FOR [is_basemap]
GO

ALTER TABLE [dbo].[layer] ADD  CONSTRAINT [DF_layer_is_wfs]  DEFAULT ((0)) FOR [is_wfs]
GO

ALTER TABLE [dbo].[layer]  WITH CHECK ADD  CONSTRAINT [FK_layer_map] FOREIGN KEY([map_id])
REFERENCES [dbo].[map] ([id])
GO

ALTER TABLE [dbo].[layer] CHECK CONSTRAINT [FK_layer_map]
GO


