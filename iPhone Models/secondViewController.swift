//
//  secondViewController.swift
//  iPhone Models
//
//  Created by Furkan Ceylan on 12.06.2022.
//

import UIKit

class secondViewController: UIViewController {
    
    let property = UILabel()
    let image = UIImageView()
    var imodels : models?

    override func viewDidLoad() {
        super.viewDidLoad()
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        image.frame = CGRect(x: width * 0.5 - (width * 0.7 / 2), y: height * 0.3 - (height * 0.38 / 2), width: width * 0.7, height: height * 0.38)
        image.image = imodels?.img
        view.addSubview(image)
        
        property.textAlignment = .center
        property.numberOfLines = 10
        property.frame = CGRect(x: width * 0.5 - (width * 0.8 / 2), y: height * 0.2 + (height * 0.4 / 2) , width: width * 0.8, height: height * 0.4)
        property.text = "\(imodels!.modelName)\n\nScreen Size : \(imodels!.screen)\nReleased : \(imodels!.released)\nDiscontinued : \(imodels!.discontinued)\nCapacities : \(imodels!.capacities) GB\nProcessor : \(imodels!.processor)\nOS : \(imodels!.os())"
        
        view.addSubview(property)
        
    }
    

}
