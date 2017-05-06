import os

#Get CPU Temp in Celcius
def getCPUtemp():
    res = os.popen('vcgencmd measure_temp').readline()
    return(res.replace("temp=","").replace("'C\n",""))
CPU_temp = int(float(getCPUtemp()))

print(CPU_temp)
