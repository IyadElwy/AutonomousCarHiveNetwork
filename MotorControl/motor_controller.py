import RPi.GPIO as GPIO
from time import sleep


GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)

class MotorDriver:
    def __init__(self, Ena, In1, In2):
        self.Ena = Ena
        self.In1 = In1
        self.In2 = In2
        
        GPIO.setup(self.Ena, GPIO.OUT)
        GPIO.setup(self.In1, GPIO.OUT)
        GPIO.setup(self.In2, GPIO.OUT)
        
        self.pwm = GPIO.PWM(self.Ena, 100)
        self.pwm.start(0)
    
    
    def forward(self, speed=50, slp=2):
        GPIO.output(self.In1, GPIO.LOW)
        GPIO.output(self.In2, GPIO.HIGH)
        self.pwm.ChangeDutyCycle(speed)
        sleep(slp)
        
    def backward(self, speed=50, slp=2 ):
        GPIO.output(self.In1, GPIO.HIGH)
        GPIO.output(self.In2, GPIO.LOW)
        self.pwm.ChangeDutyCycle(speed)
        sleep(slp)
        
    def stop(self, slp=2 ):
        GPIO.output(self.In1, GPIO.LOW)
        GPIO.output(self.In2, GPIO.LOW)
        self.pwm.ChangeDutyCycle(0)
        sleep(slp)


        



# f_b_motor = MotorDriver(25, 23, 24)
# l_r_motor = MotorDriver(21, 20, 16)
# 
# 
# while True:
#     f_b_motor.forward(slp=0, speed=100)
#     l_r_motor.forward(100)
    
#     l_r_motor.stop()
#     f_b_motor.stop()