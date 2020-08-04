//
//  ViewController.swift
//  FZRouter
//
//  Created by FranZhou on 08/03/2020.
//  Copyright (c) 2020 FranZhou. All rights reserved.
//

import UIKit
import FZRouter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // a = "123" b = "unknown b" c = "unknown c"
        let obj = TestObject(a: "123")
        print(obj)

        print("======================")

        if let filePath = Bundle.main.path(forResource: "FZRouterDemo", ofType: "plist") {
            FZRouter.defaultRouter.loadRouter(withFilePath: filePath)
        }

        if let res1 = try? FZRouter.defaultRouter.router(withRouterURL: "fran://www.franzhou.com/routerTest/router_action?name=zhoufan") {
            print("\(String(describing: res1.parameters)) -> \(String(describing: res1.returnValue))")
        }

        if let res2 = try? FZRouter.defaultRouter.router(withRouterURL: "fran://www.franzhou.com/routerTest/oc_router_action", extraParameters: ["name": "FranZhou", "age": 29]) {
            print("\(String(describing: res2.parameters)) -> \(String(describing: res2.returnValue))")
        }

        if let res3 = try? FZRouter.defaultRouter.router(withRouterURL: "fran://www.franzhou.com/routerTest/oc_router_action_2") {
            print("\(String(describing: res3.parameters)) -> \(String(describing: res3.returnValue))")
        }

        FZRouter.defaultRouter.appendRouter(withRouterURL: "fran://www.franzhou.com/routerDemo/urlRouter")

        if let res4 = try? FZRouter.defaultRouter.router(withRouterURL: "fran://www.franzhou.com/routerDemo/urlRouter", extraParameters: ["name": "FranZhou", "age": 30]) {
            print("\(String(describing: res4.parameters)) -> \(String(describing: res4.returnValue))")
        }

        FZRouter.defaultRouter.updateOrSave(withRouterURL: "fran://www.franzhou.com/routerDemo/urlRouter") { (dataPacket) in
            dataPacket.returnValue = { () -> Void in
                print("I am happy")
            }
        }
        if let res5 = try? FZRouter.defaultRouter.router(withRouterURL: "fran://www.franzhou.com/routerDemo/urlRouter") {
            print("\(String(describing: res5.parameters)) -> \(String(describing: res5.returnValue))")

            if let returnValue = res5.returnValue as? () -> Void {
                returnValue()
            }
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
