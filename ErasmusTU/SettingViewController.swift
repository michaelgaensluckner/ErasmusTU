//
//  SettingViewController.swift
//  ErasmusTU
//
//  Created by Taehyung Kim on 2016. 5. 21..
//  Copyright © 2016년 Michael Gänsluckner. All rights reserved.
//

import UIKit


struct SettingOption{
    static var nationality = ""
    static var longstay = false
    static var donepressed = false
}

class SettingViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet var NationalitySelect: UITextField!
    

    @IBOutlet var DoneButton: UIButton!

    @IBOutlet var LongstaySwitch: UISwitch!
    
    var nationalityOption = ["EU Countries","Iceland/Norway","Switzerland","Other Countries"]
    
    
    var nationalityPicker = UIPickerView()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (SettingOption.nationality != ""){
            NationalitySelect.text = SettingOption.nationality
        }
        if(SettingOption.donepressed == true){
            DoneButton.hidden = true
        }
        LongstaySwitch.on = SettingOption.longstay
        
        nationalityPicker.delegate = self
        nationalityPicker.dataSource = self
        NationalitySelect.inputView = nationalityPicker
        
        nationalityPicker.backgroundColor = .whiteColor()
        nationalityPicker.showsSelectionIndicator = true
        
        var toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.Default
        toolBar.translucent = true
        toolBar.tintColor = UIColor(red: 76/255, green: 217/255, blue: 100/255, alpha: 1)
        toolBar.sizeToFit()
        
        
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.Bordered, target: self, action: "donePicker")
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: nil, action: nil)
        
        toolBar.setItems([spaceButton, doneButton], animated: false)
        toolBar.userInteractionEnabled = true
        
        NationalitySelect.inputView = nationalityPicker
        NationalitySelect.inputAccessoryView = toolBar
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
    
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return nationalityOption.count
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        NationalitySelect.text = nationalityOption[row]
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        SettingOption.nationality = nationalityOption[row]
        return nationalityOption[row]
    }
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        return false
    }
    func donePicker(){
        NationalitySelect.resignFirstResponder()
    }
    @IBAction func LongstaySwitch(sender: AnyObject) {
        SettingOption.longstay = (LongstaySwitch.on)
    }
   
    @IBAction func DonePressed(sender: AnyObject) {
        if(SettingOption.nationality == ""){
            let alert = UIAlertView()
            //alert.title = "Alert"
            alert.message = "You must select Nationality"
            alert.addButtonWithTitle("OK")
            alert.show()
            
            return;
        }
        
        
        SettingOption.donepressed = true
        performSegueWithIdentifier("toTabSegue", sender: self)
    }
}
