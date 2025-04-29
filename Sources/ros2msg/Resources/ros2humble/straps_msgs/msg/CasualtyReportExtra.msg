#straps_msgs

# Additional casualty report information to DARPA.

# Enum definitions for the casualty report.
# Group trauma status.
uint8 TRAUMA_NORMAL = 0 # Called NORMAL in the swift version.
uint8 WOUND = 1
uint8 AMPUTATION = 2

# Group alertness status.
uint8 NT = 0
uint8 OPEN = 1
uint8 CLOSED = 2
uint8 ALERTNESS_NORMAL = 3 # Called NORMAL in the swift version.
uint8 ABNORMAL = 4
uint8 ABSENT = 5

# Actual data fields of what we submit to DARPA.
# April Tag identification code.
uint16 casualty_identification_number

uint8 head
uint8 torso
uint8 upper_extremities
uint8 lower_extremities

uint8 eye_lids
uint8 verbal
uint8 motor

