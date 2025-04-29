//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 12/30/23.
//

import Foundation
import OSLog

fileprivate let logger = Logger(subsystem: "STRAPS-ros2msg", category: "ROS2MsgUtils")

public func getMsgDescriptorURL(of descriptorFn: String, withExtension ext: String = "idl") -> URL? {
    guard let url = Bundle.module.url(forResource: descriptorFn, withExtension: ext) else {
        logger.error("Cannot find URL with \(descriptorFn) and extension \(ext). ")
        return nil
    }
    return url
}

// Read binary content from a URL.
public func readBinaryAtURL(of fileURL: URL) async -> Data? {
    
    var fh: FileHandle
    
    do {
        fh = try FileHandle(forReadingFrom: fileURL)
    } catch {
        logger.error("Unable to open \(fileURL) for reading. ")
        return nil
    }
    
    var data: Data? = nil
    
    do {
        if let dataByte = try fh.readToEnd() {
            data = dataByte
        }
    } catch {
        logger.error("Cannot read to the end of \(fileURL). ")
        return nil
    }
    
    return data
}

public func readStringAtURL(of fileURL: URL) async -> Data? {
    
    var fh: FileHandle
    
    do {
        fh = try FileHandle(forReadingFrom: fileURL)
    } catch {
        logger.error("Unable to open \(fileURL) for reading. ")
        return nil
    }
    
    var data: Data? = nil
    
    do {
        if let dataByte = try fh.readToEnd() {
            data = dataByte
        }
    } catch {
        logger.error("Cannot read to the end of \(fileURL). ")
        return nil
    }
    
    return data
}
