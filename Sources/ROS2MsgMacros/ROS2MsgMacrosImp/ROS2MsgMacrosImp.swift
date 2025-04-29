//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 12/30/23.
//

import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public enum ROS2MsgMacroError: Error {
    case wrongNumberOfArguments
    case unexpectedArguments
}

//public struct ROS2MsgTypeMacro: ExtensionMacro, MemberMacro {
public struct ROS2MsgTypeMacro: MemberMacro {
//    public static func expansion(of node: SwiftSyntax.AttributeSyntax,
//                                 attachedTo declaration: some SwiftSyntax.DeclGroupSyntax,
//                                 providingExtensionsOf type: some SwiftSyntax.TypeSyntaxProtocol,
//                                 conformingTo protocols: [SwiftSyntax.TypeSyntax],
//                                 in context: some SwiftSyntaxMacros.MacroExpansionContext
//    ) throws -> [SwiftSyntax.ExtensionDeclSyntax] {
//        
//        let extensionDecl = DeclSyntax("""
//        extension \(type.trimmed): ROS2Message { }
//        """).as(ExtensionDeclSyntax.self)!
//        
//        return [ extensionDecl ]
//    }
    
    public static func expansion(of node: SwiftSyntax.AttributeSyntax,
                                 providingMembersOf declaration: some SwiftSyntax.DeclGroupSyntax,
                                 in context: some SwiftSyntaxMacros.MacroExpansionContext
    ) throws -> [SwiftSyntax.DeclSyntax] {
        
        guard case .argumentList(let args) = node.arguments else {
            throw ROS2MsgMacroError.wrongNumberOfArguments
        }
        
        guard args.count == 2 else {
            throw ROS2MsgMacroError.wrongNumberOfArguments
        }
        
        guard
            let ros2folder = args.first?.expression.as(StringLiteralExprSyntax.self)?.representedLiteralValue,
            let ros2MessageName = args.last?.expression.as(StringLiteralExprSyntax.self)?.representedLiteralValue else {
            throw ROS2MsgMacroError.unexpectedArguments
        }
        
        return ["""
        public final class ROS2Desc\(raw: ros2MessageName): ROS2MessageDescriptionBase {
            public required init(){
                super.init(messageName: "\(raw: ros2folder)/msg/\(raw: ros2MessageName)",
                           descriptionFile: "ros2humble/\(raw: ros2folder)/msg/\(raw: ros2MessageName)")
            }
        }
        public typealias DescriptionType = ROS2Desc\(raw: ros2MessageName)
        """]
    }
}

@main
struct ROS2MsgMacrosPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        ROS2MsgTypeMacro.self,
    ]
}
