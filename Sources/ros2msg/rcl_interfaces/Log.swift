//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/20/24.
//

import ROS2MsgProtocol
import ROS2MsgMacros

enum ROS2LogLevel: UInt8 {
    case DEBUG = 10
    case INFO  = 20
    case WARN  = 30
    case ERROR = 40
    case FATAL = 50
    
    var value: UInt8 {
        switch self {
        case .DEBUG:
            return 10
        case .INFO:
            return 20
        case .WARN:
            return 30
        case .ERROR:
            return 40
        case .FATAL:
            return 50
        }
    }
}

@ROS2MsgType("rcl_interfaces", "Log")
public class ROS2Log: ROS2Message {
    public var stamp: ROS2Time
    public var level: UInt8
    public var name: String
    public var msg: String
    public var file: String
    public var function: String
    public var line: UInt32
    
    public init() {
        self.stamp = ROS2Time()
        self.level = ROS2LogLevel.INFO.value
        self.name = ""
        self.msg = ""
        self.file = ""
        self.function = ""
        self.line = 0
    }
}
