//
//  ViewController.swift
//  HW2.2
//
//  Created by Valeriya on 23.05.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redSllider: UISlider!
    
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var color: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLabel.text = String(redSllider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
        
        color.backgroundColor = UIColor(red: CGFloat(redSllider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }

    @IBAction func redSliderOnChange() {
        redLabel.text = String(Float(round(100 * redSllider.value)/100))
        color.backgroundColor = UIColor(red: CGFloat(redSllider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    
    @IBAction func greenSliderOnChange() {
        greenLabel.text = String(Float(round(100 * greenSlider.value)/100))
        color.backgroundColor = UIColor(red: CGFloat(redSllider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    
    @IBAction func blueSliderOnChange() {
        blueLabel.text = String(Float(round(100 * blueSlider.value)/100))
        color.backgroundColor = UIColor(red: CGFloat(redSllider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
}
