//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 6/5/24.
//

import Foundation
import ROS2MsgProtocol
import ROS2MsgMacros

public enum ARKIT_BODY_JOINT: UInt8, CaseIterable {
    case HIPS_JOINT=0
//    case SPINE_1_JOINT=0 // Not allowed by Swift.
    case SPINE_2_JOINT=1
    case SPINE_3_JOINT=2
    case SPINE_4_JOINT=3
    case SPINE_5_JOINT=4
    case SPINE_6_JOINT=5
    case SPINE_7_JOINT=6
    case NECK_1_JOINT=7
    case NECK_2_JOINT=8
    case NECK_3_JOINT=9
    case NECK_4_JOINT=10
    case HEAD_JOINT=11
    case JAW_JOINT=12
    case CHIN_JOINT=13
    case NOSE_JOINT=14
    case RIGHT_EYE_JOINT=15
    case RIGHT_EYE_UPPER_LID_JOINT=16
    case RIGHT_EYE_LOWER_LID_JOINT=17
    case RIGHT_EYE_BALL_JOINT=18
    case LEFT_EYE_JOINT=19
    case LEFT_EYE_UPPER_LID_JOINT=20
    case LEFT_EYE_LOWER_LID_JOINT=21
    case LEFT_EYE_BALL_JOINT=22
    case RIGHT_SHOULDER_1_JOINT=23
    case RIGHT_ARM_JOINT=24
    case RIGHT_FOREARM_JOINT=25
    case LEFT_SHOULDER_1_JOINT=26
    case LEFT_ARM_JOINT=27
    case LEFT_FOREARM_JOINT=28
    case LEFT_UP_LEG_JOINT=29
    case LEFT_LEG_JOINT=30
    case LEFT_FOOT_JOINT=31
    case LEFT_TOES_JOINT=32
    case LEFT_TOES_END_JOINT=33
    case RIGHT_UP_LEG_JOINT=34
    case RIGHT_LEG_JOINT=35
    case RIGHT_FOOT_JOINT=36
    case RIGHT_TOES_JOINT=37
    case RIGHT_TOES_END_JOINT=38
    case RIGHT_HAND_JOINT=39
    case LEFT_HAND_JOINT=40
    
    public var name: String {
        switch self {
        case .HIPS_JOINT:
            return "hips_joint"
        case .SPINE_2_JOINT:
            return "spine_2_joint"
        case .SPINE_3_JOINT:
            return "spine_3_joint"
        case .SPINE_4_JOINT:
            return "spine_4_joint"
        case .SPINE_5_JOINT:
            return "spine_5_joint"
        case .SPINE_6_JOINT:
            return "spine_6_joint"
        case .SPINE_7_JOINT:
            return "spine_7_joint"
        case .NECK_1_JOINT:
            return "neck_1_joint"
        case .NECK_2_JOINT:
            return "neck_2_joint"
        case .NECK_3_JOINT:
            return "neck_3_joint"
        case .NECK_4_JOINT:
            return "neck_4_joint"
        case .HEAD_JOINT:
            return "head_joint"
        case .JAW_JOINT:
            return "jaw_joint"
        case .CHIN_JOINT:
            return "chin_joint"
        case .NOSE_JOINT:
            return "nose_joint"
        case .RIGHT_EYE_JOINT:
            return "right_eye_joint"
        case .RIGHT_EYE_UPPER_LID_JOINT:
            return "right_eyeUpperLid_joint"
        case .RIGHT_EYE_LOWER_LID_JOINT:
            return "right_eyeLowerLid_joint"
        case .RIGHT_EYE_BALL_JOINT:
            return "right_eyeball_joint"
        case .LEFT_EYE_JOINT:
            return "left_eye_joint"
        case .LEFT_EYE_UPPER_LID_JOINT:
            return "left_eyeUpperLid_joint"
        case .LEFT_EYE_LOWER_LID_JOINT:
            return "left_eyeLowerLid_joint"
        case .LEFT_EYE_BALL_JOINT:
            return "left_eyeball_joint"
        case .RIGHT_SHOULDER_1_JOINT:
            return "right_shoulder_1_joint"
        case .RIGHT_ARM_JOINT:
            return "right_arm_joint"
        case .RIGHT_FOREARM_JOINT:
            return "right_forearm_joint"
        case .LEFT_SHOULDER_1_JOINT:
            return "left_shoulder_1_joint"
        case .LEFT_ARM_JOINT:
            return "left_arm_joint"
        case .LEFT_FOREARM_JOINT:
            return "left_forearm_joint"
        case .LEFT_UP_LEG_JOINT:
            return "left_upLeg_joint"
        case .LEFT_LEG_JOINT:
            return "left_leg_joint"
        case .LEFT_FOOT_JOINT:
            return "left_foot_joint"
        case .LEFT_TOES_JOINT:
            return "left_toes_joint"
        case .LEFT_TOES_END_JOINT:
            return "left_toesEnd_joint"
        case .RIGHT_UP_LEG_JOINT:
            return "right_upLeg_joint"
        case .RIGHT_LEG_JOINT:
            return "right_leg_joint"
        case .RIGHT_FOOT_JOINT:
            return "right_foot_joint"
        case .RIGHT_TOES_JOINT:
            return "right_toes_joint"
        case .RIGHT_TOES_END_JOINT:
            return "right_toesEnd_joint"
        case .RIGHT_HAND_JOINT:
            return "right_hand_joint"
        case .LEFT_HAND_JOINT:
            return "left_hand_joint"
        }
    }
}

//Parsed Binary data frames from radar
@ROS2MsgType("straps_msgs", "ARKitBodyTracking")
public class ROS2ARKitBodyTracking: ROS2Message {
    public var header: ROS2Header
    
    public var cam_pose: ROS2Pose
    public var hip_pose: ROS2Pose
    public var poses: Array<ROS2Pose>
    
    public init () {
        self.header = ROS2Header()
        self.cam_pose = ROS2Pose()
        self.hip_pose = ROS2Pose()
        self.poses = Array<ROS2Pose>()
    }
}
