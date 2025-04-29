#straps_msgs

# See section 6.3 of ICD

builtin_interfaces/Time stamp

uint8 HEART_RATE=2
uint8 RESPIRATORY_RATE=3

int32 casualty_id
string system
uint8 type		# should be either HEART_RATE or RESPIRATORY_RATE
uint32 value		# integer value of the rate pertaining to the vitals type

# After talking to John Keller, we decided to use timestamp only for our internal messages.
uint32 time_ago		# the elapsed time in seconds since the submitted vitals were assessed. must be positive

float32 confidence
