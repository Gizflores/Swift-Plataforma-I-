//
//  ViewController.swift
//  EVA2_1_TABLAS
//
//  Created by administrador on 25/09/17.
//  Copyright © 2017 administrador. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    
    var aComida = [ "Quesadillas sin queso","Quesicarnes","Palomitas con mayonesa", "Burriros", "Gringas", "Quesadillas", "Gorditas", "Tortas", "Montados", "Tostadas", "Enchiladas", "Chilaquiles", "Caldos", "Sopes", "Nachos", "Boneless", "Alitas", "Tacos", "Burguers", "Burriros", "Gringas", "Quesadillas", "Gorditas", "Tortas", "Montados", "Tostadas", "Enchiladas", "Chilaquiles", "Caldos", "Sopes", "Nachos", "Boneless", "Alitas", "Tacos", "Burguers", "Burriros", "Gringas", "Quesadillas", "Gorditas", "Tortas", "Montados", "Tostadas", "Enchiladas", "Chilaquiles", "Caldos", "Sopes", "Nachos", "Boneless", "Alitas"]

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
           }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCellWithIdentifier("celda")
        celda?.textLabel?.text = aComida[indexPath.row]
        return celda!
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aComida.count
    }

}

