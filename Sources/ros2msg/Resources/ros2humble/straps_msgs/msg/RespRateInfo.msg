#straps_msgs

uint8 CPHYS=0
uint8 RADAR=1

# Seconds since the epoch, January 1, 1970. This is local time considering the time zone.
float64 timestamp

# DARPA needs the heart rate to be an integer. This algorithm outputs a float.
float32 resp_rate

# A value from 0 to 1. 1 means better confidence.
float32 confidence_score

uint8 data_type
# int32 casualty_id
# Removing this because we want this association to happen in smart_module

