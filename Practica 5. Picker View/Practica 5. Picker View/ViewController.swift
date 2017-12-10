//
//  ViewController.swift
//  Practica 5. Picker View
//
//  Created by DIEGO IRAM on 19/10/17.
//  Copyright © 2017 DIEGO IRAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let aDias = ["Lunes", "Martes", "Miercoles", "Jueves" , "Viernes" ,"Sabado", "Domingo"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
            return aDias.count
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 50
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return aDias[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let alerta = UIAlertController(title: "Dia de la semana", message: aDias[row], preferredStyle: .Alert )
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alerta.addAction(boton)
        presentViewController(alerta, animated: true, completion:nil)
        
    }

}

