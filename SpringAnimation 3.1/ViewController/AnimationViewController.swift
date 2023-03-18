//
//  ViewController.swift
//  SpringAnimation 3.1
//
//  Created by user on 17.03.2023.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {

    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
   
    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var animateButton: SpringButton!
    
    private var animation = Animation.randomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animateButton.setTitle("\(animation.preset)", for: .normal)
    }

    @IBAction func animationButton() {
        animate(with: animation)
      
    }
    
    private func animate(with animation: Animation) {
        springView.animation = animation.preset
        springView.curve = animation.curve
        springView.force = animation.force
        springView.duration = animation.duration
        springView.delay = animation.delay
        springView.animate()
        updateView(with: animation)
        self.animation = Animation.randomAnimation()
        animateButton.setTitle(animation.preset, for: .normal)
    }
    
    private func updateView(with data: Animation) {
        presetLabel.text = data.preset
        curveLabel.text = data.curve
        forceLabel.text = formatString(data.force)
        durationLabel.text = formatString(data.duration)
        delayLabel.text = formatString(data.delay)
    }
    
    private func formatString(_ number: CGFloat) -> String {
        String(format: "%.2f", number)
    }
    
}

