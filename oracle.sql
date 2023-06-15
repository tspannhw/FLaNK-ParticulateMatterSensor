CREATE TABLE envirosensors 
(
uuid VARCHAR2(255), 
	systemtime VARCHAR2(255),  
	amplitude100 VARCHAR2(255), 
        amplitude500 VARCHAR2(255), 
	amplitude1000 VARCHAR2(255), 
	lownoise VARCHAR2(255), 
	midnoise VARCHAR2(255),
        highnoise VARCHAR2(255), 
	amps VARCHAR2(255), 
	ipaddress VARCHAR2(255), 
	host VARCHAR2(255), 
	host_name VARCHAR2(255),
        macaddress VARCHAR2(255), 
	endtime VARCHAR2(255), 
	runtime VARCHAR2(255), 
	starttime VARCHAR2(255), 
        cpu VARCHAR2(255), 
	cpu_temp VARCHAR2(255), 
	diskusage VARCHAR2(255), 
	memory VARCHAR2(255), 
	id VARCHAR2(255), 
	temperature VARCHAR2(255), 
	adjtemp VARCHAR2(255), 
	adjtempf VARCHAR2(255), 
	temperaturef VARCHAR2(255), 
	pressure VARCHAR2(255), 
	humidity VARCHAR2(255), 
	lux VARCHAR2(255), 
	proximity VARCHAR2(255), 
	oxidising VARCHAR2(255), 
	reducing VARCHAR2(255), 
	nh3 VARCHAR2(255), 
	gasko VARCHAR2(255),
  PRIMARY KEY(uuid));
  
/**


{"uuid": "air_uuid_bfb_20230608161015", "amplitude100": 1.0, "amplitude500": 0.3, "amplitude1000": 0.2, 
"lownoise": 0.4, "midnoise": 0.3, "highnoise": 0.4, "amps": 0.3, "ipaddress": "192.168.1.188", "host": "rp4", "host_name": "rp4", "macaddress": "a6:e0:87:04:1a:75", "systemtime": "2023-06-08T12:10:16.888872", "endtime": "1686240616.89", "runtime": "1749.07", "starttime": "06/08/2023 11:41:06", "cpu": 71.7, "cpu_temp": "58.9", "diskusage": "28620.2 MB", "memory": 11.2, "id": "20230608161015_472ca9f3-9240-415a-98d6-09d1715eaae9", "temperature": "38.0", "adjtemp": "29.1", "adjtempf": "64.4", "temperaturef": "80.4", "pressure": 1002.2, "humidity": 14.7, "lux": 92.1, "proximity": 0, "oxidising": 93.9, "reducing": 140.2, "nh3": 54.0, "gasKO": "Oxidising: 93878.35 Ohms\nReducing: 140178.34 Ohms\nNH3: 54000.00 Ohms", "pm25": 156, "pm1": 76, "pm10": 168, "pm1atmos": 50, "pm25atmos": 103, "pm10atmos": 111, "pmper1l03": 13566, "pmper1l05": 3896, "pmper1l1": 1145, "pmper1l25": 148, "pmper1l5": 16, "pmper1l10": 3}

