#straps_msgs

# These constants are for the arrh_distress field.
uint8 ABSENT=0
uint8 PRESENT=1

# Seconds since the epoch, January 1, 1970. This is local time considering the time zone.
float64 timestamp

# DARPA needs the heart rate to be an integer. This algorithm outputs a float.
float32 resp_rate

# Equivalent Boolean Value to show whether or not there is RespRateDistress
# arrh is for "Arrhythmic".
uint8 arrh_distress

# A value from 0 to 1. 1 means better confidence.
# Use only one confidence score at the moment. Not used actually.
float32 confidence_score

# TODO: This may not have any use.
uint8 data_type
# int32 casualty_id
# Removing this because we want this association to happen in smart_module

