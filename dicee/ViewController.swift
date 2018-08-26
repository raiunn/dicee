//
//  ViewController.swift
//  dicee
//
//  Created by 梅北文仁 on 2018/06/06.
//  Copyright © 2018年 梅北文仁. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randamDiceIndex1 : Int = 0
    var randamDiceIndex2 : Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImage()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImage()

    }
    func updateDiceImage(){
        randamDiceIndex1 = Int(arc4random_uniform(6))
        randamDiceIndex2 = Int(arc4random_uniform(6))
        
        print(randamDiceIndex1)
        
        diceImageView1.image = UIImage(named: diceArray[randamDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randamDiceIndex2])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateDiceImage()
    }
}

