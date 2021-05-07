//
//  ViewController.swift
//  Task8
//
//  Created by 三浦　一真 on 2021/04/28.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var slider: UISlider!

    private var appDelegate: AppDelegate? {
        UIApplication.shared.delegate as? AppDelegate
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if let appDelegate = appDelegate {
            slider.value = appDelegate.sliderValue ?? 0.0
            decideLabelText()
        }
    }
    
    @IBAction private func decideValue(_ sender: Any) {
        if let appDelegate = appDelegate {
            appDelegate.sliderValue = slider.value
            decideLabelText()
        }
    }
    
    private func decideLabelText() {
        label.text = String(slider.value)
    }
}
