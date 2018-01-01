//
//  ViewController.swift
//  Dice2
//
//  Created by Faizan Gaima on 07/11/17.
//  Copyright © 2017 Faizan Gaima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    
    var randomNumber1 = 0
    var randomNumber2 = 0
    var images = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDice()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
            updateDice()
        
    }
    
    func updateDice(){
        randomNumber1 = Int(arc4random_uniform(6))
        randomNumber2 = Int(arc4random_uniform(6))
        image1.image = UIImage(named: images[randomNumber1])
        image2.image = UIImage(named: images[randomNumber2])

    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDice()
    }
    
}

