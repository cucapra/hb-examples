import timeit
import subprocess
import csv
import time as ti

noop_time = 0.103

def call(s):
    # subprocess.call(s.split())
    subprocess.call(s.split(), stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

def timeDestination(d):

    call("make clean")

    make_str = "make run DESTINATION_ID=" + str(d)
    call(make_str) # don't account for initial build time


    start = timeit.default_timer()
    call(make_str)
    end = timeit.default_timer()
    time = end - start

    print("Adjusted time to core %s: "%(d) + str(time - 0.103)) #elapsed time in seconds

    return time


with open("time_data", 'w') as f:
    headers = ["destination", "total time", "adjusted time", "adjusted time / communication"]
    writer = csv.DictWriter(f, fieldnames=headers)
    writer.writeheader()

    for d in range(1, 16):
        time = timeDestination(d)
        adjusted_time = time - noop_time
        writer.writerow({
                "destination" : d, 
                "total time" : time,
                "adjusted time" : adjusted_time,
                "adjusted time / communication" : (adjusted_time / 20000), 
                })
        
