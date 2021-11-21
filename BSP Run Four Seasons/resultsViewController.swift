//
//  resultsViewController.swift
//  BSP Run Four Seasons
//
//  Created by Gustavo Koglin on 14/11/2021.
//

import UIKit

class resultsViewController: UIViewController {

//    declaring the variable the text lable to present the results
    @IBOutlet weak var resultLable: UILabel!
    
//    variable of the type string
    var resultLableText = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        converting resultLable text into a string so it can accept the priting methot of the previous screen
        resultLable.text = resultLableText
        
        }
        
    }


