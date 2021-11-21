//
//  runTypesViewController.swift
//  BSP Run Four Seasons
//
//  Created by Gustavo Koglin on 14/11/2021.
//

import UIKit

class runTypesViewController: UIViewController {
    
//    Declaring a new array to store the run type
    var runTypeArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    //    Function that activates when the button is touched
    //    when activated adds "speed" to the runTypeArray
    @IBAction func speedBtn(_ sender: Any) {
        runTypeArray.append("speed")

    }
    //    Function that activates when the button is touched
    //    when activated adds "long" to the runTypeArray
    @IBAction func longBtn(_ sender: Any) {
        runTypeArray.append("long")
    }
//    Function that activates when the button is touched
//    when activated adds "recovery" to the runTypeArray
    @IBAction func recoveryBtn(_ sender: Any) {
        runTypeArray.append("recovery")
    }
}
