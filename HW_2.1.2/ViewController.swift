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
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightSignal.alpha = lightIsOff
        yellowLightSignal.alpha = lightIsOff
        greenLightSignal.alpha = lightIsOff
        
        redLightSignal.layer.cornerRadius = 70
        yellowLightSignal.layer.cornerRadius = 70
        greenLightSignal.layer.cornerRadius = 70
        
        changeButtonText.setTitle("START", for: .normal)
    }

    @IBAction func changeLight() {
        if changeButtonText.currentTitle == "START" {
            changeButtonText.setTitle("NEXT", for: .normal)
        }
        
        if redLightSignal.alpha == lightIsOn {
            redLightSignal.alpha = lightIsOff
            yellowLightSignal.alpha = lightIsOn
        } else if yellowLightSignal.alpha == lightIsOn {
            yellowLightSignal.alpha = lightIsOff
            greenLightSignal.alpha = lightIsOn
        } else {
            greenLightSignal.alpha = lightIsOff
            redLightSignal.alpha = lightIsOn
        }
        
    }
    
    
}

