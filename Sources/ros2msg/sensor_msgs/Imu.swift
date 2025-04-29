//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 6/22/24.
//

import ROS2MsgProtocol
import ROS2MsgMacros

fileprivate let INVALID_VALUE_INDICATOR: Float64 = -1.0

@ROS2MsgType("sensor_msgs", "Imu")
public class ROS2Imu: ROS2Message {
    
    public var header: ROS2Header
    
    public var orientation: ROS2Quaternion
    public var orientation_covariance: Float64_9
    
    public var angular_velocity: ROS2Vector3
    public var angular_velocity_covariance: Float64_9
    
    public var linear_acceleration: ROS2Vector3
    public var linear_acceleration_covariance: Float64_9
    
    public init() {
        self.header = ROS2Header()
        
        self.orientation = ROS2Quaternion()
        self.orientation_covariance = Float64_9()
        
        // This defined by ROS. If the first element of the covariance
        // matrix is the INVALID_VALUE_INDICATOR, then the corresponding
        // estimation is invalid.
        self.orientation_covariance.d00 = INVALID_VALUE_INDICATOR
        
        self.angular_velocity = ROS2Vector3()
        self.angular_velocity_covariance = Float64_9()
        self.angular_velocity_covariance.d00 = INVALID_VALUE_INDICATOR
        
        self.linear_acceleration = ROS2Vector3()
        self.linear_acceleration_covariance = Float64_9()
        self.linear_acceleration_covariance.d00 = INVALID_VALUE_INDICATOR
    }
}
