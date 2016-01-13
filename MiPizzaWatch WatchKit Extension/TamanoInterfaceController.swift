//
//  InterfaceController.swift
//  MiPizzaWatch WatchKit Extension
//
//  Created by Gandhi Mena Salas on 06/12/15.
//  Copyright © 2015 Trenx. All rights reserved.
//

import WatchKit
import Foundation


//**************** Variable global

var tamanoSeleccionado:String!

//****************




class tamanoInterfaceController: WKInterfaceController {

    
    
    
//**************** Outlets
    
    @IBOutlet var tamanosPicker: WKInterfacePicker!
    
    @IBOutlet var itemLabel: WKInterfaceLabel!
    
    @IBOutlet var siguienteButton: WKInterfaceButton!
    
    
    

//******************** Variable (lista de String para el Picker)
    
    var listItems: [(String, String)] = [
        
        ("tamaño1","Chico"),
        ("tamaño2","Mediano"),
        ("tamaño3","Grande"),
    
    ]
    
    
    
    
//******************** al precionar el Picker List(Button)
    @IBAction func pickerChanged(value: Int) {
        
        itemLabel.setText(listItems[value].1)

        siguienteButton.setEnabled(true)
        
        tamanoSeleccionado = "\(self.listItems[value].1)"
        
        
    }
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
//********************Seleccion del caption y el title de la lista
        
        let pickerItems: [WKPickerItem] = listItems.map {
            let pickerItem = WKPickerItem()
            pickerItem.caption = $0.0
            pickerItem.title = $0.1
            
            return pickerItem
        
        }
        
        tamanosPicker.setItems(pickerItems)

    }
    

    
    
    
/*
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
    siguienteButton.setEnabled(false)
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()

       
        
    }
*/
}
