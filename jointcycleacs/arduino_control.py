import serial # pyserial library

import serial.tools.list_ports

# Find the Arduino port
arduino_ports = [
    p.device
    for p in serial.tools.list_ports.comports()
    if 'Arduino' in p.description
]

if not arduino_ports:
    print("No Arduino found. Make sure it's connected.")
    print("Available COM ports:")
    com_ports = [p.device for p in serial.tools.list_ports.comports()]
    for i, port in enumerate(com_ports):
        print(f"{i+1}. {port}")
    selection = input("Enter the number of the COM port you want to use: ")
    try:
        port = com_ports[int(selection) - 1]
    except (ValueError, IndexError):
        raise IOError("Invalid COM port selection.")
else:
    # Use the first Arduino port found
    port = arduino_ports[0]

# Define the baud rate
baud_rate = 9600  # Replace with the appropriate baud rate

# Create a serial object
ser = serial.Serial(port, baud_rate)

# Open the serial port
ser.open()

# Check if the serial port is open
if ser.is_open:
    print('Serial port is open.')

    # Read data from the Arduino
    while True:
        data = ser.readline().decode().strip()
        print('Received data:', data)

        # Write data to the Arduino
        ser.write(b'Hello from Python!\n')

# Close the serial port
ser.close()