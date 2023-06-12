# FLaNK-ParticulateMatterSensor

Clean air, up in smoke. https://shop.pimoroni.com/products/pms5003-particulate-matter-sensor-with-cable?variant=29075640352851

See:  https://medium.com/@tspann/harnessing-the-power-of-nifi-building-a-seamless-flow-to-ingest-pm2-5-90246393fcab

#### MiNiFi Agents

https://github.com/tspannhw/FLaNK-Edge

#### Flink SQL


````


select systemtime, adjtempf, humidity, gasKO, pm25, pm1, pm10, pm1atmos, pm25atmos, pm10atmos, oxidising, nh3
from `sr1`.`default_database`.`particles`

select systemtime,  max(pm25) as maxpm25, max(pm1) as maxpm1, max(pm10) as maxpm10, max(nh3) as maxnh3, 
                    min(pm25) as minpm25, min(pm1) as minpm1, min(pm10) as minpm10, min(nh3) as minnh3,
                    count(pm25) as RowCount
from `sr1`.`default_database`.`particles`
group by systemtime

````

### Hardware - Small

Enviro + Air Quality

Raspberry Pi 4 Model B Rev 1.1 with 4GB RAM

PMS5003 Particulate Matter Sensor with Cable

* BME280
* LTR-559
* MICS6814
* ADS1015
* MEMS microphone 
* 0.96" colour LCD
* PMS5003


### Enviro+ Data Stream

````

 {
  "uuid" : "air_uuid_kbr_20230608132527",
  "amplitude100" : 1.0,
  "amplitude500" : 0.3,
  "amplitude1000" : 0.2,
  "lownoise" : 0.4,
  "midnoise" : 0.2,
  "highnoise" : 0.3,
  "amps" : 0.3,
  "ipaddress" : "192.168.1.188",
  "host" : "rp4",
  "host_name" : "rp4",
  "macaddress" : "a6:e0:87:04:1a:75",
  "systemtime" : "2023-06-08T09:25:28.895187",
  "endtime" : "1686230728.89",
  "runtime" : "625.63",
  "starttime" : "06/08/2023 09:15:02",
  "cpu" : 0.3,
  "cpu_temp" : "53.5",
  "diskusage" : "29329.2 MB",
  "memory" : 5.8,
  "id" : "20230608132527_337aa313-278b-43d5-a4fd-6d39a8840822",
  "temperature" : "36.7",
  "adjtemp" : "29.4",
  "adjtempf" : "64.9",
  "temperaturef" : "78.1",
  "pressure" : 1003.2,
  "humidity" : 15.6,
  "lux" : 89.8,
  "proximity" : 0,
  "oxidising" : 76.2,
  "reducing" : 140.8,
  "nh3" : 50.9,
  "gasKO" : "Oxidising: 76188.84 Ohms\nReducing: 140805.11 Ohms\nNH3: 50944.44 Ohms",
  "pm25" : 183,
  "pm1" : 92,
  "pm10" : 195,
  "pm1atmos" : 60,
  "pm25atmos" : 121,
  "pm10atmos" : 129,
  "pmper1l03" : 15588,
  "pmper1l05" : 4565,
  "pmper1l1" : 1324,
  "pmper1l25" : 128,
  "pmper1l5" : 16,
  "pmper1l10" : 9
}

````

### Hardware - Tiny

Enviro Urban (Pico W Aboard) 

* PMS5003I
* Pico/RP2040
* BME280
* MEMS microphone 


### Urban Data Stream

|Name|Parameter|Unit|Symbol|Example|
|---|---|---|---|---|
|Temperature|`temperature`|celcius|°C|`22.11`|
|Humidity|`humidity`|percent|%|`55.42`|
|Air Pressure|`pressure`|hectopascals|hPa|`997.16`|
|Noise|`noise`|voltage|V|`0.87`|
|PM1|`pm1`|micrograms per cubic metre|µg/m³|`9`|
|PM2.5|`pm2_5`|micrograms per cubic metre|µg/m³|`4`|
|PM10|`pm10`|micrograms per cubic metre|µg/m³|`2`|
|Voltage|`voltage`|volts|V|`4.035`|

````

{"readings": {"pressure": 1002.28, "pm2_5": 154, "pm10": 160, "noise": 1.51, "humidity": 31.86, "temperature": 25.95, "pm1": 82}, "nickname": "flankurban", "timestamp": "2023-06-08 20:03:09"}

````

### Resources

* https://github.com/tspannhw/FLiP-Py-Enviro-Urban
* https://medium.com/@tspann/wildfires-air-quality-time-to-fire-up-the-sensors-and-start-flanking-12ea0ba33f63
* https://github.com/pimoroni/pms5003-python
* https://github.com/pimoroni/enviro
* https://www.nbcnews.com/news/us-news/live-blog/unhealthy-air-quality-canada-wildfires-live-updates-rcna88092
* https://www.northjersey.com/story/news/health/2023/06/07/nj-air-pollution-improve-air-quality-safe-outside-today/70297470007/
* https://shop.pimoroni.com/products/enviro-urban?variant=40056508252243
* https://github.com/pimoroni/enviro/blob/main/documentation/getting-started.md
* https://github.com/tspannhw/Flow-SGP30-MLX90640
* https://hazecam.net/
* https://community.cloudera.com/t5/Community-Articles/Tracking-Air-Quality-with-HDP-and-HDF-Part-1-Apache-NiFi/ta-p/248265
* https://github.com/tspannhw/flank-airquality
* https://www.slideshare.net/HostedbyConfluent/lets-monitor-conditions-at-the-conference-with-timothy-spann-david-kjerrumgaard-current-2022
* https://dev.to/tspannhw/analyzing-wood-burning-stoves-with-flank-stack-minifi-flink-nifi-kafka-kudu-36on
* https://www.datainmotion.dev/2019/10/tracking-air-quality-with-apache-nifi.html
* https://patch.com/new-jersey/livingston/nj-cops-get-smoke-burning-odor-calls-due-canadian-wildfires
* https://www.northjersey.com/story/news/health/2023/06/06/nj-air-quality-alert-canadian-wildfire-orange-alert-meaning/70292795007/
* https://dev.to/tspannhw/tracking-air-quality-with-apache-nifi-cloudera-data-science-workbench-pyspark-and-parquet-28c
* https://www.airnow.gov//
* https://www.airnow.gov/aqi/aqi-basics/extremely-high-levels-of-pm25/
* https://github.com/pimoroni/enviro/blob/main/documentation/getting-started.md#provisioning
* https://learn.pimoroni.com/article/enviro-plus-and-luftdaten-air-quality-station
* https://learn.pimoroni.com/article/getting-started-with-enviro-plus
* https://shop.pimoroni.com/products/pms5003-particulate-matter-sensor-with-cable?variant=29075640352851
* https://shop.pimoroni.com/products/enviro?variant=31155658489939
* https://github.com/pimoroni/enviroplus-python
* https://github.com/tspannhw/FLiP-Py-Pi-EnviroPlus
* https://github.com/tspannhw/minifi-enviroplus

````
Harnessing the Power of NiFi: Building a Seamless Flow to Ingest PM2.5 Data from a MiNiFi Java Agent with a Particle Sensor

Sensors — Python — MiNiFi — NiFi — Kafka — Flink — Dashboard


RPI3 with Enviro+ Sensors
Introduction
In an era where environmental awareness is paramount, the need for accurate and timely air quality data is crucial. One key pollutant that demands attention is PM2.5, referring to fine particulate matter with a diameter of 2.5 micrometers or smaller.

Hardware (Enviro + Air Quality):

PMS5003 Particulate Matter Sensor with Cable
Monitor air pollution cheaply and accurately with this matchbox-sized particulate matter (PM) sensor from Plantower! It…
shop.pimoroni.com

Raspberry Pi 4 Model B Rev 1.1 with 4GB RAM
PMS5003 Particulate Matter Sensor with Cable

BME280
LTR-559
MICS6814
ADS1015
MEMS microphone
0.96" colour LCD
PMS5003
To efficiently gather and process PM2.5 data from a MiNiFi Java Agent equipped with a particle sensor, Apache NiFi offers an exceptional solution. This article explores the process of building a NiFi flow to seamlessly ingest PM2.5 data, empowering you to monitor and analyze air quality with ease.


We will also utilize Cloudera Edge Flow Manager (EFM) to develop, build, manage, deploy, monitor, enhance, backup and maintain our flows for agents. In this case I am prototyping with a single agent attached to this class of agents. We will deploy the one flow to one agent, the process is no different if there are 50,000 different devices receiving the same agent class.


Particle Sensor
Source Code

GitHub - tspannhw/FLaNK-ParticulateMatterSensor: Clean air, up in smoke…
Clean air, up in smoke…
Clean air, up in smoke…github.com

GitHub - tspannhw/FLaNK-Edge: An example of FLaNK Edge
An example of FLaNK Edge. Contribute to tspannhw/FLaNK-Edge development by creating an account on GitHub.
github.com

On the MiNiFi Agent, we have a shell script that call ours Python 3 app.

cd /opt/demo/
python3 /opt/demo/enviroagent.py

Step 1
Setting up the MiNiFi Agent and Particle Sensor Before diving into NiFi, it is essential to have a functional MiniFi agent connected to a particle sensor.


The sensor is connected and basic reporting is successful. Notice how high those numbers are. This is not a good sign.

The MiniFi agent is a lightweight data ingestion tool that runs on resource-constrained devices. By integrating a particle sensor, the agent can measure and transmit real-time PM2.5 data, acting as a valuable data source for our NiFi flow.

After you add a new NAR, you have to refresh to see it.


Click Refresh Manifest… to see any new processors available.

Add the NAR for Kafka if you want it in your MiNiFi Java Agent

Refresh Complete

MLX Thermal Camera

CEM Monitor Dashboard

Edge Events

Open a Flow for each device agent class
Let’s build our flow by adding processors.


Run Shell Script
In the first step we use ExecuteProcess to run a shell script that calls my Python application for sensor reading. This script returns the results as JSON via standard out (STDOUT) which we can read in MiNiFi.


Final MiNiFi Flow to Deploy

In our second step in the flow we set the user agent so we know who is calling our NiFi HTTP REST Listener.


Set Agent Name To Identify Flow
A selection of processors available:





Publish MiNiFi Flow

Results from their agent
For DevOps stuff like backup, we can use EFM’s swagger REST interface.



Swagger REST API

Step 2
Installing and Configuring Apache NiFi next, ensure that Apache NiFi is installed and ready to use. NiFi provides a graphical interface for constructing data flows, making it easier to design and manage the ingestion process. Once installed, configure NiFi to establish a connection with the MiniFi agent. This connection enables the flow of PM2.5 data from the sensor to NiFi for processing.


Step 3
Designing the NiFi Flow The heart of our data ingestion solution lies in designing an efficient NiFi flow.


Apache NiFi
Start by creating a NiFi dataflow canvas and add relevant processors, controllers, and connections to construct the desired flow. In the case of PM2.5 data ingestion, key processors might include:

ListenHTTP: Configured to receive data from the MiniFi agent, this processor acts as the entry point for incoming PM2.5 measurements.
ParseJSON: As the received data is likely in JSON format, this processor parses and extracts the relevant fields such as timestamp and PM2.5 concentration.
RouteOnAttribute: With the extracted data, this processor allows for dynamic routing based on specific attributes. For example, you can route data to different branches based on PM2.5 concentration thresholds for further analysis.
PutDatabaseRecord: This processor enables storing the PM2.5 data in a database for long-term storage and retrieval.
These are just a few examples of processors you can use. The flexibility of NiFi allows for customization based on your specific requirements.


NiFi — Received from MiNiFi Java Agent
For today’s flow we do some processing on it via record processors.



Step 4
Enhancing the Flow with NiFi features to create a robust and efficient PM2.5 data ingestion flow, leverage NiFi’s processors.

For instance:

Data Validation: Implement data validation techniques to ensure the quality and integrity of the ingested PM2.5 data. You can utilize processors like ValidateRecord to enforce data integrity rules.
Scalability and Fault Tolerance: NiFi offers the capability to scale horizontally, allowing you to distribute the workload across multiple NiFi instances. This enhances fault tolerance and ensures seamless data ingestion even in the face of failures.
Data Transformation and Enrichment: Consider incorporating processors like UpdateAttribute, UpdateRecord or MergeContent to enrich the PM2.5 data with additional information or transform it into a desired format before storage or further processing.
Step 5
After enrichment, enhancement, cleaned and validation, we can finalize our schemas for the incoming enviroplus data as well as the final cleaned up particle stream.


The Cloudera Schema Registry provides a host for our data schemas and a REST endpoint to use from SQL Stream Builder, NiFi, Java, Scala and anyone who can read REST endpoints.


Step 6
Our data is streaming into Kafka to buffer and distribute to all consumers everywhere. We can also geo-replicate via Streams Replication to any other cluster, availability zone, cloud or cluster with no code.


SMM View of our Topic: particles (data is avro with a schema)
Below is a sample record we can peek at in the stream.


Step 7
We now can run some continuous SQL analytics on this data stream. We use standard Flink SQL supercharged with the Cloudera SQL Stream Builder UI.

Let’s examine our “table” so we can do some queries.


Schema Registry Schema connects to Kafka Topic
A simple select * and we have all of our topic data available.




select systemtime, adjtempf, humidity, gasKO, pm25, pm1, pm10, pm1atmos, pm25atmos, pm10atmos, oxidising, nh3
from `sr1`.`default_database`.`particles`;

select systemtime,  max(pm25) as maxpm25, max(pm1) as maxpm1, max(pm10) as maxpm10, max(nh3) as maxnh3, 
                    min(pm25) as minpm25, min(pm1) as minpm1, min(pm10) as minpm10, min(nh3) as minnh3,
                    count(pm25) as RowCount
from `sr1`.`default_database`.`particles`
group by systemtime;
An example record in JSON.

{
  "uuid" : "air_uuid_kbr_20230608132527",
  "amplitude100" : 1.0,
  "amplitude500" : 0.3,
  "amplitude1000" : 0.2,
  "lownoise" : 0.4,
  "midnoise" : 0.2,
  "highnoise" : 0.3,
  "amps" : 0.3,
  "ipaddress" : "192.168.1.188",
  "host" : "rp4",
  "host_name" : "rp4",
  "macaddress" : "a6:e0:87:04:1a:75",
  "systemtime" : "2023-06-08T09:25:28.895187",
  "endtime" : "1686230728.89",
  "runtime" : "625.63",
  "starttime" : "06/08/2023 09:15:02",
  "cpu" : 0.3,
  "cpu_temp" : "53.5",
  "diskusage" : "29329.2 MB",
  "memory" : 5.8,
  "id" : "20230608132527_337aa313-278b-43d5-a4fd-6d39a8840822",
  "temperature" : "36.7",
  "adjtemp" : "29.4",
  "adjtempf" : "64.9",
  "temperaturef" : "78.1",
  "pressure" : 1003.2,
  "humidity" : 15.6,
  "lux" : 89.8,
  "proximity" : 0,
  "oxidising" : 76.2,
  "reducing" : 140.8,
  "nh3" : 50.9,
  "gasKO" : "Oxidising: 76188.84 Ohms\nReducing: 140805.11 Ohms\nNH3: 50944.44 Ohms",
  "pm25" : 183,
  "pm1" : 92,
  "pm10" : 195,
  "pm1atmos" : 60,
  "pm25atmos" : 121,
  "pm10atmos" : 129,
  "pmper1l03" : 15588,
  "pmper1l05" : 4565,
  "pmper1l1" : 1324,
  "pmper1l25" : 128,
  "pmper1l5" : 16,
  "pmper1l10" : 9
}

Step 8
We can now create a basic dashboard for visualization. We could also use Jupyter notebooks hosted by Cloudera Machine Learning or use Cloudera Data Visualization tool.

Any easy way to power visualization is with a materialized view in SQL Stream Builder that provides a REST interface to JSON data which is super easy to read. We could also utilize Iceberg tables, Phoenix tables or Hive tables, but for today let’s try the cool REST interface supplied by SSB.


REST

REST Data
Once we have a query we like in SQL, you click Materialized View and you can build a view. You need to click to create a new API key for security. Also I recommend you Enable MV, Recreate on Job Start and Ignore Nulls as options shown below. Also pick a logical primary key from your query and set a retention time. Then you can click “Add New Query” to decide what fields and any parameters you want to pass.


SQL Stream Builder (SSB)

JQuery + Datatables.net + HTML5 + CSS Simple Display hosted by (python3 -m http.server 8000)
Step 9
Let’s send some notifications and alerts to slack. We can do this easily in Apache NiFi.


Conclusion
By leveraging the power of Apache NiFi, you can build a seamless flow for ingesting PM2.5 data from a MiniFi agent equipped with a particle sensor. This enables you to actively monitor and analyze air quality, empowering you to make informed decisions and take necessary actions. Deeper analytics and machine learning are enabled by other connected parts of the Data Platform.


Particle Schema
{"type":"record",
"name":"particles",
"namespace":"org.apache.nifi",
"fields":
[{"name":"uuid","type":["string","null"]},
{"name":"amplitude100","type":["double","null"]},
{"name":"amplitude500","type":["double","null"]},
{"name":"amplitude1000","type":["double","null"]},
{"name":"lownoise","type":["double","null"]},
{"name":"midnoise","type":["double","null"]},
{"name":"highnoise","type":["double","null"]},
{"name":"amps","type":["double","null"]},
{"name":"ipaddress","type":["string","null"]},
{"name":"host","type":["string","null"]},
{"name":"host_name","type":["string","null"]},
{"name":"macaddress","type":["string","null"]},
{"name":"systemtime","type":["string","null"]},
{"name":"endtime","type":["string","null"]},
{"name":"runtime","type":["string","null"]},
{"name":"starttime","type":["string","null"]},
{"name":"cpu","type":["double","null"]},
{"name":"cpu_temp","type":["string","null"]},
{"name":"diskusage","type":["string","null"]},
{"name":"memory","type":["double","null"]},
{"name":"id","type":["string","null"]},
{"name":"temperature","type":["string","null"]},
{"name":"adjtemp","type":["string","null"]},
{"name":"adjtempf","type":["string","null"]},
{"name":"temperaturef","type":["string","null"]},
{"name":"pressure","type":["double","null"]},
{"name":"humidity","type":["double","null"]},
{"name":"lux","type":["double","null"]},
{"name":"proximity","type":["int","null"]},
{"name":"oxidising","type":["double","null"]},
{"name":"reducing","type":["double","null"]},
{"name":"nh3","type":["double","null"]},
{"name":"gasKO","type":["string","null"]},
{"name":"pm25","type":["int","null"]},
{"name":"pm1","type":["int","null"]},
{"name":"pm10","type":["int","null"]},
{"name":"pm1atmos","type":["int","null"]},
{"name":"pm25atmos","type":["int","null"]},
{"name":"pm10atmos","type":["int","null"]},
{"name":"pmper1l03","type":["int","null"]},
{"name":"pmper1l05","type":["int","null"]},
{"name":"pmper1l1","type":["int","null"]},
{"name":"pmper1l25","type":["int","null"]},
{"name":"pmper1l5","type":["int","null"]},
{"name":"pmper1l10","type":["int","null"]}
]}
Related Article for Pollution
Wildfires… Air Quality… Time to fire up the sensors… And Start FLaNKing…
PM2.5=138 for NJ Northeast Urban
medium.com

Bonus Tiny Data

Hardware — Tiny
Enviro Urban (Pico W Aboard)

PMS5003I
Pico/RP2040
BME280
MEMS microphone
Urban Data Stream

Enviro Urban Raspberry Pi Pico
{"readings": 
      {"pressure": 1002.28, 
      "pm2_5": 154, 
      "pm10": 160, 
      "noise": 1.51, 
      "humidity": 31.86, 
      "temperature": 25.95, 
      "pm1": 82}, 
"nickname": "flankurban", 
"timestamp": "2023-06-08 20:03:09"}

````
