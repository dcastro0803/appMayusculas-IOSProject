//
//  ViewControllerDetalleReglas.swift
//  appMayusculas
//
//  Created by user164061 on 4/12/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit

class ViewControllerDetalleReglas: UIViewController {
    
    
    
    @IBOutlet weak var lbId: UILabel!
    
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbDescripcion: UILabel!
    
    @IBOutlet weak var lbEjemplo1: UILabel!
    
    @IBOutlet weak var lbEjemplo2: UILabel!
    
    
    // Check if doing a class for the exercise is good
    
    // Do a plist file for Reglas mayusculas an other for reglas minusculas
    // with the segue identifier we will load the array data of mayusuclas or minusculas here
    // Posible to add Examples
    
    var datoMostrar : NSArray!
    var indexLista = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        let dic = arrReglas[indexPath.row] as! NSDictionary
        //cargar opcional porque trae de xml los datos
        cell.textLabel?.text = dic["nombre"] as? String
        */
        let dicDatos = datoMostrar[indexLista] as! NSDictionary
        lbId.text = dicDatos["id"] as? String
        lbNombre.text = dicDatos["nombre"] as? String
        lbDescripcion.text = dicDatos["descripcion"] as? String
        lbEjemplo1.text = dicDatos["ejemplo1"] as? String
        lbEjemplo2.text = dicDatos["ejemplo2"] as? String
        
        // Do any additional setup after loading the view.
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
