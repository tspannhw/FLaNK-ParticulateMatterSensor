# FLaNK-ParticulateMatterSensor

Clean air, up in smoke. https://shop.pimoroni.com/products/pms5003-particulate-matter-sensor-with-cable?variant=29075640352851


#### Flink SQL


````


select systemtime, adjtempf, humidity, gasKO, pm25, pm1, pm10, pm1atmos, pm25atmos, pm10atmos, oxidising, nh3
from `sr1`.`default_database`.`particles`

````


### Hardware

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
