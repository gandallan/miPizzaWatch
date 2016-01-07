//
//  TuOrdenInterfaceController.swift
//  MiPizzaWatch
//
//  Created by Gandhi Mena Salas on 07/01/16.
//  Copyright © 2016 Trenx. All rights reserved.
//

import WatchKit
import Foundation


class TuOrdenInterfaceController: WKInterfaceController {
    
    @IBOutlet var TamanoResultado: WKInterfaceLabel!
    
    
    
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        let resultado = context as! ResultadoDeLaOrden
        TamanoResultado.setText(String(resultado.tamano))
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
