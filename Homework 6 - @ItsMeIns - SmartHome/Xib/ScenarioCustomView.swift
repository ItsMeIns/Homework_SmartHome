//
//  ScenarioCustomView.swift
//  Homework 6 - @ItsMeIns - SmartHome
//
//  Created by macbook on 11.12.2022.
//

import Foundation
import UIKit


protocol ScenarioCustomViewDelegate {
    func menuElementPressed (_ sender: ScenarioCustomView)
}



class ScenarioCustomView: PersonView {
    
    @IBOutlet var imegeView: UIImageView!
    @IBOutlet var labelText: UILabel!
    
    func configure(whth text: String, image: UIImage) {
        self.imegeView.image = image
        self.labelText.text = text
    }
    
    var delegate: ScenarioCustomViewDelegate?
    
    
    @IBAction func scenarioButtonPressed(_ sender: Any) {
        delegate?.menuElementPressed(self)
    }
    
    
    
}
