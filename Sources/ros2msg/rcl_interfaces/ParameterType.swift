//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/20/24.
//

enum ROS2ParameterType: UInt8 {
    case PARAMETER_NOT_SET       = 0
    case PARAMETER_BOOL          = 1
    case PARAMETER_INTEGER       = 2
    case PARAMETER_DOUBLE        = 3
    case PARAMETER_STRING        = 4
    case PARAMETER_BYTE_ARRAY    = 5
    case PARAMETER_BOOL_ARRAY    = 6
    case PARAMETER_INTEGER_ARRAY = 7
    case PARAMETER_DOUBLE_ARRAY  = 8
    case PARAMETER_STRING_ARRAY  = 9
    
    var value: UInt8 {
        switch self {
        case .PARAMETER_NOT_SET:
            return 0
        case .PARAMETER_BOOL:
            return 1
        case .PARAMETER_INTEGER:
            return 2
        case .PARAMETER_DOUBLE:
            return 3
        case .PARAMETER_STRING:
            return 4
        case .PARAMETER_BYTE_ARRAY:
            return 5
        case .PARAMETER_BOOL_ARRAY:
            return 6
        case .PARAMETER_INTEGER_ARRAY:
            return 7
        case .PARAMETER_DOUBLE_ARRAY:
            return 8
        case .PARAMETER_STRING_ARRAY:
            return 9
        }
    }
}
