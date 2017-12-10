//
//  ViewController.swift
//  Practica 6. Double
//
//  Created by DIEGO IRAM on 20/10/17.
//  Copyright © 2017 DIEGO IRAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let aDias = [ "Lunes", "Martes", "Miercoles", "Jueves", "Viernes","Sabado","Domingo"]
    let aMes = ["Enero","Febrero","Marzo","Abril","Mayo", "Junio", "Julio" , "Agosto", "Septiembre","Octubre","Noviembre", "Diciembre"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Cuantos niveles queremos
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    // Por cada nivel indicar cuantos elementos tiene
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {//Dias de la semana
            return aDias.count
            
        }else{//Dias del mes
            return aMes.count
        }
        }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {//Dias de la semana
            return aDias[row]
            
        }else{//Dias del mes
            return aMes[row]
        }
    }

}

