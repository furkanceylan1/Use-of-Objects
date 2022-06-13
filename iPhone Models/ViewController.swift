//
//  ViewController.swift
//  iPhone Models
//
//  Created by Furkan Ceylan on 12.06.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    let tableView = UITableView()
    let iPhone1st = models(modelName: "iPhone (1st gen)", screen: 3.5, relased: "2007-06-29", discontinued: "2008-07-15", capacities: [4,8], processor: "APL0098", img: UIImage(named: "iphone1st")!)
    let iPhone2 = models(modelName: "iPhone 3G", screen: 3.5, relased: "2008-07-11", discontinued: "2010-06-07", capacities: [8,16], processor: "APL0098", img: UIImage(named: "iphone3g")!)
    let iPhone3 = models(modelName: "iPhone 3GS", screen: 3.5, relased: "2009-06-19", discontinued: "2010-06-24", capacities: [8,16,32], processor: "APL0278", img: UIImage(named: "iphone3gs")!)
    let iPhone4 = models(modelName: "iPhone 4", screen: 3.5, relased: "2010-06-24", discontinued: "2011-10-04", capacities: [8,16,32], processor: "Apple A4", img: UIImage(named: "iphone4")!)
    let iPhone4s = models(modelName: "iPhone 4s", screen: 3.5, relased: "2011-10-14", discontinued: "2014-09-09", capacities: [8,16,32,64], processor: "Apple A5", img: UIImage(named: "iphone4s")!)
    let iPhone5 = models(modelName: "iPhone 5", screen: 4, relased: "2012-09-21", discontinued: "2013-09-10", capacities: [16,32,64], processor: "Apple A6", img: UIImage(named: "iphone5")!)
    
    var imodels : models?
    
    var modelsArray : [models] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.title = "iPhone Models"
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        modelsArray = [iPhone1st,iPhone2,iPhone3,iPhone4,iPhone4s,iPhone5]
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        view.addSubview(tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = modelsArray[indexPath.row].modelName
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVc"{
            let destinationVC = segue.destination as! secondViewController
            destinationVC.imodels = self.imodels
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        imodels = modelsArray[indexPath.row]
        performSegue(withIdentifier: "toSecondVc", sender: nil)
    }
}

