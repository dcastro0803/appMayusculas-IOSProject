//
//  ViewControllerEjercicio3.swift
//  appMayusculas
//
//  Created by user164056 on 4/20/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit

class ViewControllerEjercicio3: UIViewController {

    @IBOutlet weak var lPregunta1: UILabel!
    @IBOutlet weak var lPregunta2: UILabel!
    @IBOutlet weak var lPregunta3: UILabel!
    
    @IBOutlet weak var scRespuesta1: UISegmentedControl!
    @IBOutlet weak var scRespuesta2: UISegmentedControl!
    @IBOutlet weak var scRespuesta3: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let Respuesta = segue.destination as! ViewControllerRespuestas3
    }
    

}
