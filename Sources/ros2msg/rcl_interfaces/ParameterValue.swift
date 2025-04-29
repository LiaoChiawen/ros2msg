//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/20/24.
//

import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("rcl_interfaces", "ParameterValue")
public class ROS2ParameterValue: ROS2Message {
    public var type: UInt8
    public var bool_value: Bool
    public var integer_value: UInt64
    public var double_value: Float64
    public var string_value: String
    public var byte_array_value: Array<UInt8>
    public var bool_array_value: Array<Bool>
    public var integer_array_value: Array<UInt64>
    public var double_array_value: Array<Float64>
    public var string_array_value: Array<String>
    
    public init() {
        self.type = ROS2ParameterType.PARAMETER_NOT_SET.value
        self.bool_value = false
        self.integer_value = 0
        self.double_value = 0.0
        self.string_value = ""
        self.byte_array_value = Array<UInt8>()
        self.bool_array_value = Array<Bool>()
        self.integer_array_value = Array<UInt64>()
        self.double_array_value = Array<Float64>()
        self.string_array_value = Array<String>()
    }
}
