//
//  ResultViewController.swift
//  Find Your BMI
//
//  Created by Nadya Post on 6/4/20.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var backgroundColor: UIColor?
    var advice: String?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = backgroundColor
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
