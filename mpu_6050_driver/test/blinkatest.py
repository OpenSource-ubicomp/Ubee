import board
import busio
 
print("Hello blinka!")
 
# Try to create an I2C device
i2c = busio.I2C(board.SCL, board.SDA)
print("I2C 1 ok!")
 
print("done!")