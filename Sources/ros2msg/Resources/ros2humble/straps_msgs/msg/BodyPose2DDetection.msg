#straps_msgs

# 2D Boday pose detection results.
std_msgs/Header header # frame_id should be the same as the input image.
builtin_interfaces/Time input_image_timestamp # The timestamp of the input image.

straps_msgs/BodyPose2DBBox bbox
straps_msgs/BodyPose2DPose[] poses # There will be 17 keypoints in pose.
                                   # The keypoint indices and names are defined in the
                                   # BodyPose2DKeypointNname message.

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
MSG: straps_msgs/BodyPose2DBBox
#straps_msgs

# 2D BBox for body pose detection.

# BBox uses dimensionless coordinates.
# The value range is [0, 1].
float32 left
float32 top
float32 right
float32 bottom

# The detection score.
float32 score

================================================================================
MSG: straps_msgs/BodyPose2DPose
#straps_msgs

# The 2D bodypose inside an image.

# x and y will be dimensionless with a range of [0, 1]
float32 x
float32 y

# The score of the detection.
float32 score

