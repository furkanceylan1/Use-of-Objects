//
//  Models.swift
//  iPhone Models
//
//  Created by Furkan Ceylan on 12.06.2022.
//

import Foundation
import UIKit


class models {
    var modelName : String = ""
    private let operatingSystem = "IOS"
    var screen : Double = 0
    var released : String = ""
    var discontinued : String = ""
    var capacities : [Int] = []
    var processor : String = ""
    var img : UIImage = UIImage()
    
    init(modelName : String, screen : Double, relased : String, discontinued : String, capacities : [Int], processor : String, img : UIImage) {
        self.modelName = modelName
        self.screen = screen
        self.released = relased
        self.discontinued = discontinued
        self.capacities = capacities
        self.processor = processor
        self.img = img
    }
    
    func os() -> String{
        return operatingSystem
    }
    
}



