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
    let animationCurves = Spring.AnimationCurve.allCases
    
    private var currentIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.layer.cornerRadius = 12
    }
    
    @IBAction func runButtonPressed(_ sender: SpringButton) {
        setAnimation()
        animationView.animate()
//        currentIndex += 1
//        animationView.animation = animations[currentIndex % animations.count].rawValue
//        animationView.animate()
    }
    
    func setAnimation() {
        currentIndex += 1
        animationView.animation = anim[currentIndex].rawValue
    }
}

