//
//  ViewController.swift
//  Sliders
//
//  Created by Stefan Iurin on 17.11.2023.
//

import UIKit

final class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    //MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSlider(redSlider, .red, 0.40)
        setupSlider(greenSlider, .green, 0.70)
        setupSlider(blueSlider, .blue, 0.30)
        
        setupLabel(redValueLabel, redSlider)
        setupLabel(greenValueLabel, greenSlider)
        setupLabel(blueValueLabel, blueSlider)
        
        setupView()
    }

    //MARK: - vIBAction
    
    @IBAction func redSliderAction() {
        setupLabel(redValueLabel, redSlider)
    }
    @IBAction func greenSliderAction() {
        setupLabel(greenValueLabel, greenSlider)
    }
    @IBAction func blueSliderAction() {
        setupLabel(blueValueLabel, blueSlider)
    }
    
    //MARK: - private functions
    
    private func setupSlider(_ slider: UISlider, _ color: UIColor, _ value: Float) {
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = color
        slider.value = value
    }
    
    private func setupLabel(_ label: UILabel, _ slider: UISlider) {
        label.text = String(format: "%.2f", slider.value)
        
        setupView()
    }
    
    private func setupView() {
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                           green: CGFloat(greenSlider.value),
                                           blue: CGFloat(blueSlider.value),
                                           alpha: 1)
    }
}

