//
//  DevicesCustomView.swift
//  Homework 6 - @ItsMeIns - SmartHome
//
//  Created by macbook on 11.12.2022.
//

import Foundation
import UIKit

protocol DevicesCustomViewDelegate {
    func menuElementPressed (_ sender: DevicesCustomView)
}




class DevicesCustomView: PersonView {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var labelText: UILabel!
    @IBOutlet var button: UIButton!
    
    
    func configure(whth text: String, image: UIImage) {
        self.imageView.image = image
        self.labelText.text = text
    }
    
    var delegate: DevicesCustomViewDelegate?
    
    var buttonCounter = 1
    @IBAction func devicesButtonPressed(_ sender: Any) {
        delegate?.menuElementPressed(self)
        
        buttonCounter += 1
        
        switch buttonCounter {
        case 1:
            button.setTitle("On", for: .normal)
            
        case 2:
            button.setTitle("Off", for: .normal)
            buttonCounter = 0
        default: break
        }
            
        }
    }
    

