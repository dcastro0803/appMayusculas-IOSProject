//
//  ViewControllerPractica.swift
//  appMayusculas
//
//  Created by user164061 on 4/13/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit

class ViewControllerPractica: UIViewController {
    
    @IBOutlet weak var btnFacil: UIButton!
    
    @IBOutlet weak var btnDificil: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Práctica"
        
        btnFacil.applyDesignButtons()
        btnDificil.applyDesignButtons()

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
