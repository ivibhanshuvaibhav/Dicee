//
//  ViewController.swift
//  Dicee
//
//  Created by Vibhanshu Vaibhav on 19/07/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var diceValue1: Int = 0
    var diceValue2: Int = 0

    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        updateDiceImage()
    }
    
    func updateDiceImage() {
        
        diceValue1 = Int(arc4random_uniform(6) + 1)
        diceValue2 = Int(arc4random_uniform(6) + 1)
        
        diceImage1.image = UIImage(named:"dice\(diceValue1)")
        diceImage2.image = UIImage(named:"dice\(diceValue2)")
        
    }
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }

}

