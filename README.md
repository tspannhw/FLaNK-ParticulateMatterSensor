# FLaNK-ParticulateMatterSensor

Clean air, up in smoke. https://shop.pimoroni.com/products/pms5003-particulate-matter-sensor-with-cable?variant=29075640352851


#### Flink SQL


````


select systemtime, adjtempf, humidity, gasKO, pm25, pm1, pm10, pm1atmos, pm25atmos, pm10atmos, oxidising, nh3
from `sr1`.`default_database`.`particles`

````
