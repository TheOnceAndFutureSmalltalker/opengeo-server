USE [gis]
GO
SET IDENTITY_INSERT [dbo].[basemap] ON 
GO
INSERT [dbo].[basemap] ([id], [name], [url], [layers], [format], [transparent], [service]) VALUES (1, N'USGS Topographic', N'https://basemap.nationalmap.gov:443/arcgis/services/USGSTopo/MapServer/WmsServer?', N'0', N'image/png', 0, N'WMS')
GO
INSERT [dbo].[basemap] ([id], [name], [url], [layers], [format], [transparent], [service]) VALUES (2, N'USGS Imagery Only', N'https://basemap.nationalmap.gov:443/arcgis/services/USGSImageryOnly/MapServer/WmsServer?', N'0', N'image/png', 0, N'WMS')
GO
INSERT [dbo].[basemap] ([id], [name], [url], [layers], [format], [transparent], [service]) VALUES (3, N'USGS Imagery and Topography', N'https://basemap.nationalmap.gov:443/arcgis/services/USGSImageryTopo/MapServer/WmsServer?', N'0', N'image/png', 0, N'WMS')
GO
INSERT [dbo].[basemap] ([id], [name], [url], [layers], [format], [transparent], [service]) VALUES (4, N'USGS Hydrography', N'https://basemap.nationalmap.gov:443/arcgis/services/USGSHydroCached/MapServer/WmsServer?', N'0', N'image/png', 0, N'WMS')
GO
INSERT [dbo].[basemap] ([id], [name], [url], [layers], [format], [transparent], [service]) VALUES (5, N'USGS Shaded Relief', N'https://basemap.nationalmap.gov:443/arcgis/services/USGSShadedReliefOnly/MapServer/WmsServer?', N'0', N'image/png', 0, N'WMS')
GO
INSERT [dbo].[basemap] ([id], [name], [url], [layers], [format], [transparent], [service]) VALUES (6, N'openStreatMap.Mapnik', N'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', N'0', N'image/png', 0, N'WMTS')
GO
INSERT [dbo].[basemap] ([id], [name], [url], [layers], [format], [transparent], [service]) VALUES (7, N'openTopoMap', N'https://{s}.tile.opentopomap.org/{z}/{x}/{y}.png', N'0', N'image/png', 0, N'WMTS')
GO
INSERT [dbo].[basemap] ([id], [name], [url], [layers], [format], [transparent], [service]) VALUES (8, N'Stadia.AlidadeSmooth', N'https://tiles.stadiamaps.com/tiles/alidade_smooth/{z}/{x}/{y}{r}.png', N'0', N'image/png', 0, N'WMTS')
GO
INSERT [dbo].[basemap] ([id], [name], [url], [layers], [format], [transparent], [service]) VALUES (9, N'Stadia.AlidadeSmoothDark', N'https://tiles.stadiamaps.com/tiles/alidade_smooth_dark/{z}/{x}/{y}{r}.png', N'0', N'image/png', 0, N'WMTS')
GO
INSERT [dbo].[basemap] ([id], [name], [url], [layers], [format], [transparent], [service]) VALUES (10, N'Stadia.Outdoors', N'https://tiles.stadiamaps.com/tiles/outdoors/{z}/{x}/{y}{r}.png', N'0', N'image/png', 0, N'WMTS')
GO
INSERT [dbo].[basemap] ([id], [name], [url], [layers], [format], [transparent], [service]) VALUES (11, N'Stamen.TonerLite', N'https://stamen-tiles-a.a.ssl.fastly.net/toner-lite/{z}/{x}/{y}{r}.png', N'0', N'image/png', 0, N'WMTS')
GO
INSERT [dbo].[basemap] ([id], [name], [url], [layers], [format], [transparent], [service]) VALUES (12, N'Stamen.TerrainBackground', N'https://stamen-tiles-a.a.ssl.fastly.net/terrain-background/{z}/{x}/{y}{r}.png', N'0', N'image/png', 0, N'WMTS')
GO
INSERT [dbo].[basemap] ([id], [name], [url], [layers], [format], [transparent], [service]) VALUES (13, N'ESRI World Topo Map', N'https://server.arcgisonline.com/ArcGIS/rest/services/World_Street_Map/MapServer/tile/{z}/{y}/{x}', N'0', N'image/png', 0, N'WMTS')
GO
INSERT [dbo].[basemap] ([id], [name], [url], [layers], [format], [transparent], [service]) VALUES (14, N'ESRI World Imagery', N'https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}', N'0', N'image/png', 0, N'WMTS')
GO
INSERT [dbo].[basemap] ([id], [name], [url], [layers], [format], [transparent], [service]) VALUES (15, N'ESRI World Terrain', N'https://server.arcgisonline.com/ArcGIS/rest/services/World_Terrain_Base/MapServer/tile/{z}/{y}/{x}', N'0', N'image/png', 0, N'WMTS')
GO
INSERT [dbo].[basemap] ([id], [name], [url], [layers], [format], [transparent], [service]) VALUES (16, N'ESRI Nat Geo World Map', N'https://server.arcgisonline.com/ArcGIS/rest/services/NatGeo_World_Map/MapServer/tile/{z}/{y}/{x}', N'0', N'image/png', 0, N'WMTS')
GO
SET IDENTITY_INSERT [dbo].[basemap] OFF
GO
SET IDENTITY_INSERT [dbo].[map] ON 
GO
INSERT [dbo].[map] ([id], [name], [center_lat], [center_long], [crs], [zoom], [basemap_id]) VALUES (1, N'Manhattan', 40.78, -73.96, N'EPSG4326', 11, 1)
GO
INSERT [dbo].[map] ([id], [name], [center_lat], [center_long], [crs], [zoom], [basemap_id]) VALUES (2, N'Tasmania', -42.2, 146.8, N'EPSG4326', 7, 1)
GO
INSERT [dbo].[map] ([id], [name], [center_lat], [center_long], [crs], [zoom], [basemap_id]) VALUES (3, N'Spearfish', 44.43, -103.76, N'EPSG4326', 11, 1)
GO
INSERT [dbo].[map] ([id], [name], [center_lat], [center_long], [crs], [zoom], [basemap_id]) VALUES (4, N'AOI POINT', 35.93, -79.38, N'EPSG4326', 10, 1)
GO
SET IDENTITY_INSERT [dbo].[map] OFF
GO
SET IDENTITY_INSERT [dbo].[layer] ON 
GO
INSERT [dbo].[layer] ([id], [name], [url], [layers], [format], [transparent], [is_basemap], [map_id], [group], [group_number], [layer_number], [styles_url], [legend_url], [is_wfs], [wfs_url], [namespace], [layer], [geometry_type]) VALUES (2, N'Roads (Raster)', N'http://192.168.1.69:8080/geoserver/tiger/wms?', N'tiger:tiger_roads', N'image/png', 1, 0, 1, N'Transportation', 1, 1, N'http://localhost:8080/geoserver/rest/styles/tiger_roads_2.sld', N'http://192.168.1.69:8080/geoserver/tiger/wms?REQUEST=GetLegendGraphic&VERSION=1.1.0&FORMAT=image/png&LAYER=tiger_roads&style=tiger_roads_2', 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[layer] ([id], [name], [url], [layers], [format], [transparent], [is_basemap], [map_id], [group], [group_number], [layer_number], [styles_url], [legend_url], [is_wfs], [wfs_url], [namespace], [layer], [geometry_type]) VALUES (3, N'Landmarks (Raster)', N'http://192.168.1.69:8080/geoserver/tiger/wms?', N'tiger:poly_landmarks', N'image/png', 1, 0, 1, N'Sites', 2, 1, N'http://localhost:8080/geoserver/rest/styles/poly_landmarks_2.sld', N'http://192.168.1.69:8080/geoserver/tiger/wms?REQUEST=GetLegendGraphic&VERSION=1.1.0&FORMAT=image/png&LAYER=poly_landmarks&style=poly_landmarks_2', 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[layer] ([id], [name], [url], [layers], [format], [transparent], [is_basemap], [map_id], [group], [group_number], [layer_number], [styles_url], [legend_url], [is_wfs], [wfs_url], [namespace], [layer], [geometry_type]) VALUES (4, N'Points of Interest', N'http://192.168.1.69:8080/geoserver/tiger/wms?', N'tiger:poi', N'image/png', 1, 0, 1, N'Sites', 2, 3, N'http://localhost:8080/geoserver/rest/styles/poi_2.sld', N'http://192.168.1.69:8080/geoserver/tiger/wms?REQUEST=GetLegendGraphic&VERSION=1.1.0&FORMAT=image/png&LAYER=poi&style=poi', 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[layer] ([id], [name], [url], [layers], [format], [transparent], [is_basemap], [map_id], [group], [group_number], [layer_number], [styles_url], [legend_url], [is_wfs], [wfs_url], [namespace], [layer], [geometry_type]) VALUES (6, N'State Boundaries', N'http://192.168.1.69:8080/geoserver/topp/wms?', N'topp:tasmania_state_boundaries', N'image/png', 1, 0, 2, N'Artificial', 2, 1, NULL, NULL, 1, N'http://localhost:8080/geoserver/topp/ows', N'topp', N'tasmania_state_boundaries', NULL)
GO
INSERT [dbo].[layer] ([id], [name], [url], [layers], [format], [transparent], [is_basemap], [map_id], [group], [group_number], [layer_number], [styles_url], [legend_url], [is_wfs], [wfs_url], [namespace], [layer], [geometry_type]) VALUES (7, N'Water Bodies', N'http://192.168.1.69:8080/geoserver/topp/wms?', N'topp:tasmania_water_bodies', N'image/png', 1, 0, 2, N'Natural', 1, 1, NULL, NULL, 1, N'http://localhost:8080/geoserver/topp/ows', N'topp', N'tasmania_water_bodies', NULL)
GO
INSERT [dbo].[layer] ([id], [name], [url], [layers], [format], [transparent], [is_basemap], [map_id], [group], [group_number], [layer_number], [styles_url], [legend_url], [is_wfs], [wfs_url], [namespace], [layer], [geometry_type]) VALUES (8, N'Roads', N'http://192.168.1.69:8080/geoserver/topp/wms?', N'topp:tasmania_roads', N'image/png', 1, 0, 2, N'Artificial', 2, 2, NULL, NULL, 1, N'http://localhost:8080/geoserver/topp/ows', N'topp', N'tasmania_roads', NULL)
GO
INSERT [dbo].[layer] ([id], [name], [url], [layers], [format], [transparent], [is_basemap], [map_id], [group], [group_number], [layer_number], [styles_url], [legend_url], [is_wfs], [wfs_url], [namespace], [layer], [geometry_type]) VALUES (9, N'Cities', N'http://192.168.1.69:8080/geoserver/topp/wms?', N'topp:tasmania_cities', N'image/png', 1, 0, 2, N'Artificial', 2, 3, NULL, NULL, 1, N'http://localhost:8080/geoserver/topp/ows', N'topp', N'tasmania_cities', NULL)
GO
INSERT [dbo].[layer] ([id], [name], [url], [layers], [format], [transparent], [is_basemap], [map_id], [group], [group_number], [layer_number], [styles_url], [legend_url], [is_wfs], [wfs_url], [namespace], [layer], [geometry_type]) VALUES (11, N'Elevation', N'http://192.168.1.69:8080/geoserver/sf/wms?', N'sf:sfdem', N'image/png', 1, 0, 3, N'Big Stuff', 2, 3, NULL, NULL, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[layer] ([id], [name], [url], [layers], [format], [transparent], [is_basemap], [map_id], [group], [group_number], [layer_number], [styles_url], [legend_url], [is_wfs], [wfs_url], [namespace], [layer], [geometry_type]) VALUES (12, N'Archeological Sites', N'http://192.168.1.69:8080/geoserver/sf/wms?', N'sf:archsites', N'image/png', 1, 0, 3, N'Small Stuff', 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[layer] ([id], [name], [url], [layers], [format], [transparent], [is_basemap], [map_id], [group], [group_number], [layer_number], [styles_url], [legend_url], [is_wfs], [wfs_url], [namespace], [layer], [geometry_type]) VALUES (13, N'Bug Locations', N'http://192.168.1.69:8080/geoserver/sf/wms?', N'sf:bugsites', N'image/png', 1, 0, 3, N'Small Stuff', 1, 2, NULL, NULL, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[layer] ([id], [name], [url], [layers], [format], [transparent], [is_basemap], [map_id], [group], [group_number], [layer_number], [styles_url], [legend_url], [is_wfs], [wfs_url], [namespace], [layer], [geometry_type]) VALUES (14, N'Restricted Areas', N'http://192.168.1.69:8080/geoserver/sf/wms?', N'sf:restricted', N'image/png', 1, 0, 3, N'Small Stuff', 1, 3, NULL, NULL, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[layer] ([id], [name], [url], [layers], [format], [transparent], [is_basemap], [map_id], [group], [group_number], [layer_number], [styles_url], [legend_url], [is_wfs], [wfs_url], [namespace], [layer], [geometry_type]) VALUES (15, N'Roads', N'http://192.168.1.69:8080/geoserver/sf/wms?', N'sf:roads', N'image/png', 1, 0, 3, N'Big Stuff', 2, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[layer] ([id], [name], [url], [layers], [format], [transparent], [is_basemap], [map_id], [group], [group_number], [layer_number], [styles_url], [legend_url], [is_wfs], [wfs_url], [namespace], [layer], [geometry_type]) VALUES (16, N'Streams', N'http://192.168.1.69:8080/geoserver/sf/wms?', N'sf:streams', N'image/png', 1, 0, 3, N'Big Stuff', 2, 2, NULL, NULL, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[layer] ([id], [name], [url], [layers], [format], [transparent], [is_basemap], [map_id], [group], [group_number], [layer_number], [styles_url], [legend_url], [is_wfs], [wfs_url], [namespace], [layer], [geometry_type]) VALUES (17, N'Roads (Vector)', N'http://localhost:8080/geoserver/tiger/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=tiger%3Atiger_roads&outputFormat=application%2Fjson', N'tiger:tiger_roads', N'geojson', 1, 0, 1, N'Transportation', 1, 2, N'http://localhost:8080/geoserver/rest/styles/tiger_roads_alt.sld', N'http://192.168.1.69:8080/geoserver/tiger/wms?REQUEST=GetLegendGraphic&VERSION=1.1.0&FORMAT=image/png&LAYER=tiger_roads&style=tiger_roads', 1, N'http://localhost:8080/geoserver/tiger/ows', N'tiger', N'tiger_roads', N'polyline')
GO
INSERT [dbo].[layer] ([id], [name], [url], [layers], [format], [transparent], [is_basemap], [map_id], [group], [group_number], [layer_number], [styles_url], [legend_url], [is_wfs], [wfs_url], [namespace], [layer], [geometry_type]) VALUES (18, N'Landmarks (Vector)', N'http://localhost:8080/geoserver/tiger/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=tiger%3Apoly_landmarks&outputFormat=application%2Fjson', N'tiger:poly_landmarks', N'geojson', 1, 0, 1, N'Sites', 2, 2, N'http://localhost:8080/geoserver/rest/styles/poly_landmarks.sld', N'http://192.168.1.69:8080/geoserver/tiger/wms?REQUEST=GetLegendGraphic&VERSION=1.1.0&FORMAT=image/png&LAYER=poly_landmarks&style=poly_landmarks', 1, N'http://localhost:8080/geoserver/tiger/ows', N'tiger', N'poly_landmarks', N'polygon')
GO
INSERT [dbo].[layer] ([id], [name], [url], [layers], [format], [transparent], [is_basemap], [map_id], [group], [group_number], [layer_number], [styles_url], [legend_url], [is_wfs], [wfs_url], [namespace], [layer], [geometry_type]) VALUES (1017, N'Red Markers', N'http://40.117.101.181:8080/geoserver/sde/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=sde%3AAOI_POINT&maxFeatures=50&outputFormat=application%2Fjson', N'sde:AOI_POINT', N'geojson', 1, 0, 4, N'Indicators', 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[layer] ([id], [name], [url], [layers], [format], [transparent], [is_basemap], [map_id], [group], [group_number], [layer_number], [styles_url], [legend_url], [is_wfs], [wfs_url], [namespace], [layer], [geometry_type]) VALUES (2017, N'Points of Interest (Vector)', N'http://localhost:8080/geoserver/tiger/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=tiger:poi&maxFeatures=50&outputFormat=application%2Fjson', N'tiger:poi', N'geojson', 1, 0, 1, N'Sites', 2, 4, N'http://localhost:8080/geoserver/rest/styles/poi.sld', N'http://192.168.1.69:8080/geoserver/tiger/wms?REQUEST=GetLegendGraphic&VERSION=1.1.0&FORMAT=image/png&LAYER=poi&style=poi', 1, N'http://localhost:8080/geoserver/tiger/ows', N'tiger', N'poi', N'marker')
GO
SET IDENTITY_INSERT [dbo].[layer] OFF
GO
