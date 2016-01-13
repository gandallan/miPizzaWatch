//
//  TipoInterfaceController.swift
//  MiPizzaWatch
//
//  Created by Gandhi Mena Salas on 06/12/15.
//  Copyright © 2015 Trenx. All rights reserved.
//

import WatchKit
import Foundation


var MasaSeleccionado:String!

class TipoInterfaceController: WKInterfaceController {
    
    @IBOutlet var itemLabel: WKInterfaceLabel!
    
    @IBOutlet var tamanoPizza: WKInterfacePicker!
    
    @IBOutlet var siguienteButton: WKInterfaceButton!
    
    
//******* Variables
    var listItems: [(String, String)] = [
    
        ("tipo1","Delgada"),
        ("tipo2","Crujiente"),
        ("tipo3", "Gruesa")
    ]

    
    
//******* botton
    @IBAction func pickerChange(value: Int) {
        
        itemLabel.setText(listItems[value].1)
        siguienteButton.setEnabled(true)
        
        
        MasaSeleccionado = "\(self.listItems[value].1)"

        
    }
    
    
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let pickerItems: [WKPickerItem] = listItems.map{
            let pickerItem = WKPickerItem()
            pickerItem.caption = $0.0
            pickerItem.title = $0.1
            return pickerItem
            
        }
        
        tamanoPizza.setItems(pickerItems)
        
        siguienteButton.setEnabled(false)
        
        
        // Configure interface objects here.
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
