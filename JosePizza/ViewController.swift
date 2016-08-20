//
//  ViewController.swift
//  JosePizza
//
//  Created by jose on 7/10/16.
//  Copyright © 2016 JoseCompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var pickerDataSource = ["Chica", "Mediana", "Grande"]
    var tamanoSeleccionado: String = "Chica"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.pickerDataSource.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataSource[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        tamanoSeleccionado=self.pickerDataSource[row]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "segueToTipoMasa"
        {
            if let destinationVCTipoMasa = segue.destinationViewController as? TipoMasa {
                destinationVCTipoMasa.tamanoPizza = tamanoSeleccionado
            }
        }
    }
}

