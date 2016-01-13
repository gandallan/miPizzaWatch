//
//  TipoInterfaceController.swift
//  MiPizzaWatch
//
//  Created by Gandhi Mena Salas on 06/12/15.
//  Copyright © 2015 Trenx. All rights reserved.
//

import WatchKit
import Foundation

//**************** Variable global

var MasaSeleccionado:String!

//****************


class TipoInterfaceController: WKInterfaceController {
    
    
    
    
//**************** Outlets
    
    @IBOutlet var itemLabel: WKInterfaceLabel!
    
    @IBOutlet var tamanoPizza: WKInterfacePicker!
    
    @IBOutlet var siguienteButton: WKInterfaceButton!
    
    
    
    
    
//******************** Variable (lista de String para el Picker)
    
    var listItems: [(String, String)] = [
    
        ("tipo1","Delgada"),
        ("tipo2","Crujiente"),
        ("tipo3", "Gruesa")
    ]

    
    
//******************** al precionar el Picker List(Button)
    
    @IBAction func pickerChange(value: Int) {
        
        itemLabel.setText(listItems[value].1)
        
        siguienteButton.setEnabled(true)
        
        MasaSeleccionado = "\(self.listItems[value].1)"

        
    }
    
    
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
//********************Seleccion del caption y el title de la lista        
        let pickerItems: [WKPickerItem] = listItems.map{
            let pickerItem = WKPickerItem()
            pickerItem.caption = $0.0
            pickerItem.title = $0.1
            return pickerItem
            
        }
        
        tamanoPizza.setItems(pickerItems)
        
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
