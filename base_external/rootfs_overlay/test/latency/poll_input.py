import RPi.GPIO as GPIO
import signal
import sys
import time
import subprocess


channel = 11

def signal_handler(sig, frame):
    GPIO.cleanup()
    sys.exit(0)

def poll_inputs(trigger):
    if GPIO.input(channel) == 0:
        trigger = True
    return trigger



if __name__ == '__main__':
    
    trig = False
    GPIO.setmode(GPIO.BOARD) 
    GPIO.setup(channel, GPIO.IN, pull_up_down=GPIO.PUD_UP)

    signal.signal(signal.SIGINT, signal_handler)

    while(1):
        trig = poll_inputs()
        if trig:
            print("event")
            time.sleep(1)
            trig = False

        time.sleep(0.05)



