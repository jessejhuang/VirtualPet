//
//  ViewController.swift
//  JesseHuang-Lab2
//
//  Created by Jesse Huang on 2/4/17.
//  Copyright © 2017 Jesse Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var happinessBar: DisplayView!
    @IBOutlet weak var hungerbar: DisplayView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var background: UIView!
    @IBOutlet weak var foodNumber: UILabel!
    @IBOutlet weak var happyNumber: UILabel!
    
    
    var pet:Pet! {
        didSet {
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
        // Do any additional setup after loading the view, typically from a nib.
        pet = bird
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
  
    @IBAction func pressPlay(_ sender: Any) {
        pet.play()
        updateView()
        
    }

    @IBAction func pressFeed(_ sender: Any) {
        pet.feed()
        updateView()
        imageView.shake()
        
    }
    private func updateView() {
        
      //  theLabel.text = String(currentPresident.approvalRating)
        let foodViewValue = Double(pet.fullness)/10.0
        let happyViewValue = Double(pet.happiness)/10.0
        guard let color = pet.color else {
            return
        }
        happinessBar.color=color
        hungerbar.color=color
        happyNumber.text = String(pet.happiness)
        foodNumber.text = String(pet.fed)
        hungerbar.animateValue(to: CGFloat(foodViewValue))
        happinessBar.animateValue(to: CGFloat(happyViewValue))
    }
    private func updateNoAnimate(){
        let foodViewValue = Double(pet.fullness)/10.0
        let happyViewValue = Double(pet.happiness)/10.0
        guard let color = pet.color else {
            return
        }
        happinessBar.color=color
        hungerbar.color=color
        happyNumber.text = String(pet.happiness)
        foodNumber.text = String(pet.fed)
        guard let safeImage = pet.image else{
            return
        }
        imageView.image = safeImage
        background.backgroundColor = pet.color
        hungerbar.jumpValue(to: CGFloat(foodViewValue))
        happinessBar.jumpValue(to: CGFloat(happyViewValue))
        
    }
    
    @IBAction func birdSwitch(_ sender: Any) {
        pet = bird
    }
    @IBAction func bunnySwitch(_ sender: Any) {
        pet = bunny
    }
    
    @IBAction func catSwitch(_ sender: Any) {
        pet = cat
    }
    @IBAction func dogSwitch(_ sender: Any) {
        pet = dog
    }
    @IBAction func fishSwitch(_ sender: Any) {
        pet = fish
    }
    
    
}

