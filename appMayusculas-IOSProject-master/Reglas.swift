//
//  Reglas.swift
//  appMayusculas
//
//  Created by user164061 on 4/12/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit

class Reglas: Codable {
    /*var regla1: String
    var regla2: String
    var regla3: String
    var regla4: String
    
    init(regla1: String, regla2: String, regla3: String, regla4: String){
        self.regla1 = regla1
        self.regla2 = regla2
        self.regla3 = regla3
        self.regla4 = regla4
    }
 */
    var nombre: String
    var descripcion: String
    
    init(nombre: String, descripcion: String){
        self.nombre = nombre
        self.descripcion = descripcion
    }
    

}
