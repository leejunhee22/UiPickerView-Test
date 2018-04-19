//
//  ViewController.swift
//  UiPickerView Test
//
//  Created by 김종현 on 2018. 4. 14..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var col0Label: UILabel!
    @IBOutlet weak var col1Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            myPickerView.delegate = self
            myPickerView.dataSource = self
      }
      func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 2
      }
      func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            if component == 0 {
                  return 10
            } else {
                  return 50
            }
      }
      
      func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            if component == 0 {
                  return "1st component \(row)"
            } else {
                  return "2nd component \(row)"
            }
      }
      func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            
            col0Label.text = "comp = \(component+1) row = \(row)"
      }
}

