//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 5/16/24.
//

import Foundation

import ROS2MsgProtocol
import ROS2MsgMacros

public enum RegularViewStatusType: UInt32 {
    case IN_THIS_VIEW      = 1 // 0x01
    case TRACKING_DISABLED = 2 // 0x02
    case TRACKING_HIP      = 4 // 0x04
    case TRACKING_NOSE     = 8 // 0x08
    
    public var value: UInt32 {
        switch self {
        case .IN_THIS_VIEW:
            return 1
        case .TRACKING_DISABLED:
            return 2
        case .TRACKING_HIP:
            return 4
        case .TRACKING_NOSE:
            return 8
        }
    }
}

//Vitals message
@ROS2MsgType("straps_msgs", "IphoneRegularViewStatus")
public class ROS2IphoneRegularViewStatus: ROS2Message {
    
    public var flags: UInt32
    
    public init () {
        self.flags = 0 // 0x00
    }
}

