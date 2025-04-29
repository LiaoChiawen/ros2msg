//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/20/24.
//
import Foundation // Need by Data.
import ROS2MsgProtocol
import ROS2MsgMacros

public enum ROS2CompressedImageFormat: String {
    case jpeg = "jpeg"
    case png = "png"
    case tiff = "tiff"
    
    public var value: String {
        switch self {
        case .jpeg:
            return "jpeg"
        case .png:
            return "png"
        case .tiff:
            return "tiff"
        }
    }
}

@ROS2MsgType("sensor_msgs", "CompressedImage")
public class ROS2CompressedImage: ROS2Message {
    public var header: ROS2Header
    public var format: String
    public var data: Data
    
    public init() {
        self.header = ROS2Header()
        self.format = ROS2CompressedImageFormat.jpeg.value
        self.data = Data()
    }
}
