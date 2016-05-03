//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int {
    case Apagado = 0,
    VelocidadBaja = 20,
    VelocidadMedia = 50,
    VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad: Velocidades
    var velocidadString: String
    
    init () {
        self.velocidad = Velocidades.Apagado
        self.velocidadString = "Apagado"
    }
    
    func cambioDeVelocidad(velocidad: Velocidades) -> (actual: Int, velocidadesEnCadena: String){
        
        switch velocidad.hashValue {
        case 0:
            print("\(self.velocidad.rawValue), \(self.velocidadString)")
            self.velocidad = .VelocidadBaja
            self.velocidadString = "Velocidad Baja"
        case 1:
            self.velocidad = .VelocidadMedia
            self.velocidadString = "Velocidad Media"
        case 2:
            self.velocidad = .VelocidadAlta
            self.velocidadString = "Velocidad Alta"
        case 3:
            self.velocidad = .VelocidadMedia
            self.velocidadString = "Velocidad Media"
            
        default:
            self.velocidad = velocidad
        }
        return (self.velocidad.rawValue, self.velocidadString)
    }
}

var auto: Auto = Auto()
for _ in 1...20 {
    var tupla = auto.cambioDeVelocidad(auto.velocidad)
    print("\(tupla.actual), \(tupla.velocidadesEnCadena)")
}
