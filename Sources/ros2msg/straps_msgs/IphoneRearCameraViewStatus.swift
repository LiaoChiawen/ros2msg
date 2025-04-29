//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 5/16/24.
//

import Foundation

import ROS2MsgProtocol
import ROS2MsgMacros

public enum RearCameraViewStatusType: UInt32 {
    case IN_THIS_VIEW  = 1 // 0x01
    case FACE_DETECTED = 2 // 0x02
    case ZOOM_ADJUSTED = 4 // 0x04
    
    public var value: UInt32 {
        switch self {
        case .IN_THIS_VIEW:
            return 1
        case .FACE_DETECTED:
            return 2
        case .ZOOM_ADJUSTED:
            return 4
        }
    }
}

//Vitals message
@ROS2MsgType("straps_msgs", "IphoneRearCameraViewStatus")
public class ROS2IphoneRearCameraViewStatus: ROS2Message {
    
    public var flags: UInt32
    
    public init () {
        self.flags = 0 // 0x00
    }
}

