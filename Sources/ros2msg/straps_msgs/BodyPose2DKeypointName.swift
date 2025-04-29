//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/31/24.
//

import Foundation

public enum ROS2BodyPose2DKeypointName: UInt8 {
    case NOSE = 0
    case LEFT_EYE = 1
    case RIGHT_EYE = 2
    case LEFT_EAR = 3
    case RIGHT_EAR = 4
    case LEFT_SHOULDER = 5
    case RIGHT_SHOULDER = 6
    case LEFT_ELBOW = 7
    case RIGHT_ELBOW = 8
    case LEFT_WRIST = 9
    case RIGHT_WRIST = 10
    case LEFT_HIP = 11
    case RIGHT_HIP = 12
    case LEFT_KNEE = 13
    case RIGHT_KNEE = 14
    case LEFT_ANKLE = 15
    case RIGHT_ANKLE = 16
    
    public var value: String {
        switch self {
        case .NOSE:
            return "nose"
        case .LEFT_EYE:
            return "left_eye"
        case .RIGHT_EYE:
            return "right_eye"
        case .LEFT_EAR:
            return "left_ear"
        case .RIGHT_EAR:
            return "right_ear"
        case .LEFT_SHOULDER:
            return "left_shoulder"
        case .RIGHT_SHOULDER:
            return "right_shoulder"
        case .LEFT_ELBOW:
            return "left_elbow"
        case .RIGHT_ELBOW:
            return "right_elbow"
        case .LEFT_WRIST:
            return "left_wrist"
        case .RIGHT_WRIST:
            return "right_wrist"
        case .LEFT_HIP:
            return "left_hip"
        case .RIGHT_HIP:
            return "right_hip"
        case .LEFT_KNEE:
            return "left_knee"
        case .RIGHT_KNEE:
            return "right_knee"
        case .LEFT_ANKLE:
            return "right_ankle"
        case .RIGHT_ANKLE:
            return "right_ankel"
        }
    }
}

