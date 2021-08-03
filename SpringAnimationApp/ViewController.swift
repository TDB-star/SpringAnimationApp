//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Tatiana Dmitrieva on 03/08/2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var runButton: SpringButton!
    
    private let anim = Spring.AnimationPreset.allCases
    private var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = "Press Button 😜"
    }
    
    @IBAction func runButtonPressed() {
        setAnimation()
        animationView.animate()
    }
   
    private func setAnimation() {
        
        currentIndex += 1
        animationView.animation = anim[currentIndex % anim.count].rawValue
        infoLabel.text = anim[currentIndex % anim.count].rawValue
        runButton.setTitle(anim[(currentIndex + 1) % anim.count].rawValue, for: .normal)
    }
}

