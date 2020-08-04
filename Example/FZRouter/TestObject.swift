//
//  TestObject.swift
//  FZRouter_Example
//
//  Created by FranZhou on 2020/8/4.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

public class TestObject {

    var a: String

    var b: String

    var c: String

    init(a: String) {
        self.a = a
        self.b = "unknown b"
        self.c = "unknown c"
    }

    init(a: String, b: String = "default b", c: String = "default c") {
        self.a = a
        self.b = b
        self.c = c
    }
}
