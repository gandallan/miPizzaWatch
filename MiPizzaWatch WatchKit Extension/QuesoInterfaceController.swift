//
//  QuesoInterfaceController.swift
//  MiPizzaWatch
//
//  Created by Gandhi Mena Salas on 29/12/15.
//  Copyright © 2015 Trenx. All rights reserved.
//

import WatchKit
import Foundation


class QuesoInterfaceController: WKInterfaceController {
    
    
    @IBOutlet var quesoPicker: WKInterfacePicker!
    
    @IBOutlet var itemLabel: WKInterfaceLabel!
    
    @IBOutlet var siguienteButton: WKInterfaceButton!
    
    
    let listItems:[(String, String)] = [
        
        ("Queso1", "Mozarela"),
        ("Queso2", "Cheddar"),
        ("Queso3", "Parmesano"),
        ("Queso4", "Sin queso")
    
    ]

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let pickerItems: [WKPickerItem] = listItems.map{
            
            let pickerItem: WKPickerItem = WKPickerItem()
            pickerItem.caption = $0.0
            pickerItem.title = $0.1
            return pickerItem
            
        }
        
        quesoPicker.setItems(pickerItems)
        siguienteButton.setEnabled(false)
        
        // Configure interface objects here.
    }
    
    
    @IBAction func pickerAction(value: Int) {
        
        itemLabel.setText(listItems[value].1)
        siguienteButton.setEnabled(true)
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
