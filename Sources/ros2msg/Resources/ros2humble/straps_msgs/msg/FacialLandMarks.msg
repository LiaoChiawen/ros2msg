#straps_msgs

# Timestamp and the frame id of the detection.
std_msgs/Header header

#Array of precision scores per point
float32[] precision_scores

#Array of points for the eye
geometry_msgs/Point[] points

#type
string type

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data
# in a particular coordinate frame.

# Two-integer timestamp that is expressed as seconds and nanoseconds.
builtin_interfaces/Time stamp

# Transform frame with which this data is associated.
string frame_id


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z


