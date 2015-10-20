//
//  ViewController.swift
//  pickerViewExample
//
//  Created by Yosemite on 20/10/15.
//  Copyright (c) 2015 Pavaratha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    
    var array,array1: NSArray!
            var selectedValue, selectedValue1: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var pickerView = UIPickerView(frame: CGRectMake(75, 100, 200 , 100))
        pickerView.backgroundColor = UIColor.brownColor()
        pickerView.delegate = self
        view.addSubview(pickerView)
        array = ["A","B","C","D","E"]
        array1 = ["1","2","3","B","5"]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return 4
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        if(component == 0){
            return array[row] as! String
        } else {
            return array1[row] as! String
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       var label = UILabel(frame: CGRectMake(120,300, 100, 50))
       label.backgroundColor = UIColor.blackColor()
       label.textColor = UIColor.whiteColor()
        

        if(component == 0) {
            selectedValue = (array[row] as! String)
        } else if(component == 1){
            selectedValue1 = (array1[row] as! String)
        }
        if (selectedValue != nil && selectedValue1 != nil) {
            if(selectedValue == selectedValue1) {
                label.text = (selectedValue as String)
            } else {
                label.text = (selectedValue as String) + (selectedValue1 as String)

            }
        }
        view.addSubview(label)

        
    }
    

    
}

