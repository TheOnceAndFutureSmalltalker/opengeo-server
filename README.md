# opengeo-server

This contains setup inoformation and file changes for geoserver, geotools, and sql server.

## geotools

### dependencies

[Java JDK 8.0](https://adoptopenjdk.net/?variant=openjdk8&jvmVariant=hotspot)
[maven](https://maven.apache.org/)

make sure envirionment variable JAVA_HOME points to JDK 8 installation folder
```echo %JAVA_HOME%
C:\Program Files\AdoptOpenJDK\jdk-8.0.252.09-hotspot
```

### build

1. run
```%git clone https://github.com/geotools/geotools
```

2. checkout this commit
```%git checkout f9d7f94f64
```
3. replace following files in geotools repository with the versions provided by this repository

```modules/library/main/src/main/java/org/geotools/data/store/DiffTransactionState.java
modules/plugin/shapefile/src/main/java/org/geotools/data/shapefile/shp/MultiLineHandler.java
modules/plugin/coverage-multidim/netcdf/src/test/java/org/geotools/coverage/io/netcdf/NetCDFMosaicReaderTest.java
pom.xml
```
4. from the geotools repository folder, run the folling
```mvn clean install
```
or you can skip the tests with
```mvn clean install -DskipTests
```
This will take several minutes to complete


## geoserver

### dependencies

[Java JDK 8.0](https://adoptopenjdk.net/?variant=openjdk8&jvmVariant=hotspot)
[maven](https://maven.apache.org/)
[Eclipse](https://www.eclipse.org/downloads/)

### build

1. clone source code
```% git clone https://github.com/geoserver/geoserver.git
```

2. check out this branch
```% git checkout e29ef5cb03
```

3. move the the src folder within the repository and run
```% mvn clean install
```

4. or you can skip the tests while building by running
```% mvn clean install -DskipTests

5. edit /src/web/app/src/main/webapp/WEB-INF/web.xml to disable CORS
or copy provided web.xml to the WEB-INF folder

6. got to these [instructions](https://docs.geoserver.org/latest/en/developer/quickstart/eclipse_m2.html#eclipse-maven-builder) and follow all remaining instructions on the page

## sql server

[SQL Server 2019 Developer](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
[SQL Server Management Studio](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15)
create_gis_database.sql
insert_gis_data.sql