//
//  ViewController.swift
//  App Push Notification Prueba
//
//  Created by User on 28/4/16.
//  Copyright © 2016 clubsinergias. All rights reserved.
//

import UIKit
import Parse


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //podemos enviar notificaciones
        let pushNotification = PFPush()
        
        pushNotification.setMessage("Esta es una notificacion Push de prueba")
        pushNotification.sendPushInBackgroundWithBlock { (success, error) -> Void in
            if success{
                
                print("Notificacion Push enviada")
                
                
            }else{
                
                print("No se pudo enviar la Notificacion Push por error \(error)")
                
            }
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

