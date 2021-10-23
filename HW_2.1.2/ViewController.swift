//
//  ViewController.swift
//  HW_2.1.2
//
//  Created by Ilya Pokhodin on 23.10.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var redLightSignal: UIView!
    @IBOutlet var yellowLightSignal: UIView!
    @IBOutlet var greenLightSignal: UIView!
    @IBOutlet var changeButtonText: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightSignal.alpha = 0.3
        yellowLightSignal.alpha = 0.3
        greenLightSignal.alpha = 0.3
        
        redLightSignal.layer.cornerRadius = 70
        yellowLightSignal.layer.cornerRadius = 70
        greenLightSignal.layer.cornerRadius = 70
        
        changeButtonText.setTitle("START", for: .normal)
    }

    @IBAction func changeLight() {
        if redLightSignal.alpha == 0.3
            && yellowLightSignal.alpha == 0.3
            && greenLightSignal.alpha == 0.3 {
            
            redLightSignal.alpha = 1
        }
        
        changeButtonText.setTitle("NEXT", for: .normal)
        
        if redLightSignal.alpha == 1 {
            redLightSignal.alpha = 0.3
            yellowLightSignal.alpha = 1
        } else if yellowLightSignal.alpha == 1 {
            yellowLightSignal.alpha = 0.3
            greenLightSignal.alpha = 1
        } else {
            greenLightSignal.alpha = 0.3
            redLightSignal.alpha = 1
        }
        
    }
    
    
}

