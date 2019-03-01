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
    
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    @IBOutlet weak var choice4: UIButton!
    
    var choices = [UIButton]()
    
    var situations = [Situation]()
    
    var currentSituation = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentSituation = 0;
        
        choices = [choice1, choice2, choice3, choice4]
        
        loadSituations();
        displaySituation();
    }
    
    
    func displaySituation(){
        
        for choice in choices {
            choice.isHidden = true;
        }
        
        
        let s = situations[currentSituation];
        
        histoire.text = s.text
        //TODO : set background, image
        
        for nextPos in s.destination {
            let intPos = s.destination.index(of: nextPos);
            
            choices[intPos!].setTitle(s.destinationText[intPos!], for: .normal);
            choices[intPos!].isHidden = false;
            
        }
    }
    
    func loadSituations(){
        
        let list = [1,2,3]
        let list2 = ["1","2","3"]
        
        let situation = Situation(text: "A que coucou bonjour monsieur patate. comment allez-vus aujourd'hui? Trés bien et vous lol. je m'appelle Thomas le chien allemente t je mange des os de boeuf", destination: list, destinationText: list2);
        
        let situation2 = Situation(text: "A", destination: list, destinationText: list2);
        
        situations.append(situation);
        situations.append(situation2);
        
    }
    
    
    
    @IBAction func clickChoice1(_ sender: Any) {
        currentSituation = situations[currentSituation].destination[0]
        displaySituation()
    }
    
    
    @IBAction func clickChoice2(_ sender: Any) {
        currentSituation = situations[currentSituation].destination[1]
        displaySituation()
    }
    
    
    @IBAction func clickChoice3(_ sender: Any) {
        currentSituation = situations[currentSituation].destination[2]
        displaySituation()
    }
    
    @IBAction func clickChoice4(_ sender: Any) {
        currentSituation = situations[currentSituation].destination[3]
        displaySituation()
    }
}
