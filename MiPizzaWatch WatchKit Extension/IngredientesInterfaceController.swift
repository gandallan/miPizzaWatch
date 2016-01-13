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

    @IBOutlet var siguienteButton: WKInterfaceButton!
    @IBOutlet var tuListaDeIngredientes: WKInterfaceLabel!
    
    
    
    
    
//*********Variables
    

    var nombreIngredientes:[String?] = ["Jamon","Pepperoni","Pavo","Salchicha","Aceitunas","Cebolla","Pimiento","Piña","Anchoas"]
    
    var ingredientesBool:[Bool] = [false,false,false,false,false,false,false,false,false]
    
    var numeroDeIngredientes:[Int] = []
/*
    var jamon:Bool = false
    var pepper:Bool = false
    var pavo:Bool = false
    var salchi:Bool = false
    var aceit:Bool = false
    var ceboll:Bool = false
    var pimient:Bool = false
    var pina:Bool = false
    var anchoas:Bool = false
*/
    
//**************Switch ingredientes
    
    
    @IBAction func jamonButton(value: Bool) {
        
        //jamon = true
        anadirIngrediente(0)

    }
    
    @IBAction func pepperoniButton(value: Bool) {
        
        //pepper = true
        anadirIngrediente(1)
        
    }

    @IBAction func pavoButton(value: Bool) {
        
        //pavo = true
        anadirIngrediente(2)
        
    }
    
    @IBAction func salchichaButton(value: Bool) {
        
        //salchi = true
        anadirIngrediente(3)
    }
    
    @IBAction func aceitunaButton(value: Bool) {
        
        //aceit = true
        anadirIngrediente(4)
        
    }
    
    @IBAction func cebollaButton(value: Bool) {
        
        //ceboll = true
        anadirIngrediente(5)
    }
    
    @IBAction func pimientoButton(value: Bool) {
        
        //pimient = true
        anadirIngrediente(6)
        
    }
    
    @IBAction func pinaButton(value: Bool) {
        
        //pina = true
        anadirIngrediente(7)
        
    }
    
    @IBAction func anchoasButton(value: Bool) {
        
        //anchoas = true
        anadirIngrediente(8)
        
        
    }
    
/*
    @IBAction func SiguienteButtonAction() {
        
    let contexto = ResultadoDeLaOrden(Tamano: tamanoSeleccionado, Masa: tipoSeleccionado, Queso: quesoSeleccionado, Ingredientes: ingredientesSeleccionados)
        
    print(contexto)
    pushControllerWithName("tuOrden", context: contexto)
        
        
    }
*/
    
    
    
    
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
            
            //print(ingredientesSeleccionados)
            
            tuListaDeIngredientes.setText(nombres)
            
            
            }
      
        
    }
    


    
    
//**********Alerta
    func showAlert(){
    
        let OK = WKAlertAction(title: "OK", style: WKAlertActionStyle.Default) { () -> Void in
        }
        
    
        presentAlertControllerWithTitle("Recuerda", message: "solo 5 ingredientes máx", preferredStyle: WKAlertControllerStyle.Alert, actions: [OK])
    }

    
    
//*************
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        siguienteButton.setEnabled(false)

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
