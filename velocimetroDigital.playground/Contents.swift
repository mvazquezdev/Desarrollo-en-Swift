//: Velocimetro digital : MAHV

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init (velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var actual : Int
    var velocidadEnCadena : String
    var velocidad : Velocidades
    var tmp : Int
    
    init() {
        self.velocidad = Velocidades(velocidadInicial: Velocidades(rawValue:0)!)
        self.actual = velocidad.rawValue
        self.tmp = velocidad.rawValue
        self.velocidadEnCadena = ""
    }
    
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        actual = tmp
        switch tmp {
            case 0:
                velocidadEnCadena = "Apagado"
                velocidad = .VelocidadBaja
                tmp = velocidad.rawValue
            case 20:
                velocidadEnCadena = "Velocidad Baja"
                velocidad = .VelocidadMedia
                tmp = velocidad.rawValue
            case 50:
                velocidadEnCadena = "Velocidad Media"
                velocidad = .VelocidadAlta
                tmp = velocidad.rawValue
            case 120:
                velocidadEnCadena = "Velocidad Alta"
                velocidad = .VelocidadMedia
                tmp = velocidad.rawValue
            default:break
            }
        return (actual, velocidadEnCadena)
        }
    
}

var auto = Auto()
for i in 1...20 {
    let (velocidadActual, mensaje) = auto.cambioDeVelocidad()
    print("\(velocidadActual),\t\(mensaje)")
}
