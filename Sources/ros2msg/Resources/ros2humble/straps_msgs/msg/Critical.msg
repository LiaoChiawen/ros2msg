#straps_msgs

# See section 6.2 of ICD

builtin_interfaces/Time stamp

uint8 SEVERE_HEMORRHAGE=0
uint8 RESPIRATORY_DISTRESS=1

uint8 ABSENT=0
uint8 PRESENT=1

int32 casualty_id
string system
uint8 type    # should be either SEVERE_HEMORRHAGE or RESPIRATORY_DISTRESS
uint8 value   # should be either ABSENT or PRESENT

float32 confidence
