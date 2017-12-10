//
//  ViewController.swift
//  Practica 7 . Loads
//
//  Created by DIEGO IRAM on 20/10/17.
//  Copyright © 2017 DIEGO IRAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var aiImagenes : [UIImage]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        aiImagenes = [UIImage(named: "facebook")!,UIImage(named: "google")!,UIImage(named: "instagram")!,UIImage(named: "pinterest")!,UIImage(named: "twitter-xl")!]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Numero de componentes
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //Tamano del picker de acuerdo al arreglo
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return aiImagenes.count
    }
    
    //Tamano del view igual al de las imagenes que es 64
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }
    
    //Agregar la imagen
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let imagen = UIImageView(image: aiImagenes[row])
        return imagen
    }

}

