//
//  ViewController.swift
//  ProjectLight
//
//  Created by Samuel Embaye on 2/3/26.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet var lightButton: UIButton!
    var lightOn: Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateUI()

        // Do any additional setup after loading the view.
    }
    fileprivate func UpdateUI() {
        if lightOn {
            view.backgroundColor = .black
            lightButton.setTitle("Turn ON", for: .normal)
        }
        else {
            view.backgroundColor = .green
            lightButton.setTitle("Turn off", for: .normal)
        }
    }
    
    @IBAction func buttomPress(_ sender: Any) {
      
           lightOn.toggle()
            UpdateUI()
        
    }
    func setTitle(for button: UIButton, title: String) {
        button.setTitle(title, for: .normal)
       
    }
   

}

