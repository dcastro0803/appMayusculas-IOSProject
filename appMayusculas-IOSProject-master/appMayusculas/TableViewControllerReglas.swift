//
//  TableViewControllerReglas.swift
//  appMayusculas
//
//  Created by user164061 on 4/12/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit

class TableViewControllerReglas: UITableViewController {
    
    var listaReglas : [Reglas]!
    var arrReglas : NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Obtener el path para cargar las reglas de las mayúsculas y minusculas
        self.title = "Reglas Mayúsculas"
        let pathReglas = Bundle.main.path(forResource: "ReglasMayusculas", ofType: "plist")
        arrReglas = NSArray(contentsOfFile: pathReglas!)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrReglas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /*let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = arrReglas[indexPath.row].nombre
        cell.imageView?.image = UIImage(named: "icon")
        */
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda")!
               // Trae el tipo any entonces casteamos
               let dic = arrReglas[indexPath.row] as! NSDictionary
               //cargar opcional porque trae de xml los datos
               cell.textLabel?.text = dic["nombre"] as? String
        cell.detailTextLabel?.text = dic["descripcion"] as? String
        
        cell.imageView?.image = UIImage(named: "rules")
        // Configure the cell...

        return cell
    }
    
     // MARK: - Segue For detail of Rules
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let vistaDetalle = segue.destination as! ViewControllerDetalleReglas
        
        let indice = tableView.indexPathForSelectedRow!
        vistaDetalle.indexLista = indice.row
        
        vistaDetalle.datoMostrar = arrReglas
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
