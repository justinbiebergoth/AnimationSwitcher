//
//  ViewController.swift
//  AnimationSwitcher
//
//  Created by hiirari on 01.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationDescriptionTextView: UITextView! {
        didSet {
            animationDescriptionTextView.text = animation.description
        }
    }

    private var animation = Animation.getRandomAnimation()

    @IBAction func startAnimation(_ sender: UIButton) {
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate()
        
        
        animationDescriptionTextView.text = animation.description
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
        
    }

    private func setViewLabels() {
        animationDescriptionTextView.text = animation.description
        
    }

}

