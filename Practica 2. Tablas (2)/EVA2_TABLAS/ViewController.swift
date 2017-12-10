//
//  ViewController.swift
//  EVA2_TABLAS
//
//  Created by  on 25/09/17.
//  Copyright © 2017 adru¡ian chavira. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var aComida = ["Tacos","Enchiladas","Totopos","Tacos", "Burros", "Dogos","Pescado","Hamburguesas", "Tacos",
                   "Tacos", "Tacos", "Tacos", "Tacos","Tacos", "Tacos","Tacos", "Tacos", "Montado","Tacos","Quesadillas"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //reciclaje de celdas
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("celda")
        celda?.textLabel?.text = aComida[indexPath.row]
        return celda!
    }
    //cuantos elementos hay en la seccion actual
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return aComida.count
    }


}

