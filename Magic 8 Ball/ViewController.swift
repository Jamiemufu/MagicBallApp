//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var magicImage: UIImageView!
    @IBOutlet weak var questionButton: UIButton!
    
    let ballArray = [ #imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png") ]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // set border for button
        questionButton.layer.cornerRadius = 10
        questionButton.layer.borderWidth = 1
        
    }
    
    @IBAction func questionButtonPressed(_ sender: UIButton) {
        // get random image from array on button press
        magicImage.image = ballArray[ Int.random(in: 0...4) ]
        
    }

}

