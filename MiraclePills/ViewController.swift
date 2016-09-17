//
//  ViewController.swift
//  MiraclePills
//
//  Created by Upendar Gareri on 14/09/16.
//  Copyright © 2016 Upendar Gareri. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var stateButton: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryText: UITextField!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var zipCodeText: UITextField!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var successImage: UIImageView!
    
    let states = ["Andhra Pradesh", "New Delhi", "Meghalaya", "Karnataka", "Madhya Pradesh", "Gujarat"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryText.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeText.isHidden = true
        buyNowButton.isHidden = true
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
        stateButton.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryText.isHidden = false
        zipCodeLabel.isHidden = false
        zipCodeText.isHidden = false
        buyNowButton.isHidden = false
    }

    @IBAction func buyNowButtonPressed(_ sender: AnyObject) {
        for id in self.view.subviews {
            id.isHidden = true
        }
        successImage.isHidden = false
        
    }
}

