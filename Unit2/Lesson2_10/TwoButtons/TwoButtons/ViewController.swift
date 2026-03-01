//
//  ViewController.swift
//  TwoButtons
//
//  Created by Samuel Embaye on 2/28/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Label:", label as Any)
        print("TextField:", textfield as Any)
        // Do any additional setup after loading the view.
    }
  @IBAction func setTextButtonTapped(_ sender: UIButton ) {
      label.text = textfield.text
    }
    @IBAction func clearTextButtonTapped(_ sender: UIButton) {
        textfield.text = ""
        label.text = ""
    }


}

