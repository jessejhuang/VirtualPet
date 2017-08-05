//
//  main.swift
//  PetApp
//
//  Created by Jesse Huang on 3/29/17.
//  Copyright © 2017 Jesse Huang. All rights reserved.
//

import Foundation

//Source: http://stackoverflow.com/questions/26971240/how-do-i-run-an-terminal-command-in-a-swift-script-e-g-xcodebuild
@discardableResult
func shell(_ args: String...) -> Int32 {
    let task = Process()
    task.launchPath = "/usr/bin/env"
    task.arguments = args
    task.launch()
    task.waitUntilExit()
    return task.terminationStatus
}
shell("open", "-a", "mac-extension")
//shell("xcodebuild", "-workspace", "myApp.xcworkspace")

