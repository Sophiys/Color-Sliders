//
//  ViewController.swift
//  Color Sliders
//
//  Created by София Овчинникова on 07.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorChangingView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSliderAction()
        greenSliderAction()
        blueSliderAction()
        
        colorChangingView.layer.cornerRadius = colorChangingView.frame.width/18
    }
    
    private func changeColor() {
        colorChangingView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    
    @IBAction func redSliderAction() {
        redLabel.text = "Red:\n\((round(redSlider.value*100)/100).formatted())"
        changeColor()
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = "Green:\n\((round(greenSlider.value*100)/100).formatted())"
        changeColor()
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = "Blue:\n\((round(blueSlider.value*100)/100).formatted())"
        changeColor()
    }
    
    
}

