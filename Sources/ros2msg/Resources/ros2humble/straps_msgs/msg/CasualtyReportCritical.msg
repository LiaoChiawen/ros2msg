#straps_msgs

# Critical casualty report to DARPA

# Enum definitions for the casualty report
uint8 PRESENT = 1
uint8 ABSENT = 0

# Actual data fields of what we submit to DARPA
# April Tag identification code
uint16 casualty_identification_number

uint8 severe_hemorrhage
uint8 respiratory_distress

float32 heart_rate
float32 respiratory_rate

