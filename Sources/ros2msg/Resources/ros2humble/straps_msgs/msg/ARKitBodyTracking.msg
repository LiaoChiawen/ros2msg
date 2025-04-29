#straps_msgs

# Joint indices.
uint8 HIPS_JOINT=0
uint8 SPINE_1_JOINT=0
uint8 SPINE_2_JOINT=1
uint8 SPINE_3_JOINT=2
uint8 SPINE_4_JOINT=3
uint8 SPINE_5_JOINT=4
uint8 SPINE_6_JOINT=5
uint8 SPINE_7_JOINT=6

uint8 NECK_1_JOINT=7
uint8 NECK_2_JOINT=8
uint8 NECK_3_JOINT=9
uint8 NECK_4_JOINT=10
uint8 HEAD_JOINT=11
uint8 JAW_JOINT=12
uint8 CHIN_JOINT=13
uint8 NOSE_JOINT=14
uint8 RIGHT_EYE_JOINT=15
uint8 RIGHT_EYE_UPPER_LID_JOINT=16
uint8 RIGHT_EYE_LOWER_LID_JOINT=17
uint8 RIGHT_EYE_BALL_JOINT=18
uint8 LEFT_EYE_JOINT=19
uint8 LEFT_EYE_UPPER_LID_JOINT=20
uint8 LEFT_EYE_LOWER_LID_JOINT=21
uint8 LEFT_EYE_BALL_JOINT=22

uint8 RIGHT_SHOULDER_1_JOINT=23
uint8 RIGHT_ARM_JOINT=24
uint8 RIGHT_FOREARM_JOINT=25
uint8 LEFT_SHOULDER_1_JOINT=26
uint8 LEFT_ARM_JOINT=27
uint8 LEFT_FOREARM_JOINT=28

uint8 LEFT_UP_LEG_JOINT=29
uint8 LEFT_LEG_JOINT=30
uint8 LEFT_FOOT_JOINT=31
uint8 LEFT_TOES_JOINT=32
uint8 LEFT_TOES_END_JOINT=33
uint8 RIGHT_UP_LEG_JOINT=34
uint8 RIGHT_LEG_JOINT=35
uint8 RIGHT_FOOT_JOINT=36
uint8 RIGHT_TOES_JOINT=37
uint8 RIGHT_TOES_END_JOINT=38

uint8 RIGHT_HAND_JOINT=39
uint8 LEFT_HAND_JOINT=40

# Timestamp and the frame id of the detection.
# The frame id is the frame where the detection is made. Not the frame of the target.
std_msgs/Header header

# The camera pose. The raw arframe.camera.transform.
# The reference frame is the ARKit world frame.
geometry_msgs/Pose cam_pose

# The pose of the hip joint.
# The reference frame is the ARKit world frame.
# The hip joint is the root of the skeleton.
geometry_msgs/Pose hip_pose

# The poses of the body joints.
# This is the model transforms returned by ARKit.
# The reference frame is the hip frame.
# Current, only the 41 joints listed above are saved.
geometry_msgs/Pose[] poses
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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation.

Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x 0
float64 y 0
float64 z 0
float64 w 1


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z


================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x 0
float64 y 0
float64 z 0
float64 w 1


