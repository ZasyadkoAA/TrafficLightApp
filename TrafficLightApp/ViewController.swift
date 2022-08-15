//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Александр Засядько on 10.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var switchButton: UIButton!
    
    var lightOn: CGFloat = 1
    var lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = 60
        yellowView.layer.cornerRadius = 60
        greenView.layer.cornerRadius = 60
        switchButton.layer.cornerRadius = 10
        yellowView.alpha = lightOff
        greenView.alpha = lightOff
        
    }

    @IBAction func switchButtonPress() {
        if switchButton.currentTitle == "START" {
            switchButton.setTitle("NEXT", for: .normal)
        }
        if redView.alpha == 1 {
            redView.alpha = lightOff
            yellowView.alpha = lightOn
        } else if yellowView.alpha == 1 {
            yellowView.alpha = lightOff
            greenView.alpha = lightOn
        } else if greenView.alpha == 1 {
            greenView.alpha = lightOff
        } else {
            redView.alpha = lightOn
        }
            
        }

}

