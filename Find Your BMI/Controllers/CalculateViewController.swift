//
//  ViewController.swift
//  Find Your BMI
//
//  Created by Nadya Post on 6/4/20.
//

import UIKit

class CalculateViewController: UIViewController {
    var bmiValue = String()
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
   
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightDidChange(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightDidChange(_ sender: UISlider) {
         weightLabel.text = "\(String(format: "%.0f", sender.value))Kg"
    }
    @IBAction func calculateDidPress(_ sender: UIButton) {
        let weight = weightSlider.value
        let height = heightSlider.value
        let bmi = weight / pow(height, 2)
        bmiValue =  String(format: "%.1f", bmi)

        self.performSegue(withIdentifier: "toResultScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultScreen" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.bmiValue = bmiValue
            
        }
    }
}

