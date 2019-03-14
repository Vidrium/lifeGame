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
    
    var plistData: [String: AnyObject] = [:]
    
    var currentSituation = "s1";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        choices = [choice1, choice2, choice3, choice4]
        loadSituations();
        displaySituation();
        choice1.applyDesign()
        choice2.applyDesign()
        choice3.applyDesign()
        choice4.applyDesign()
    }
    
    
    func displaySituation(){
        
        for choice in choices {
            choice.isHidden = true;
        }
        
        
        let s = plistData[currentSituation] as! NSArray
        
        histoire.text = s[0] as? String
        
        
        var position = 0;
        for _ in (s[2] as? NSArray)! {
            let strings = s[2] as! NSArray;
            choices[position].setTitle(strings[position] as? String, for: .normal);
            choices[position].isHidden = false;
            position += 1;
        }
    }
    
    func loadSituations(){
        
        var propertyListForamt =  PropertyListSerialization.PropertyListFormat.xml //Format of the Property List.
        
        let plistPath: String? = Bundle.main.path(forResource: "Situations", ofType: "plist")! //the path of the data
        let plistXML = FileManager.default.contents(atPath: plistPath!)!
        do {//convert the data to a dictionary and handle errors.
            plistData = try PropertyListSerialization.propertyList(from: plistXML, options: .mutableContainersAndLeaves, format: &propertyListForamt) as! [String:AnyObject]
            
        } catch {
            print("Error reading plist: \(error), format: \(propertyListForamt)")
        }
        print(plistData)
    }
    
    
    
    @IBAction func clickChoice1(_ sender: Any) {
        
        let s = plistData[currentSituation] as! NSArray
        let nextKeys = s[1] as! NSArray;
        currentSituation = (nextKeys[0] as? String)!;
        
        displaySituation()
    }
    
    
    @IBAction func clickChoice2(_ sender: Any) {
        
        let s = plistData[currentSituation] as! NSArray
        let nextKeys = s[1] as! NSArray;
        currentSituation = (nextKeys[1] as? String)!;
        
        displaySituation()
    }
    
    
    @IBAction func clickChoice3(_ sender: Any) {
        
        let s = plistData[currentSituation] as! NSArray
        let nextKeys = s[1] as! NSArray;
        currentSituation = (nextKeys[2] as? String)!;
        
        displaySituation()
    }
    
    @IBAction func clickChoice4(_ sender: Any) {
        
        let s = plistData[currentSituation] as! NSArray
        let nextKeys = s[1] as! NSArray;
        currentSituation = (nextKeys[3] as? String)!;
        
        displaySituation()
    }
}


