//
//  ViewController.swift
//  HW_2.1.2
//
//  Created by Ilya Pokhodin on 23.10.2021.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    
    @IBOutlet var redLightSignal: UIView!
    @IBOutlet var yellowLightSignal: UIView!
    @IBOutlet var greenLightSignal: UIView!
    @IBOutlet var changeButtonText: UIButton!
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    private var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightSignal.alpha = lightIsOff
        yellowLightSignal.alpha = lightIsOff
        greenLightSignal.alpha = lightIsOff
        
        redLightSignal.layer.cornerRadius = redLightSignal.frame.width / 2
        yellowLightSignal.layer.cornerRadius = yellowLightSignal.frame.width / 2
        greenLightSignal.layer.cornerRadius = greenLightSignal.frame.width / 2
        
        changeButtonText.setTitle("START", for: .normal)
    }

    @IBAction func changeLight() {
        if changeButtonText.currentTitle == "START" {
            changeButtonText.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redLightSignal.alpha = lightIsOn
            greenLightSignal.alpha = lightIsOff
            currentLight = .yellow
        case .yellow:
            yellowLightSignal.alpha = lightIsOn
            redLightSignal.alpha = lightIsOff
            currentLight = .green
        case .green:
            greenLightSignal.alpha = lightIsOn
            yellowLightSignal.alpha = lightIsOff
            currentLight = .red
        }
        
    }
    
}

