//
//  ViewController.swift
//  Segue
//
//  Created by administrador on 05/12/17.
//  Copyright © 2017 administrador. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func SeguePrimero(sender: AnyObject) {
        performSegueWithIdentifier("PrimerSlide", sender: sender)    }

    @IBAction func SegundoSlide(sender: AnyObject) {
        performSegueWithIdentifier("SegundoSlide", sender: sender)    }
    
    @IBOutlet weak var PrimeroBoton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

