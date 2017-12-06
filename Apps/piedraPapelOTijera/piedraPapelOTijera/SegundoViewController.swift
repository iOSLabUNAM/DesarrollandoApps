//
//  SegundoViewController.swift
//  piedraPapelOTijera
//
//  Created by macbook on 04/12/17.
//  Copyright © 2017 macbook. All rights reserved.
//

import UIKit

class SegundoViewController: UIViewController {
    var nombre : String = ""
    var contadorMaquina = 0
    var contadorPersona = 0
    var emojis = ["","👊🏻","🖐🏻","✌🏻"]
    
    @IBOutlet weak var maquinaLabel: UILabel!
    @IBOutlet weak var personaLabel: UILabel!
    @IBOutlet weak var maquinaBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        maquinaLabel.text = "Score Maquina: \(contadorMaquina)"
        personaLabel.text =  "Score \(nombre): \(contadorPersona)"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func jugada(_ sender: UIButton) {
        let movJugador = sender.tag
        let movMaquina = Int(arc4random_uniform(3)+1)
        var tituloAlerta = ""
        if movJugador == movMaquina{
            maquinaBtn.setTitle("\(emojis[movMaquina])", for: .normal)
            tituloAlerta = "Empate"
        }else{
            switch movJugador{
            case 1:
                if movMaquina == 2{
                    maquinaBtn.setTitle(emojis[movMaquina], for: .normal)
                    tituloAlerta = "Perdiste"
                    contadorMaquina += 1
                    
                }else{
                    maquinaBtn.setTitle(emojis[movMaquina], for: .normal)
                    tituloAlerta = "Ganaste"
                    contadorPersona += 1
                }
                
                break
                
            case 2:
                if movMaquina == 3{
                    maquinaBtn.setTitle(emojis[movMaquina], for: .normal)
                    tituloAlerta = "Perdiste"
                    contadorMaquina += 1
                    
                }else{
                    maquinaBtn.setTitle(emojis[movMaquina], for: .normal)
                    tituloAlerta = "Ganaste"
                    contadorPersona += 1
                }
                
                break
                
            case 3:
                if movMaquina == 1{
                    maquinaBtn.setTitle(emojis[movMaquina], for: .normal)
                    tituloAlerta = "Perdiste"
                    contadorMaquina += 1
                    
                }else{
                    maquinaBtn.setTitle(emojis[movMaquina], for: .normal)
                    tituloAlerta = "Ganaste"
                    contadorPersona += 1
                }
                
                break
                
            default:
                break
                
            }
        }
        let alertController = UIAlertController(title: tituloAlerta,message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok",style:.default,handler:nil)
        alertController.addAction(action)
        self.present(alertController,animated:  true,completion: nil)
        maquinaLabel.text = "Score Maquina: \(contadorMaquina)"
        personaLabel.text =  "Score \(nombre): \(contadorPersona)"
        
    }
    

}
