// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public protocol ROS2MessageDescription {
    var messageName: String { get }
    var descriptionFile: String { get }
    
    init()
}

open class ROS2MessageDescriptionBase: ROS2MessageDescription {
    public let messageName: String
    public let descriptionFile: String
    
    required public init() {
        self.messageName = "DefaultMessageName"
        self.descriptionFile = "DefaultDescriptionFile"
    }
    
    public init( messageName: String, descriptionFile: String ) {
        self.messageName = messageName
        self.descriptionFile = descriptionFile
    }
}

public protocol HaveROS2MessageDescription {
    associatedtype DescriptionType: ROS2MessageDescription
}

public typealias ROS2Message = Codable & HaveROS2MessageDescription

public protocol HaveIndex {
    var index: Int32 { get set }
}

public typealias ROS2Cmd = ROS2Message & HaveIndex
