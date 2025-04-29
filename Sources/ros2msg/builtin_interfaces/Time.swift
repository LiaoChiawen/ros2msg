//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 12/10/23.
//

import Foundation
import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("builtin_interfaces", "Time")
public class ROS2Time: ROS2Message {
    public var sec: Int32
    public var nanosec: UInt32
    
    public init() {
        self.sec = 0
        self.nanosec = 0
    }
    
    public init(from nsec: UInt64) {
        self.sec = 0
        self.nanosec = 0
        self.setByNanosec(from: nsec)
    }
    
    public func setByNanosec(from nsec: UInt64) {
        self.sec = Int32( nsec / 1_000_000_000 )
        self.nanosec = UInt32( nsec % 1_000_000_000 )
    }
    
    public func setBySwiftDate(from date: Date) {
        let secondsInDouble = date.timeIntervalSince1970
        self.sec = Int32(secondsInDouble.rounded(.towardZero))
        self.nanosec = UInt32( secondsInDouble.truncatingRemainder(dividingBy: 1) * 1_000_000_000 )
    }
}
