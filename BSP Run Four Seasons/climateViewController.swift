//
//  climateViewController.swift
//  BSP Run Four Seasons
//
//  Created by Gustavo Koglin on 14/11/2021.
//
import UIKit

class climateViewController: UIViewController {
    
//    Variable for the text field to recive the imput of the temprature
    @IBOutlet weak var temperatureField: UITextField!
    
//    Array to store cloths for displaying at the final screen
    var resultArray: [String] = []
    
//    Declaration of each variable of the climate statistics
    var wind = 0
    var sky = 0
    var rain = 0
    var time = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


//    Function to check when the segment changes the selected option and assing a different value for the wind variable
    @IBAction func windSegmentChanges(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
//            no wind
            wind = 0
        case 1:
//            windy
            wind = 1
            break
        case 2:
//            high winds
            wind = 2
            break
        default:
            break
        }
    }
    
//    Function to check when the segment changes the selected option and assing a different value for the sky variable
    @IBAction func skySegmentChanges(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
//            clear skies
            sky = 0
            break
        case 1:
//            overcast
            sky = 1
            break
        default:
            break
        }
    }
    
//   Function to check when the segment changes the selected option and assing a different value for the rain variable
    @IBAction func rainSegmentChanges(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
//            no rain
            rain = 0
            break
        case 1:
//            rain
            rain = 1
            break
        case 2:
//            snow
            rain = 2
            break
        default:
            break
        }
    }
    
//    Function to check when the segment changes the selected option and assing a different value for the time variable
    @IBAction func timeSelectorChanges(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
//            daytime
            time = 0
            break
        case 1:
//            nighttime
            time = 1
            break
        default:
            break
        }
    }
    
//   Function that activates when the user hits the calculate button
    @IBAction func calculateBtn(_ sender: Any) {
        
//        converting the value from the temperature field from text to a double
        let tempValue = Double(temperatureField.text!)
        
//        function to check if it should append "Sunglasses" to the resultArray
        func sunGlasses(){
            if  (time == 0){
                return resultArray.append("Sunglasses")
            }
        }
        
//       function to check if it should append "Cap" to the resultArray
        func cap(){
            if (sky == 0){
                if  (time == 0){
                    if (wind == 2){
                        if (tempValue! > 4){
                            return resultArray.append("Cap")
                        }
                    }
                    else if (wind == 1){
                        if (tempValue! > 2){
                            return resultArray.append("Cap")
                        }
                    }
                    else if (wind == 0){
                        if (tempValue! > -1){
                            return resultArray.append("Cap")
                        }
                    }
                }
            }
        }
        
//       function to check if it should append "Beanie" to the resultArray
        func beanie(){
            if (wind == 2){
                if  (tempValue! < 5){
                    return resultArray.append("Beanie")
                }
            }
            else if (wind == 1){
                if (tempValue! < 3){
                    return resultArray.append("Beanie")
                }
            }
            else if (wind == 0){
                if (tempValue! < 0){
                    return resultArray.append("Beanie")
                }
            }
        }
        
//       function to check if it should append "Gloves" to the resultArray
        func gloves(){
            if (tempValue! < 6){
                return resultArray.append("Gloves")
            }
        }
        
//       function to check if it should append "Shorts" to the resultArray
        func shorts(){
            if (wind == 0){
                if(tempValue! > 5){
                    return resultArray.append("Shorts")
                }
            }
            else if (wind == 1){
                if(tempValue! > 8){
                    return resultArray.append("Shorts")
                }
            }
            else if (wind == 2){
                if(tempValue! > 10){
                    return resultArray.append("Shorts")
                }
            }
        }
        
//       function to check if it should append "Pants" to the resultArray
        func pants(){
            if (wind == 0){
                if(tempValue! < 6){
                    return resultArray.append("Pants")
                }
            }
            else if (wind == 1){
                if(tempValue! < 9){
                    return resultArray.append("Pants")
                }
            }
            else if (wind == 2){
                if(tempValue! < 11){
                    return resultArray.append("Pants")
                }
            }
        }
        
//       function to check if it should append "Jacket" to the resultArray
        func jacket(){
            if (wind == 0){
                if(tempValue! < 5){
                    return resultArray.append("Jacket")
                }
            }
            else if (wind == 1){
                if(tempValue! < 7){
                    return resultArray.append("Jacket")
                }
            }
            else if (wind == 2){
                if(tempValue! < 9){
                    return resultArray.append("Jacket")
                }
            }
        }
        
//       function to check if it should append "T-Shirt" to the resultArray
        func tShirt(){
            if (wind == 0){
                if(tempValue! > 5){
                    return resultArray.append("T-Shirt")
                }
            }
            else if (wind == 1){
                if(tempValue! > 11){
                    return resultArray.append("T-Shirt")
                }
            }
            else if (wind == 2){
                if(tempValue! > 14){
                    return resultArray.append("T-Shirt")
                }
            }
        }
        
//       function to check if it should append "Long Sleeve Shirt" to the resultArray
        func longSleeveShirt(){
            if (wind == 0){
                if(tempValue! < 5){
                    return resultArray.append("Long Sleeve Shirt")
                }
            }
            else if (wind == 1){
                if(tempValue! < 11){
                    return resultArray.append("Long Sleeve Shirt")
                }
            }
            else if (wind == 2){
                if(tempValue! < 14){
                    return resultArray.append("Long Sleeve Shirt")
                }
            }
        }
            
//        activating all the cloths functions from above
        sunGlasses()
        cap()
        beanie()
        gloves()
        shorts()
        pants()
        jacket()
        tShirt()
        longSleeveShirt()
    }
    
//    Function to when the user clicks outside of the keyboard when writing in the textfield the keyboard disapear
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        temperatureField.resignFirstResponder()
    }
    
//   function to be able to print the resultArray in the resultLableText from the destination
//    of the resultSegue view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultSegue"{
            let destinationController = segue.destination as! resultsViewController
            destinationController.resultLableText = resultArray.joined(separator: ", ")
        }
    }
}

