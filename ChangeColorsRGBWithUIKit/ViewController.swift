//
//  ViewController.swift
//  ChangeColorsRGBWithUIKit
//
//  Created by Dmitry Logachev on 20.08.2021.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet weak var viewOfColor: UIView!
    
    @IBOutlet weak var redMeasure: UILabel!
    @IBOutlet weak var greenMeasure: UILabel!
    @IBOutlet weak var blueMeasure: UILabel!
    
    @IBOutlet weak var sliderForRed: UISlider!
    @IBOutlet weak var sliderForGreen: UISlider!
    @IBOutlet weak var sliderForBlue: UISlider!
    //MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewOfColor.layer.cornerRadius = 10
    }
    //MARK: - IB Actions
    @IBAction func changeColorForRed() {
        redMeasure.text = String(sliderForRed.value)
        summarizeSliderValues()
    }
    
    @IBAction func changeColorForGreen() {
        greenMeasure.text = String(sliderForGreen.value)
        summarizeSliderValues()
    }
    
    @IBAction func changeColorForBlue() {
        blueMeasure.text = String(sliderForBlue.value)
        summarizeSliderValues()
    }
    //MARK: - Public Methods
    func summarizeSliderValues() {
        let redValue = CGFloat(sliderForRed.value)
        let greenValue = CGFloat(sliderForGreen.value)
        let blueValue = CGFloat(sliderForBlue.value)
        viewOfColor.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
    }
}

