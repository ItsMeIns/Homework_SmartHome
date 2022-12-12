//
//  ViewController.swift
//  Homework 6 - @ItsMeIns - SmartHome
//
//  Created by macbook on 10.12.2022.
//

import UIKit
import Lottie

class ViewController: UIViewController, ScenarioCustomViewDelegate, RoomsCustomViewDelegate, DevicesCustomViewDelegate {
    
    
    func menuElementPressed(_ sender: ScenarioCustomView) {
        switch sender {
        case scenarioOne: print("Ранок Menu Item Pressed!")
        case scenarioTwo: print("Сон Menu Item Pressed!")
        case scenarioThree: print("Світло Menu Item Pressed!")
        case scenarioFour: print("Кіно Menu Item Pressed!")
        default: break
        }
    }
    
    func menuElementPressed(_ sender: RoomsCustomView) {
        switch sender {
        case roomsOne: print("Кухня Menu Item Pressed!")
        case roomsTwo: print("Ванна Menu Item Pressed!")
        case roomsThree: print("Дітяча Menu Item Pressed!")
        case roomsFour: print("Зала Menu Item Pressed!")
        default: break
        }
    }
    
    func menuElementPressed(_ sender: DevicesCustomView) {
        switch sender {
        case devicesOne: print("Світло Menu Item Pressed!")
        case devicesTwo: print("Двері Menu Item Pressed!")
        default: break
        }
    }
    

    
    @IBOutlet var animationLamp: LottieAnimationView!
    
    
    @IBOutlet var scenarioOne: ScenarioCustomView!
    @IBOutlet var scenarioTwo: ScenarioCustomView!
    @IBOutlet var scenarioThree: ScenarioCustomView!
    @IBOutlet var scenarioFour: ScenarioCustomView!
    
    
    @IBOutlet var roomsOne: RoomsCustomView!
    @IBOutlet var roomsTwo: RoomsCustomView!
    @IBOutlet var roomsThree: RoomsCustomView!
    @IBOutlet var roomsFour: RoomsCustomView!
    
    
    @IBOutlet var devicesOne: DevicesCustomView!
    @IBOutlet var devicesTwo: DevicesCustomView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationLamp.layer.cornerRadius = 20
        animationLamp.loopMode = .loop
        animationLamp.contentMode = .scaleAspectFill
        animationLamp.animationSpeed = 1
        animationLamp.play()
        
        scenarioOne.configure(whth: "Ранок", image: UIImage(named: "sunrise")!)
        scenarioTwo.configure(whth: "Сон", image: UIImage(named: "moon")!)
        scenarioThree.configure(whth: "Світло", image: UIImage(named: "led-lamp")!)
        scenarioFour.configure(whth: "Кіно", image: UIImage(named: "television")!)
        
        roomsOne.configure(whth: "Кухня")
        roomsTwo.configure(whth: "Ванна")
        roomsThree.configure(whth: "Дітяча")
        roomsFour.configure(whth: "Зала")
        
        devicesOne.configure(whth: "Світло", image: UIImage(named: "idea")!)
        devicesTwo.configure(whth: "Двері", image: UIImage(named: "smart-door")!)
        
        scenarioOne.delegate = self
        scenarioTwo.delegate = self
        scenarioThree.delegate = self
        scenarioFour.delegate = self
        
        roomsOne.delegate = self
        roomsTwo.delegate = self
        roomsThree.delegate = self
        roomsFour.delegate = self
        
        devicesOne.delegate = self
        devicesTwo.delegate = self
    }


    
    
    
    
}

