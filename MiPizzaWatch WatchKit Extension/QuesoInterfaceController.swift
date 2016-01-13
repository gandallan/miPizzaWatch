//
//  QuesoInterfaceController.swift
//  MiPizzaWatch
//
//  Created by Gandhi Mena Salas on 29/12/15.
//  Copyright © 2015 Trenx. All rights reserved.
//

import WatchKit
import Foundation

//**************** Variable global

var quesoSeleccionado:String!

//****************

class QuesoInterfaceController: WKInterfaceController {
    
    
    
    
//**************** Outlets
    
    @IBOutlet var quesoPicker: WKInterfacePicker!
    
    @IBOutlet var itemLabel: WKInterfaceLabel!
    
    @IBOutlet var siguienteButton: WKInterfaceButton!
    
    
    

//******************** Variable (lista de String para el Picker)
    
    let listItems:[(String, String)] = [
        
        ("Queso1", "Mozarela"),
        ("Queso2", "Cheddar"),
        ("Queso3", "Parmesano"),
        ("Queso4", "Sin queso")
    
    ]

    

    
//******************** al precionar el Picker List(Button)
    
    @IBAction func pickerAction(value: Int) {
        
        itemLabel.setText(listItems[value].1)
        
        siguienteButton.setEnabled(true)
        
        quesoSeleccionado = "\(self.listItems[value].1)"

        
    }
    
    
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
//********************Seleccion del caption y el title de la lista.
        
        let pickerItems: [WKPickerItem] = listItems.map{
            
            let pickerItem: WKPickerItem = WKPickerItem()
            pickerItem.caption = $0.0
            pickerItem.title = $0.1
            return pickerItem
            
        }
        
        quesoPicker.setItems(pickerItems)
        
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
