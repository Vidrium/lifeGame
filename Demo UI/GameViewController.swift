//
//  GameViewController.swift
//  Demo UI
//
//  Created by Developer on 07/02/2019.
//  Copyright © 2019 Ynov. All rights reserved.
//

import UIKit


class GameViewController: UIViewController {
    
    @IBOutlet weak var histoire: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let list = [1,2]
        let list2 = ["1","2"]
        
        let situation = Situation(text: "A que coucou bonjour monsieur patate. comment allez-vus aujourd'hui? Trés bien et vous lol. je m'appelle Thomas le chien allemente t je mange des os de boeuf", destination: list, destinationText: list2)
        
        histoire.text = situation.text
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
