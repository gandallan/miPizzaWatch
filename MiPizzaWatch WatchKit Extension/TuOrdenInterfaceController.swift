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
 
    
    
    
//************Outlets
    
    @IBOutlet var TamanoResultado: WKInterfaceLabel!
    @IBOutlet var MasaResultado: WKInterfaceLabel!
    @IBOutlet var QuesoResultado: WKInterfaceLabel!
    @IBOutlet var IngredienteResultado: WKInterfaceLabel!

    
    
    
//***********Mandar a cocinar
    
    @IBAction func mandarACocinar() {
        showAlert()
        
    }
    
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
//***********Asignando las variables globales a los label de resultado
        
        TamanoResultado.setText(tamanoSeleccionado)
        MasaResultado.setText(MasaSeleccionado)
        QuesoResultado.setText(quesoSeleccionado)
        IngredienteResultado.setText(ingredientesSeleccionados)
        
    }
    
    
    
    
//**********Alerta
    
    func showAlert(){
        
        let Ok = WKAlertAction(title: "OK", style: WKAlertActionStyle.Default) { () -> Void in
            
            self.alertMandarAlInicio()
            
        }
        let Cancelar = WKAlertAction(title: "Cancelar", style: WKAlertActionStyle.Default) { () -> Void in
            
        }
        
        presentAlertControllerWithTitle("Cocinar", message: "¿Seguro que deseas Cocinarlo?", preferredStyle: WKAlertControllerStyle.Alert, actions: [Ok, Cancelar])
    }
    
    
    
    
//***********Pedido confirmado
    func alertMandarAlInicio(){
        
        let armarOtraPizza = WKAlertAction(title: "Armar otra pizza", style: WKAlertActionStyle.Default) { () -> Void in
            
            
            self.pushControllerWithName("Tamaño", context: nil)
            
            
        }
        
        presentAlertControllerWithTitle("Confirmado", message: "Tu pedido se ha enviado con éxito", preferredStyle: WKAlertControllerStyle.Alert, actions: [armarOtraPizza])
    }

    
    
    
    
    
    
    
/*
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        

    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        
        
    }
*/
}
