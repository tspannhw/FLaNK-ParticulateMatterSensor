# FLaNK-ParticulateMatterSensor

Clean air, up in smoke. https://shop.pimoroni.com/products/pms5003-particulate-matter-sensor-with-cable?variant=29075640352851

#### MiNiFi Agents

https://github.com/tspannhw/FLaNK-Edge

#### Flink SQL


````


select systemtime, adjtempf, humidity, gasKO, pm25, pm1, pm10, pm1atmos, pm25atmos, pm10atmos, oxidising, nh3
from `sr1`.`default_database`.`particles`

select systemtime,  max(pm25) as maxpm25, max(pm1) as maxpm1, max(pm10) as maxpm10, max(nh3) as maxnh3, 
                    min(pm25) as minpm25, min(pm1) as minpm1, min(pm10) as minpm10, min(nh3) as minnh3
from `sr1`.`default_database`.`particles`

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
