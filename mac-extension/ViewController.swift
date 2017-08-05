//
//  ViewController.swift
//  mac-extension
//
//  Created by Jesse Huang on 3/28/17.
//  Copyright © 2017 Jesse Huang. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var imageView: NSImageCell!
    @IBOutlet weak var box: NSBox!
    @IBOutlet weak var hungerBar: DisplayView!
    @IBOutlet weak var happinessBar: DisplayView!
    @IBOutlet weak var foodNumber: NSTextField!
    @IBOutlet weak var happyNumber: NSTextField!
    
    var pet:Pet!{
        didSet{
            updateNoAnimate()
        }
    }
    let bird = Pet(species: .bird)
    let bunny = Pet(species: .bunny)
    let cat = Pet(species: .cat)
    let dog = Pet(species: .dog)
    let fish = Pet(species: .fish)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pet = cat
        box.layer?.backgroundColor = pet.color?.cgColor
        let foodViewValue = Double(pet.fullness)/10.0
        hungerBar.jumpValue(to: CGFloat(foodViewValue))
        updateNoAnimate()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressPlay(_ sender: NSButton) {
        pet.play()
        updateNoAnimate()
    }
    @IBAction func pressFeed(_ sender: NSButton) {
        pet.feed()
        updateNoAnimate()
    }
    
    private func updateNoAnimate(){
        let foodViewValue = Double(pet.fullness)/10.0
        let happyViewValue = Double(pet.happiness)/10.0
        guard let color = pet.color else {
            return
        }
        happinessBar.color=color
        hungerBar.color=color
        happyNumber.stringValue = String(pet.happiness)
        foodNumber.stringValue = String(pet.fed)
        guard let safeImage = pet.image else{
            return
        }
        imageView.image = safeImage
        box.layer?.backgroundColor = pet.color?.cgColor
        hungerBar.jumpValue(to: CGFloat(foodViewValue))
        happinessBar.jumpValue(to: CGFloat(happyViewValue))
    }

    
    @IBAction func fishPressed(_ sender: NSButtonCell) {
        pet = fish
    }

    @IBAction func dogPressed(_ sender: Any) {
        pet = dog
    }
    @IBAction func catPressed(_ sender: Any) {
        pet = cat
    }
    @IBAction func bunnyPressed(_ sender: Any) {
        pet = bunny
    }
    @IBAction func birdPressed(_ sender: Any) {
        pet = bird
    }
    
    
    
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

