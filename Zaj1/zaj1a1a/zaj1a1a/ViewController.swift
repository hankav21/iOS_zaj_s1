//
//  ViewController.swift
//  zaj1a1a
//
//  Created by student on 19/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    //terzeczy przeciagamy z przytrzymaniem ctrl
    @IBOutlet var label: UILabel!
    
    @IBOutlet weak var butt: UIButton!
    
    @IBAction func button(_ sender: Any) {
        
        label.text = tfield.text
        label.textColor = UIColor.blue
        butt.setTitle(tfield.text,
                      for: UIControl.State.normal)
    }
    
    
    @IBOutlet weak var tfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
  
}

