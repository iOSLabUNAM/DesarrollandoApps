//
//  ViewController.swift
//  piedraPapelOTijera
//
//  Created by macbook on 04/12/17.
//  Copyright © 2017 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "jugarSegue"{
            let destino = segue.destination as! SegundoViewController
            destino.nombre = nameTextField.text!
        }
    }
    
    @IBAction func nameTextField(_ sender: UITextField) {
        self.resignFirstResponder()
        
    }
    

}

