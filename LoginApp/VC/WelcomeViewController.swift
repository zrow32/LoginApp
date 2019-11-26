//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Vladimir Zhirov on 11/26/19.
//  Copyright © 2019 Vladimir Zhirov. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var welcome: String!
    
    @IBOutlet weak var welcomeLabel: UILabel!
 
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Welcome \(welcome!))!" // doesn't unwrap without
        // "!"
 
        let newLayer = CAGradientLayer()
        newLayer.colors = [UIColor.blue, UIColor.purple.cgColor]
        newLayer.frame = view.frame
        
        view.layer.insertSublayer(newLayer, at: 0)

    }
}
