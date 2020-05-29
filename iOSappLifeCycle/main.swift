//
//  main.swift
//  iOSappLifeCycle
//
//  Created by Miguel on 29/05/2020.
//  Copyright © 2020 Miguel Gallego Martín. All rights reserved.
//

import UIKit

UIApplicationMain(
    CommandLine.argc,
    CommandLine.unsafeArgv,
    NSStringFromClass(CustomApplication.self),
    NSStringFromClass(AppDelegate.self)
)

// Deprecated:
//UIApplicationMain(CommandLine.argc,
//                  UnsafeMutableRawPointer(CommandLine.unsafeArgv).bindMemory(to: UnsafeMutablePointer.self,
//                                                                             capacity: Int(CommandLine.argc)),
//                  nil,
//                  "\(AppDelegate.self)")

