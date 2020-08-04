//
//  Target_RouterDemo.swift
//  FZRouterSwift_Example
//
//  Created by FranZhou on 2020/8/4.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import FZRouterSwift

@objc(Target_RouterDemo)
class Target_RouterDemo: NSObject {

    @objc class func testRouterAction(_ dataPacket: FZRouterDataPacketProtocol) {

        if let params = dataPacket.parameters {
            print("testRouterAction parameters : \(params.description)")
        }

        dataPacket.returnValue = "Target_RouterDemo.testRouterAction"

    }

    @objc class func urlRouter(_ dataPacket: FZRouterDataPacketProtocol) {
        if let params = dataPacket.parameters {
            print("urlRouter parameters : \(params.description)")
        }

        dataPacket.returnValue = "Target_RouterDemo.urlRouter"

    }

}
