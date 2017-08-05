//
//  Pet.swift
//  JesseHuang-Lab2
//
//  Created by Jesse Huang on 2/4/17.
//  Copyright © 2017 Jesse Huang. All rights reserved.
//

import Foundation
import UIKit

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
    var color:UIColor?
    var imageName:String?
    var image:UIImage?
    
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
            color = UIColor.green
            imageName = "bird.png"
            image = #imageLiteral(resourceName: "bird.png")
        case .bunny:
            color = UIColor.yellow
            imageName = "bunny@2x.png"
            image = #imageLiteral(resourceName: "bunny.png")
        case .cat:
            color = UIColor.blue
            imageName = "pet_images/cat@2x.png"
            image = #imageLiteral(resourceName: "cat.png")
        case .dog:
            color = UIColor.red
            imageName = "pet_images/dog@2x.png"
            image = #imageLiteral(resourceName: "dog.png")
        case .fish:
            color = UIColor.cyan
            imageName = "pet_images/fish@2x.png"
            image = #imageLiteral(resourceName: "fish.png")
        }
    }
    
}
