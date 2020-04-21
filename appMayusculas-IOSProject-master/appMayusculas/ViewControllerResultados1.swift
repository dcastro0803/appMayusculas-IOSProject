//
//  ViewControllerResultados1.swift
//  appMayusculas
//
//  Created by user164056 on 4/20/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit

class ViewControllerResultados1: UIViewController {

    @IBOutlet weak var lResp1: UILabel!
    @IBOutlet weak var lResp2: UILabel!
    @IBOutlet weak var lResp3: UILabel!
    
    var Respuesta1 : String!
    var Respuesta2 : String!
    var Respuesta3 : String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lResp1.text = Respuesta1
        lResp2.text = Respuesta2
        lResp3.text = Respuesta3

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
