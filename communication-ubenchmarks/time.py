import timeit
import subprocess
import csv
import time as ti

noop_time = 0.103
num_runs = 3

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


with open("time_data.csv", 'w') as f:
    headers = [
        "destination", 
        "manhattan distance",
        "total time", 
        "adjusted time", 
        "adjusted time / communication"
    ]
    writer = csv.DictWriter(f, fieldnames=headers)
    writer.writeheader()

    for d in range(1, 16):
        time = sum([timeDestination(d) for i in range(num_runs)])/num_runs
        x = d % 4
        y = int(d / 4)
        manhattan_dist = x + y
        adjusted_time = time - noop_time
        writer.writerow({
                "destination" : d, 
                "manhattan distance" : manhattan_dist,
                "total time" : time,
                "adjusted time" : adjusted_time,
                "adjusted time / communication" : (adjusted_time / 20000), 
                })
        
