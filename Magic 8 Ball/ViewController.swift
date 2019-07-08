//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Arkadiusz Piotrowski on 08/07/2019.
//  Copyright © 2019 Arkadiusz Piotrowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var random8BallIndex: Int = 0;
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage() {
        random8BallIndex = Int.random(in: 0 ... 4)
        
        imageView.image = UIImage(named: ballArray[random8BallIndex])
    }
    
}

