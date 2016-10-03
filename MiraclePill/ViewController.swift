//
//  ViewController.swift
//  MiraclePill
//
//  Created by Rohan Thomas on 2016-09-20.
//  Copyright © 2016 Rohan Thomas. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {
    //the UIPickerViewDataSource gets the data for the picker view
    // the UIPickerViewDelegate tells what the present data is when someone is scrolling
    
    

    
    @IBOutlet weak var pillImg: UIImageView!
    @IBOutlet weak var pillLabel: UILabel!
    @IBOutlet weak var cost: UILabel!
    @IBOutlet weak var divider: UIView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var streetField: UITextField!
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityField: UITextField!
    
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var statePickerBtn: UIButton! // Links the button from the storyboard to the viewcontroller (Outlet)
    
    @IBOutlet weak var statePicker: UIPickerView! // Links the picker view slider from the storyboard to the viewcontroller (Outlet)
    
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryField: UITextField!
    
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipField: UITextField!
    
    @IBOutlet weak var buyBtn: UIButton!
    
    @IBOutlet weak var sucessImg: UIImageView!

    
    let states = ["Alabama", "Alaska","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self //1- for both lines the datasource is the data from this viewcontroller class
        statePicker.delegate = self //2- when the picker changes options, look to this code to get the present value
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false  //when we press the select button, un-hide the picker menu
        countryLabel.isHidden = true
        countryField.isHidden = true
        zipLabel.isHidden = true
        zipField.isHidden = true
    }

    @IBAction func buyBtnPressed(_ sender: AnyObject) {
        pillImg.isHidden = true
        pillLabel.isHidden = true
        cost.isHidden = true
        divider.isHidden=true
        nameField.isHidden = true
        nameLabel.isHidden = true
        streetField.isHidden = true
        streetLabel.isHidden = true
        cityField.isHidden = true
        cityLabel.isHidden = true
        stateLabel.isHidden = true
        statePickerBtn.isHidden = true
        statePicker.isHidden = true
        countryField.isHidden = true
        countryLabel.isHidden = true
        zipField.isHidden = true
        zipLabel.isHidden = true
        buyBtn.isHidden = true
        sucessImg.isHidden = false
        
}
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 //the picker view will have 1 column
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count //the picker view will have states.count number of rows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row] //the present picker string will be the value in states[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal) //sets the title as states[row]
        statePicker.isHidden = true //when we are not selecting the Picker value, we hide the pcker view
        
        countryField.isHidden = false
        countryLabel.isHidden = false
        zipField.isHidden = false
        zipLabel.isHidden = false
    }
}

