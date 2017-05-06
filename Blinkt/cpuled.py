import os
import time
from blinkt import set_pixel, show, set_brightness, clear

#Get CPU Temp in Celcius
def getCPUtemp():
    res = os.popen('vcgencmd measure_temp').readline()
    return(res.replace("temp=","").replace("'C\n",""))
CPU_temp = int(float(getCPUtemp()))
set_brightness(0.1)

while True:
 if CPU_temp < 10:
  set_pixel(0,0,255,0)
  show()
 if CPU_temp > 10 and CPU_temp < 20:
  set_pixel(0,0,255,0)
  set_pixel(1,0,255,0)
  show()
 if CPU_temp > 20 and CPU_temp < 30:
  set_pixel(0,0,255,0)
  set_pixel(1,0,255,0)
  set_pixel(2,0,255,0)
  show()
 if CPU_temp > 30 and CPU_temp < 40:
  set_pixel(0,0,255,0)
  set_pixel(1,0,255,0)
  set_pixel(2,0,255,0)
  set_pixel(3,0,255,0)
  show()
 if CPU_temp > 40 and CPU_temp < 50:
  set_pixel(0,0,255,0)
  set_pixel(1,0,255,0)
  set_pixel(2,0,255,0)
  set_pixel(3,0,255,0)
  set_pixel(4,255,102,0)
  show()
 if CPU_temp > 50 and CPU_temp < 60:
  set_pixel(0,0,255,0)
  set_pixel(1,0,255,0)
  set_pixel(2,0,255,0)
  set_pixel(3,0,255,0)
  set_pixel(4,255,102,0)
  set_pixel(5,255,102,0)
  show()
 if CPU_temp > 60 and CPU_temp < 70:
  set_pixel(0,0,255,0)
  set_pixel(1,0,255,0)
  set_pixel(2,0,255,0)
  set_pixel(3,0,255,0)
  set_pixel(4,255,102,0)
  set_pixel(5,255,102,0)
  set_pixel(6,255,0,0)
  show()
 if CPU_temp > 70:
  set_pixel(0,0,255,0)
  set_pixel(1,0,255,0)
  set_pixel(2,0,255,0)
  set_pixel(3,0,255,0)
  set_pixel(4,255,102,0)
  set_pixel(5,255,102,0)
  set_pixel(6,255,0,0)
  set_pixel(7,255,0,0)
  show()
