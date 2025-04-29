//
//  Odometry.swift
//  mcap_test
//
//  Created by Yaoyu Hu on 12/4/23.
//

import ROS2MsgProtocol
import ROS2MsgMacros

//public final class ROS2DescOdometry: ROS2MessageDescriptionBase {
//    public required init(){
//        super.init(messageName: "nav_msgs/msg/Odometry",
//                   descriptionFile: "ros2humble/nav_msgs/msg/Odometry")
//    }
//}

//public class ROS2Odometry: Codable, HaveROS2MessageDescription {
//public class ROS2Odometry: ROS2Message {

@ROS2MsgType("nav_msgs", "Odometry")
public class ROS2Odometry: ROS2Message {
//    public typealias DescriptionType = ROS2DescOdometry
    
    public var header: ROS2Header
    public var child_frame_id: String
    public var pose: ROS2PoseWithCovariance
    public var twist: ROS2TwistWithCovariance
    
    public init() {
        self.header = ROS2Header()
        self.child_frame_id = "UNDEFINED_CHILD_FRAME"
        self.pose = ROS2PoseWithCovariance()
        self.twist = ROS2TwistWithCovariance()
    }
}
