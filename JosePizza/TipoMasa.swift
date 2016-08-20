//
//  TipoMasa.swift
//  JosePizza
//
//  Created by jose on 7/11/16.
//  Copyright © 2016 JoseCompany. All rights reserved.
//

import UIKit

class TipoMasa: UIViewController {
    
    @IBOutlet weak var tamPizz: UILabel!
    
    var dataPickerTipoMasa = ["Gruesa", "Delgada","Crujiente"]
    
    var tamanoPizza : String!
    var tipoMasa : String = "Gruesa"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tamPizz.text = tamanoPizza
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
        return self.dataPickerTipoMasa.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataPickerTipoMasa[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        tipoMasa=self.dataPickerTipoMasa[row]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "segueToTipoQueso"
        {
            if let destinationVCTipoQueso = segue.destinationViewController as? TipoQueso {
                destinationVCTipoQueso.tamanoPizza = tamanoPizza
                destinationVCTipoQueso.tipoMasa = tipoMasa
            }
        }
    }

}
