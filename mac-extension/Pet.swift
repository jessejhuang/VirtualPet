//
//  Pet.swift
//  JesseHuang-Lab5
//
//  Created by Jesse Huang on 3/29/17.
//  Copyright © 2017 Jesse Huang. All rights reserved.
//

import Foundation
import AppKit
class Pet{
    enum Species{
        case bird
        case dog
        case cat
        case bunny
        case fish
    }
    //Data
    private (set) var happiness:Int
    private (set) var fullness:Int
    private (set) var fed:Int
    var species:Species
    var color:NSColor?
    var imageName:String?
    var image:NSImage?
    
    //Behavior
    func feed() {
        fullness += 1
        fed += 1
        if(fullness>10){
            fullness=10
        }
        
    }
    
    func play() {
        if(fullness > 0){
            happiness += 1
            fullness -= 1
            
            
        }
        
    }
    
    
    init(species:Species){
        self.species = species
        self.happiness = 0
        self.fullness = 3
        self.fed = 0
        switch species{
        case .bird:
            color = NSColor.green
            
            imageName = "bird.png"
            image = NSImage(named: "Bird")
        case .bunny:
            color = NSColor.yellow
            imageName = "bunny@2x.png"
            image = NSImage(named: "Bunny")
        case .cat:
            color = NSColor.blue
            imageName = "pet_images/cat@2x.png"
            image = NSImage(named: "Cat")
        case .dog:
            color = NSColor.red
            imageName = "pet_images/dog@2x.png"
            image = NSImage(named: "Dog")
        case .fish:
            color = NSColor.cyan
            imageName = "pet_images/fish@2x.png"
            image = NSImage(named: "Fish")
        }
    }
    
}
