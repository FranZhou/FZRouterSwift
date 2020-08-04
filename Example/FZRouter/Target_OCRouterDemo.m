//
//  Target_OCRouterDemo.m
//  FZRouter_Example
//
//  Created by FranZhou on 2020/8/4.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

#import "Target_OCRouterDemo.h"
#import <FZRouter/FZRouter-Swift.h>

@implementation Target_OCRouterDemo

+ (void)testOCRouterAction:(id<FZRouterDataPacketProtocol>)dataPacket{
    
    NSLog(@"testOCRouterAction parameters : %@", dataPacket.parameters);
    
    dataPacket.returnValue = @"Target_OCRouterDemo.testOCRouterAction";
}

+ (void)testOCRouterAction2:(id<FZRouterDataPacketProtocol>)dataPacket{
    
    NSLog(@"%@", dataPacket.parameters);
    
    dataPacket.returnValue = @(9527);
}

@end
