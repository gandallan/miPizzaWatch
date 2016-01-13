//
//  IngredientesInterfaceController.swift
//  MiPizzaWatch
//
//  Created by Gandhi Mena Salas on 30/12/15.
//  Copyright © 2015 Trenx. All rights reserved.
//

import WatchKit
import Foundation


//*******Variable Globla

var ingredientesSeleccionados:String!

//**********

class IngredientesInterfaceController: WKInterfaceController {

    
    
    
//**************** Outlets
    
    @IBOutlet var siguienteButton: WKInterfaceButton!

    

    
//*********Variables
    
    var nombreIngredientes:[String?] = ["Jamon","Pepperoni","Pavo","Salchicha","Aceitunas","Cebolla","Pimiento","Piña","Anchoas"]
    
    var ingredientesBool:[Bool] = [false,false,false,false,false,false,false,false,false]
    
    var numeroDeIngredientes:[Int] = []

    
    
    
//**************Switch ingredientes
    
    
    @IBAction func jamonButton(value: Bool) {
        
        anadirIngrediente(0)

    }
    
    @IBAction func pepperoniButton(value: Bool) {

        anadirIngrediente(1)
        
    }

    @IBAction func pavoButton(value: Bool) {

        anadirIngrediente(2)
        
    }
    
    @IBAction func salchichaButton(value: Bool) {

        anadirIngrediente(3)
    }
    
    @IBAction func aceitunaButton(value: Bool) {

        anadirIngrediente(4)
        
    }
    
    @IBAction func cebollaButton(value: Bool) {

        anadirIngrediente(5)
    }
    
    @IBAction func pimientoButton(value: Bool) {

        anadirIngrediente(6)
        
    }
    
    @IBAction func pinaButton(value: Bool) {

        anadirIngrediente(7)
        
    }
    
    @IBAction func anchoasButton(value: Bool) {

        anadirIngrediente(8)

    }
    

    
    
//*************Funcion añadir ingrediente
    
    func anadirIngrediente(pos:Int){
        
         siguienteButton.setEnabled(true)
        
        ingredientesBool[pos] = !ingredientesBool[pos]
        
        if(ingredientesBool[pos]) {
            
            //print(ingredientesBool[pos])
            
            if(numeroDeIngredientes.count > 4){
                
                print(numeroDeIngredientes.count)
                
                showAlert()
                
                siguienteButton.setEnabled(false)
    
                
                return
    
            }
            
            numeroDeIngredientes.append(pos)
            
        } else {
            
            if let index = numeroDeIngredientes.indexOf(pos) {
                
                print(index)
                
                numeroDeIngredientes.removeLast()
                
            }
        }
        

        for ii in numeroDeIngredientes {
            
            
            let nombres:String! = "\(nombreIngredientes[ii]!)"
            
            print(nombres)
            
            ingredientesSeleccionados = "\(nombres)"
            
        }
      
    }
    


    
//**********Alerta de solo 5 ingredientes
    func showAlert(){
    
        let OK = WKAlertAction(title: "OK", style: WKAlertActionStyle.Default) { () -> Void in
            
            //si queremos que al presionar Ok suceda algo, va aquí.
            
        }
        
    
        presentAlertControllerWithTitle("Recuerda", message: "solo 5 ingredientes máx", preferredStyle: WKAlertControllerStyle.Alert, actions: [OK])
    }

    
    

    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        siguienteButton.setEnabled(false)

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
