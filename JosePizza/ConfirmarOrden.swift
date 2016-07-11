//
//  ConfirmarOrden.swift
//  JosePizza
//
//  Created by MCS on 7/11/16.
//  Copyright © 2016 JoseCompany. All rights reserved.
//

import UIKit

class ConfirmarOrden: UIViewController {
    var tamanoPizzaF,tipoMasaF,tipoQuesoF:String!
    
    @IBOutlet weak var tamanoPizzaLbl: UILabel!
    @IBOutlet weak var tipoMasaLbl: UILabel!
    @IBOutlet weak var tipoQuesoLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tamanoPizzaLbl.text = tamanoPizzaF
        tipoMasaLbl.text = tipoMasaF
        tipoQuesoLbl.text = tipoQuesoF
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
