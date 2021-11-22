//
//  runTypesViewController.swift
//  BSP Run Four Seasons
//
//  Created by Gustavo Koglin on 14/11/2021.
//

import UIKit

class runTypesViewController: UIViewController {
    
//    Declaring a new array to store the run type
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
//    function to add a string to the array of the next viewController by geting the ID of the segue
//    that is linked with the button pressed with the run type selected by the user
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "speedSegue"{
            let destinationController = segue.destination as! climateViewController
            destinationController.runType.append("speed")
        }
        else if segue.identifier == "longSegue"{
            let destinationController = segue.destination as! climateViewController
            destinationController.runType.append("long")
        }
        else if segue.identifier == "recoverySegue"{
            let destinationController = segue.destination as! climateViewController
            destinationController.runType.append("recovery")
        }
    }
}
