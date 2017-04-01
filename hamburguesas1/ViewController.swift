//
//  ViewController.swift
//  hamburguesas1
//
//  Desarrollado MAHV
//
//  Created by DAI on 30/03/17.
//  Copyright © 2017 UAEH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var generarPais: UILabel!
    let paises = ColeccionDePaises(pais: "pais")
    let hamburguesas = ColeccionDeHamburguesa(hamburguesa: "hamburguesas")
    
    @IBOutlet weak var generarHamburguesa: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func generarPaisYHamburguesa() {
        generarPais.text = paises.obtenPais()
        generarHamburguesa.text = hamburguesas.obtenHamburguesa()
    }
}

