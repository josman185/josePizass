//
//  TipoQueso.swift
//  JosePizza
//
//  Created by jose on 7/10/16.
//  Copyright © 2016 JoseCompany. All rights reserved.
//

import UIKit

class TipoQueso: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    var pickerTipoQueso = ["Sin queso", "Mozarela", "Cheddar", "Parmesano"]
    
    var tamanoPizza : String!
    var tipoMasa : String!
    var tipoQueso : String = "Sin queso"
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.pickerTipoQueso.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerTipoQueso[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
    tipoQueso=self.pickerTipoQueso[row]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "segueToIngredientes"
        {
            if let destinationVCIngredientes = segue.destinationViewController as? Ingredientes {
                destinationVCIngredientes.tamanoDePizza = tamanoPizza
                destinationVCIngredientes.tipoDeMasa = tipoMasa
                destinationVCIngredientes.tipoDeQueso = tipoQueso
            }
        }
    }

}
