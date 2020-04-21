//
//  ViewControllerDetallesMinuscula.swift
//  appMayusculas
//
//  Created by user164056 on 4/15/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit

class ViewControllerDetallesMinuscula: UIViewController {

    @IBOutlet weak var lID: UILabel!
    @IBOutlet weak var lNombre: UILabel!
    @IBOutlet weak var Descripcion: UILabel!
    @IBOutlet weak var lEjemplo1: UILabel!
    @IBOutlet weak var lEjemplo2: UILabel!
    
    // Check if doing a class for the exercise is good
    
    // Do a plist file for Reglas mayusculas an other for reglas minusculas
    // with the segue identifier we will load the array data of mayusuclas or minusculas here
    // Posible to add Examples
    
    
    var datoMostrar : NSArray!
    var indexLista = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let dicDatos = datoMostrar[indexLista] as! NSDictionary
        lID.text = dicDatos["id"] as? String
        lNombre.text = dicDatos["nombre"] as? String
        Descripcion.text = dicDatos["descripcion"] as? String
        lEjemplo1.text = dicDatos["ejemplo1"] as? String
        lEjemplo2.text = dicDatos["ejemplo2"] as? String
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
