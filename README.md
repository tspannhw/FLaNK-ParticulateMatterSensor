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
