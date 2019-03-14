//
//  ViewController.swift
//  Demo UI
//
//  Created by Developer on 31/01/2019.
//  Copyright © 2019 Ynov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainJouerButton: UIButton!
    @IBOutlet var mainOptionsButton: UIButton!
    @IBOutlet var mainQuitterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mainJouerButton.applyDesign()
        mainOptionsButton.applyDesign()
        mainQuitterButton.applyDesign()

    }
}

extension UIButton {
    func applyDesign () {
        self.backgroundColor = UIColor(red:1.00, green:0.72, blue:0.00, alpha:1.0)
        self.layer.cornerRadius = self.frame.height/2
        self.setTitleColor(UIColor.white, for: .normal)
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 4
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize (width: 0, height: 0)
        self.frame.size = CGSize (width: 50, height: 20)
    }
    
}
