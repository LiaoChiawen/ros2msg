//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 9/15/24.
//

import ROS2MsgProtocol
import ROS2MsgMacros

public enum SatStatusValue: Int8 {
    case STATUS_NO_FIX   = -1
    case STATUS_FIX      =  0
    case STATUS_SBAS_FIX =  1
    case STATUS_GBAS_FIX =  2
    
    public var value: Int8 {
        switch self {
        case .STATUS_NO_FIX:
            return -1
        case .STATUS_FIX:
            return 0
        case .STATUS_SBAS_FIX:
            return 1
        case .STATUS_GBAS_FIX:
            return 2
        }
    }
}

public enum SatServiceValue: UInt16 {
    case SERVICE_GPS     = 1
    case SERVICE_GLONASS = 2
    case SERVICE_COMPASS = 4
    case SERVICE_GALILEO = 8
    
    public var value: UInt16 {
        switch self {
        case .SERVICE_GPS:
            return 1
        case .SERVICE_GLONASS:
            return 2
        case .SERVICE_COMPASS:
            return 3
        case .SERVICE_GALILEO:
            return 4
        }
    }
}

@ROS2MsgType("sensor_msgs", "NavSatStatus")
public class ROS2NavSatStatus: ROS2Message {
    
    public var status: Int8
    public var service: UInt16
    
    public init() {
        self.status = SatStatusValue.STATUS_NO_FIX.value
        self.service = SatServiceValue.SERVICE_GPS.value
    }
}
