#straps_msgs

# See section 6.4 of ICD
uint8 ALERTNESS_OCULAR=1
uint8 ALERTNESS_VERBAL=2
uint8 ALERTNESS_MOTOR=3


uint8 OCULAR_OPEN=1
uint8 OCULAR_CLOSED=2
uint8 OCULAR_NOT_TESTABLE=3

uint8 ALERTNESS_NORMAL=4
uint8 ALERTNESS_ABNORMAL=5
uint8 ALERTNESS_ABSENT=6
uint8 ALERTNESS_NOT_TESTABLE=7

builtin_interfaces/Time stamp

int32 casualty_id
string system
uint8 type	# should be ALERTNESS_OCULAR, ALERTNESS_VERBAL, ALERTNESS_MOTOR
uint8 value	# should be set according to the following rules:
# if type is ALERTNESS_OCULAR
#   value should be OCULAR_OPEN, OCULAR_CLOSED or OCULAR_NOT_TESTABLE
# if type is ALERTNESS_VERBAL or ALERTNESS_MOTOR
#   value should be ALERTNESS_NORMAL, ALERTNESS_ABNORMAL, ALERTNESS_ABSENT or ALERTNESS_NOT_TESTABLE

float32 confidence
