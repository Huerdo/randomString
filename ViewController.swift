//
//  ViewController.swift
//  randomString
//
//  Created by Alberto Huerdo on 01/10/14.
//  Copyright (c) 2014 Alberto Huerdo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var cantidad: UILabel!
    @IBOutlet var codigo: UILabel!
    @IBOutlet var stepper: UIStepper!
    
    let letras: [String] = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","0","1","2","3","4","5","6","7","8","9"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stepper.value = 10
        stepper.minimumValue = 1
        stepper.maximumValue = 30
        cantidad.text = "Número de caracteres: " + String(Int(stepper.value))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func crearCodigo(sender: AnyObject) {
        
        UIView.animateWithDuration(0.3, animations: {
            self.codigo.alpha = 0.0
            }, completion: {
                (value: Bool) in
                
                var codigoN = ""
                for var i = 0; i < Int(self.stepper.value); i++
                {
                    let rand = (arc4random() % UInt32(self.letras.count))
                    codigoN += String(self.letras[Int(rand)])
                }
                
                self.codigo.text = codigoN
                
                println(self.codigo.text)
                
                UIView.animateWithDuration(0.3, animations: {
                    self.codigo.alpha = 1
                })
                
        })
    }

    @IBAction func cantidadCaracteres(sender: UIStepper) {
        cantidad.text = "Número de caracteres: " + String(Int(stepper.value))
    }
    
    @IBAction func compartir(sender: AnyObject) {
    }
}