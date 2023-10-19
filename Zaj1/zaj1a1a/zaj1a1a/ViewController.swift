//
//  ViewController.swift
//  zaj1a1a
//
//  Created by student on 19/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet var label: UILabel!
    
    @IBAction func button(_ sender: Any) {
        label.text = tfield.text
    }
    
    @IBOutlet weak var tfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

