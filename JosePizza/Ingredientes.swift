//
//  Ingredientes.swift
//  JosePizza
//
//  Created by jose on 7/10/16.
//  Copyright © 2016 JoseCompany. All rights reserved.
//

import UIKit

class Ingredientes: UIViewController {
    
    var tamanoDePizza : String!
    var tipoDeMasa : String!
    var tipoDeQueso : String!
    
    @IBOutlet weak var jamon: UISwitch!
    @IBOutlet weak var peperoni: UISwitch!
    @IBOutlet weak var salchicha: UISwitch!
    @IBOutlet weak var pavo: UISwitch!
    @IBOutlet weak var aceituna: UISwitch!
    @IBOutlet weak var cebolla: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func popToRoot(sender: AnyObject) {
        self.navigationController!.popToRootViewControllerAnimated(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "segueToConfirmarOrden"
        {
            if let destinationVCConfirmar = segue.destinationViewController as? ConfirmarOrden {
                destinationVCConfirmar.tamanoPizzaF = tamanoDePizza
                destinationVCConfirmar.tipoMasaF = tipoDeMasa
                destinationVCConfirmar.tipoQuesoF = tipoDeQueso
            }
        }
    }
    
}
