//
//  ViewController.swift
//  appMayusculas
//
//  Created by user164061 on 4/12/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var btnReglas: UIButton!
    
    @IBOutlet weak var btnPractica: UIButton!
    
    
    @IBOutlet weak var btnCreditos: UIButton!
    
    var listaReglas : [Reglas]!
    
    var arrReglas : NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "App Mayúsculas"
        
        
        //Obtener el path para cargar las reglas de las mayúsculas y minusculas
        let pathReglas = Bundle.main.path(forResource: "ReglasMayusculas", ofType: "plist")
        arrReglas = NSArray(contentsOfFile: pathReglas!)
        
        
        
        // Button Properties change color buttons
        /*
        btnReglas.backgroundColor = UIColor.blue
        btnReglas.layer.cornerRadius = btnReglas.frame.height/2
        btnReglas.setTitleColor(.white, for: .normal)
        
        btnReglas.layer.shadowColor = UIColor.blue.cgColor
        btnReglas.layer.shadowRadius = 6
        btnReglas.layer.shadowOpacity = 0.6
        btnReglas.layer.shadowOffset = CGSize(width: 0, height: 0  )
        */
        //Button Design in one line check extension in first Screen HERE
        btnReglas.applyDesignButtons()
        btnPractica.applyDesignButtons()
        btnCreditos.applyDesignButtons()
        
        //  create
        /*
        let fileManager = FileManager.default

        let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        let path = documentDirectory.stringByAppendingString("/profile.plist")

        if(!fileManager.fileExistsAtPath(path)){
            print(path)

            let data : [String: String] = [
                "Company": "My Company",
                "FullName": "My Full Name",
                "FirstName": "My First Name",
                "LastName": "My Last Name",
                // any other key values
            ]

            let someData = NSDictionary(dictionary: data)
            let isWritten = someData.writeToFile(path, atomically: true)
            print("is the file created: \(isWritten)")



        }else{
            print("file exists")
        }
        
        if FileManager.default.fileExists(atPath: dataFileURL().path){
            obtenerEmpleados()
        }
        */
    }
    
    func dataFileURL () -> URL {
        let url = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
        let pathArchivo = url.appendingPathComponent("profile.plist")
        print(pathArchivo.path)
        return pathArchivo
    }
    
    func obtenerEmpleados() {
        //listaReglas.removeAll()
        
        do {
            let data = try Data.init(contentsOf: dataFileURL())
            listaReglas = try PropertyListDecoder().decode([Reglas].self, from: data)
        }
        catch{
            print("Error al cargar los datos del archivo")
        }
        
    }
    

}


//Works for every viewcontroller
extension UIButton{
    func applyDesignButtons() {
        self.backgroundColor = UIColor.blue
        self.layer.cornerRadius = self.frame.height/2
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = UIFont(name: "Helvetica" , size: 40)
        
        
        self.layer.shadowColor = UIColor.blue.cgColor
        self.layer.shadowRadius = 6
        self.layer.shadowOpacity = 0.6
        self.layer.shadowOffset = CGSize(width: 0, height: 0  )
    }
}
