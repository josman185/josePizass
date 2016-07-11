//
//  TipoQueso.swift
//  JosePizza
//
//  Created by MCS on 7/10/16.
//  Copyright © 2016 JoseCompany. All rights reserved.
//

import UIKit

class TipoQueso: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    var pickerTipoQueso = ["mozarela", "cheddar", "parmesano", "sin queso"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.pickerTipoQueso.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerTipoQueso[row]
    }
    

}
