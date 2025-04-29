//
//  TwistWithCovariance.swift
//  mcap_test
//
//  Created by Yaoyu Hu on 12/4/23.
//

import ROS2MsgProtocol
import ROS2MsgMacros

//@ROS2MsgType("geometry_msgs", "TwistWithCovariance")
//public class ROS2TwistWithCovariance: ROS2Message {
//    public var twist: ROS2Twist
//    public var covariance: Array<Double>
//    
//    public init() {
//        self.twist = ROS2Twist()
//        self.covariance = Array<Double>(repeating: 0, count: 36)
//    }
//}

@ROS2MsgType("geometry_msgs", "TwistWithCovariance")
public class ROS2TwistWithCovariance: ROS2Message {
    public var twist: ROS2Twist
    public var cov: Covariance36
    
    public init() {
        self.twist = ROS2Twist()
        self.cov = Covariance36()
    }
    
    public func covariance() -> Array<Float64> {
        return self.cov.asArray()
    }
}
