//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 9/15/24.
//

import ROS2MsgProtocol
import ROS2MsgMacros

public enum NavSatFixCovarianceValue: UInt8 {
    case COVARIANCE_TYPE_UNKNOWN        = 0
    case COVARIANCE_TYPE_APPROXIMATED   = 1
    case COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
    case COVARIANCE_TYPE_KNOWN          = 3
}

@ROS2MsgType("sensor_msgs", "NavSatFix")
public class ROS2NavSatFix: ROS2Message {
    
    public var header: ROS2Header
    public var status: ROS2NavSatStatus
    public var latitude: Float64
    public var longitude: Float64
    public var altitude: Float64
    public var position_covariance: Float64_9
    public var position_covariance_type: UInt8
    
    public init() {
        self.header = ROS2Header()
        self.status = ROS2NavSatStatus()
        self.latitude = 0.0
        self.longitude = 0.0
        self.altitude = 0.0
        self.position_covariance = Float64_9()
        self.position_covariance_type = NavSatFixCovarianceValue.COVARIANCE_TYPE_UNKNOWN.rawValue
    }
}

