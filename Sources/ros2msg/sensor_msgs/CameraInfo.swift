//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/20/24.
//

import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("sensor_msgs", "CameraInfo")
public class ROS2CameraInfo: ROS2Message {
    public var header: ROS2Header
    public var height: UInt32
    public var width: UInt32
    public var distortion_model: String
    public var d: Array<Float64>
    public var k: Float64_9
    public var r: Float64_9
    public var p: Float64_12
    public var binning_x: UInt32
    public var binning_y: UInt32
    public var roi: ROS2RegionOfInterest
    
    public init() {
        self.header = ROS2Header()
        self.height = 0
        self.width = 0
        self.distortion_model = "plumb_bob"
        self.d = Array<Float64>(repeating: 0.0, count: 5)
        self.k = Float64_9()
        self.r = Float64_9()
        self.p = Float64_12()
        self.binning_x = 0
        self.binning_y = 0
        self.roi = ROS2RegionOfInterest()
        
        self.r.d00 = 1.0
        self.r.d04 = 1.0
        self.r.d08 = 1.0
    }
}
