//
//  RoomsCustomView.swift
//  Homework 6 - @ItsMeIns - SmartHome
//
//  Created by macbook on 11.12.2022.
//

import Foundation
import UIKit

protocol RoomsCustomViewDelegate {
    func menuElementPressed (_ sender: RoomsCustomView)
}



class RoomsCustomView: PersonView {
    
    
    @IBOutlet var labelText: UILabel!
    
    func configure(whth text: String) {
        self.labelText.text = text
    }
    
    var delegate: RoomsCustomViewDelegate?
    
    
    
    @IBAction func roomsButtonPressed(_ sender: Any) {
        delegate?.menuElementPressed(self)
    }
    
    
    
}
