//
//  ResultadoDeLaOrden.swift
//  MiPizzaWatch
//
//  Created by Gandhi Mena Salas on 07/01/16.
//  Copyright © 2016 Trenx. All rights reserved.
//

import WatchKit

class ResultadoDeLaOrden: NSObject {

    var tamano:String = ""
    var masa:String = ""
    var queso:String = ""
    var ingredientes:String = ""
    
    init(Tamano:String, Masa:String, Queso: String, Ingredientes: String ) {
        
        tamano = Tamano
        masa = Masa
        queso = Queso
        ingredientes = Ingredientes
        
    }
    
    
}
