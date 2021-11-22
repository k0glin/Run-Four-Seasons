//
//  climateViewController.swift
//  BSP Run Four Seasons
//
//  Created by Gustavo Koglin on 14/11/2021.
//
import UIKit

class climateViewController: UIViewController, UITextFieldDelegate {
    
//    Variable for the text field to recive the input of the temprature
    @IBOutlet weak var temperatureField: UITextField!
    
    
//    Array to store cloths for displaying at the final screen
    var resultArray: [String] = []
//    Arry to store the run type from the previous viewController
    var runType: [String] = []
    
//    Declaration of each variable of the climate statistics
    var wind = 0
    var sky = 0
    var rain = 0
    var time = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        temperatureField.delegate = self
    }
//    function to only allow the user to input numbers and the sings in the temperature text field
//    by creating a set with the allow characters and making it a super set of the typed characters
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let allowedCharacters = "-+1234567890."
        let allowedCharacterSets = CharacterSet(charactersIn: allowedCharacters)
        let typedCharactersSet = CharacterSet(charactersIn: string)
        
        return allowedCharacterSets.isSuperset(of: typedCharactersSet)
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
        var tempValue = Double(temperatureField.text!)
        
//        functio to check which type of run the runType array contains and depending of the type it will
//        add 2, subtract 2 or maintain value of tempValue
        func runTemperatureModify(){
            if runType.contains("speed"){
                return tempValue = tempValue! + 2
            }
            else if runType.contains("long"){
                return tempValue = tempValue!
            }
            else if runType.contains("recovery"){
                return tempValue = tempValue! - 2
            }
        }
    
        
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
                if(tempValue! < 4){
                    return resultArray.append("Jacket")
                }
            }
            else if (wind == 1){
                if(tempValue! < 6){
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
                if(tempValue! < 6){
                    return resultArray.append("Long Sleeve Shirt")
                }
            }
            else if (wind == 1){
                if(tempValue! < 12){
                    return resultArray.append("Long Sleeve Shirt")
                }
            }
            else if (wind == 2){
                if(tempValue! < 15){
                    return resultArray.append("Long Sleeve Shirt")
                }
            }
        }
        
//        when the user do not enter any value in the temperature it will print a message to the result text label
        if temperatureField.text == "" {
            resultArray.append("Please enter the temperature value")
        }
//        when the user enter a valid temperature it will activate all the clothes functions
        else if (tempValue! < 41 && tempValue! > -26){
            runTemperatureModify()
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
//        when the temperature is not valid it will print a message to the result text label warning that it is not valid temperature
        else{
            resultArray.append("Please enter a valid temperature.")
        }
    }
    
//    Function to when the user clicks outside of the keyboard when writing in the textfield the keyboard disappear
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

