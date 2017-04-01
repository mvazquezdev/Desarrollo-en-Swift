//
//  File.swift
//  hamburguesas1
//
//  Created by DAI on 30/03/17.
//  Copyright © 2017 UAEH. All rights reserved.
//

import Foundation

class ColeccionDePaises {
    var paisesDelMundo : [String] = ["México", "UEA","Chile","Rusia","Japon","España","Canada","China","India","Alemania","Brasíl","Colombia","Francia","Inglaterra","Irlanda","Portugal","Italia","Finlandia","Guatemala","Argentina"]
    var pais = ""
    
    init(pais : String)
    {
        self.pais = pais
    }
    
    func obtenPais() -> String{
        pais = paisesDelMundo[Int(arc4random() % 20)]
        //print(pais)
        return pais
    }
}


class ColeccionDeHamburguesa {
    var hamburguesasDelMundo = ["Hamburguesa Lobo 1","Hamburguesa Lobo 2","Hamburguesa Lobo 3","Hamburguesa Lobo 4","Hamburguesa Lobo 5","Hamburguesa Lobo 6","Hamburguesa Lobo 7","Hamburguesa Lobo 8","Hamburguesa Lobo 9","Hamburguesa Lobo 10","Hamburguesa Lobo 11","Hamburguesa Lobo 12","Hamburguesa Lobo 13","Hamburguesa Lobo 14","Hamburguesa Lobo 15","Hamburguesa Lobo 16","Hamburguesa Lobo 17","Hamburguesa Lobo 18","Hamburguesa Lobo 19","Hamburguesa Lobo 20"]
    var hamburguesa = ""
    init(hamburguesa : String){
        self.hamburguesa = hamburguesa
    }
    
    func obtenHamburguesa() -> String {
        hamburguesa = hamburguesasDelMundo[Int(arc4random() % 20)]
        //print(hamburguesa)
        return hamburguesa
    }
}
