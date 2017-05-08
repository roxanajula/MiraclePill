//
//  ViewController.swift
//  MiraclePill
//
//  Created by Roxana Jula on 08/05/2017.
//  Copyright © 2017 Roxana Jula. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewAccessibilityDelegate, UIPickerViewDataSource {
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipcodeLabel: UILabel!
    @IBOutlet weak var zipcodeTextField: UITextField!
    @IBOutlet weak var successImageView: UIImageView!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]

    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipcodeLabel.isHidden = true
        zipcodeTextField.isHidden = true
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        zipcodeLabel.isHidden = false
        zipcodeTextField.isHidden = false
    }
    
    @IBAction func buyNowButtonPressed(_ sender: Any) {
        for view in self.view.subviews as [UIView] {
            view.isHidden = true
        }
        successImageView.isHidden = false
        
    }
}

