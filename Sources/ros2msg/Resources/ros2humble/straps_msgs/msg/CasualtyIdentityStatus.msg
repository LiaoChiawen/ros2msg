#straps_msgs

uint8 NOT_DETECTED=0
uint8 NOT_INSPECTED=1
uint8 INSPECTED=2

# The ID of the detected casualty (AprilTag ID).
int32 casualty_id

# This message is used by the "Smart Module".
# When there is not an AprilTag detected/received, the status is NOT_DETECTED.
# When the inspection is done, the status is INSPECTED.
# When it is inspecting, the status is NOT_INSPECTED.
uint8 status


