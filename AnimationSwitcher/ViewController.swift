//
//  ViewController.swift
//  AnimationSwitcher
//
//  Created by hiirari on 01.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    private var animation = AnimationDataManager.getRandomAnimation()

    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationButton: SpringButton!
    
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setViewLabels()
    
    }

    @IBAction func startAnimation(_ sender: SpringButton) {
        animationView.animation = animation.preset
        animationView.animate()
        setViewLabels()
        animation = AnimationDataManager.getRandomAnimation()
        animationButton.setTitle("Run \(animation.preset)", for: .normal)
        
        
        
    }

    private func setViewLabels() {
        presetLabel.text = animation.preset
        curveLabel.text = animation.curve
        forceLabel.text = String(format: "%0.2f", animation.force)
        durationLabel.text = String(format: "%0.2f", animation.duration)
        delayLabel.text = String(format: "%0.2f", animation.delay)
        
    }

}

