//
//  SecondViewController.swift
//  Task8
//
//  Created by 三浦　一真 on 2021/05/06.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var slider: UISlider!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let delegate = UIApplication.shared.delegate as! AppDelegate
        slider.value = delegate.sliderValue ?? 0.0
        decideLabelText()
    }

    @IBAction private func decideValue(_ sender: Any) {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        delegate.sliderValue = slider.value
        decideLabelText()
    }
    
    private func decideLabelText() {
        label.text = String(slider.value)
    }
}
