#straps_msgs

# The timestamp of the original data from the sensor.
builtin_interfaces/Time stamp

# The ID of the casualty.
int32 casualty_id

# The device ID of the Garmin sensor. The sensor intrinsic ID.
# The device_id column of the CSV file.
uint32 device_id

# The count value from the sensor.
# Consecutive messages may have the same count value.
# The beat_count column of the CSV file.
uint8 beat_count

# The beat_time and previous_heart_beat_time column of the CSV file.
float32 beat_time
float32 previous_heart_beat_time

# The heart rate measurement from the sensor.
# The heart_rate column of the CSV file.
uint32 heart_rate

