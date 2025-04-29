//
//  PoseWithCovariance.swift
//  mcap_test
//
//  Created by Yaoyu Hu on 12/4/23.
//

import ROS2MsgProtocol
import ROS2MsgMacros

//@ROS2MsgType("geometry_msgs", "PoseWithCovariance")
//public class ROS2PoseWithCovariance: ROS2Message {
//    public var pose: ROS2Pose
//    // https://stackoverflow.com/questions/24395105/how-to-create-a-fixed-size-array-of-objects
//    public var covariance: Array<Double>
//    
//    public init() {
//        self.pose = ROS2Pose()
//        self.covariance = Array<Double>(repeating: 0, count: 36)
//    }
//}

@ROS2MsgType("geometry_msgs", "PoseWithCovariance")
public class ROS2PoseWithCovariance: ROS2Message {
    public var pose: ROS2Pose
    // https://stackoverflow.com/questions/24395105/how-to-create-a-fixed-size-array-of-objects
    public var cov: Covariance36
    
    public init() {
        self.pose = ROS2Pose()
        self.cov = Covariance36()
    }
    
    public func covariance() -> Array<Float64> {
        return self.cov.asArray()
    }
}
