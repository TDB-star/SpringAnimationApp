//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Tatiana Dmitrieva on 03/08/2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var runButton: SpringButton!
    
    //private let anim = Spring.AnimationPreset.allCases
    private var currentIndex = 0
    
    let aa = AnimationModel.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = "Press Button 😜"
        animationLabel.isHidden = true
    }
    
    @IBAction func runButtonPressed() {
       setAnimation()
       animationView.animate()
    }
   
    private func setAnimation() {
        
        animationLabel.isHidden = false
        currentIndex += 1
        
        animationView.animation = DataManager.shared.animation[currentIndex % DataManager.shared.animation.count].rawValue
        animationView.force = CGFloat(aa[currentIndex % aa.count].force)
        animationView.duration = CGFloat(aa[currentIndex % aa.count].duration)
        animationView.delay = CGFloat(aa[currentIndex % aa.count].delay)
        animationView.velocity = CGFloat(aa[currentIndex % aa.count].velocity)
        
        animationLabel.text = "Spring animation: \(DataManager.shared.animation[currentIndex % DataManager.shared.animation.count].rawValue)"
        infoLabel.text = aa[currentIndex % aa.count].totalInformation
        runButton.setTitle(DataManager.shared.animation[(currentIndex + 1) % DataManager.shared.animation.count].rawValue, for: .normal)
        
        // Моя старая модель:
        //        animationView.animation = (anim[currentIndex % anim.count].rawValue)
        //        infoLabel.text = anim[currentIndex % anim.count].rawValue
        //        runButton.setTitle(anim[(currentIndex + 1) % anim.count].rawValue, for: .normal)
    }
}


