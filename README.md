# opengeo-server

This contains setup information and file changes for all of the server components for opengeo.


### Dependencies
Make sure each of the following is installed.

[Java JDK 8.0](https://adoptopenjdk.net/?variant=openjdk8&jvmVariant=hotspot)

[node.js](https://nodejs.org/en/download/)

[maven](https://maven.apache.org/)

[Eclipse](https://www.eclipse.org/downloads/)

[SQL Server 2019 Developer](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)

[SQL Server Management Studio](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15)

Make sure environment variable JAVA_HOME points to JDK 8 installation folder by running the following.
```
% echo %JAVA_HOME%
C:\Program Files\AdoptOpenJDK\jdk-8.0.252.09-hotspot
```



### Maven Setup
Replace the `settings.xml` file with the one provided in this repository `maven\settings.xml`

### Build Database

1. Open Management Studio 

2. Open the file `sqlserver\create_gis_database.sql` and execute it

3. Open the file `sqlserver\create_gis_tables.sql` and execute it

4. Open the file `sqlserver\insert_gis_data.sql` and execute it


## Install and Build geotools

1. Clone latest geotools repository
```
% git clone https://github.com/geotools/geotools
```

2. Checkout this commit
```
% git checkout f9d7f94f64
```
3. Replace following files in geotools repository with the versions provided by this repository in the `geotools` folder

```
modules/library/main/src/main/java/org/geotools/data/store/DiffTransactionState.java
modules/plugin/shapefile/src/main/java/org/geotools/data/shapefile/shp/MultiLineHandler.java
modules/plugin/coverage-multidim/netcdf/src/test/java/org/geotools/coverage/io/netcdf/NetCDFMosaicReaderTest.java
pom.xml
```
4. From the geotools repository folder, run the following (this will take several minutes)
```
% mvn clean install
```

NOTE:  You can skip the tests with.
```
% mvn clean install -DskipTests
```

# Install and Build geoserver

1. Clone latest geoserver repository
```
% git clone https://github.com/geoserver/geoserver.git
```

2. Check out this branch
```
% git checkout e29ef5cb03
```

3. Move to the the src folder within the repository and run (this will take several minutes).
```
% mvn clean install
```

4. Edit `/src/web/app/src/main/webapp/WEB-INF/web.xml` to enable CORS
or copy provided web.xml to the WEB-INF folder

5. To load and run geoserver from Eclipse, go to these [instructions](https://docs.geoserver.org/latest/en/developer/quickstart/eclipse_m2.html#eclipse-maven-builder) and follow all remaining instructions on the page.


