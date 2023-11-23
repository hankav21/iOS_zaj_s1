//
//  ViewController.swift
//  timer
//
//  Created by student on 23/11/2023.
//

import UIKit

class ViewController: UIViewController {

    var time = Timer()
    var count = 0
    var odliczamy = false
    var zapauzowane = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var label: UILabel!
    
    @IBAction func start(_ sender: Any) {
        
        if (odliczamy == false && count == 0){
            //wywoluj co sek
            var liczba = Int(podanyCzas.text ?? "nie liczba")
            count = liczba!
            time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updatetime), userInfo: nil, repeats: true)
        }
        else if(count>0 && zapauzowane){
            zapauzowane = false
            odliczamy = true
            time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updatetime), userInfo: nil, repeats: true)        }
    }
    
    @IBAction func pauza(_ sender: Any) {
        //zatrzymuej update time (ale timer wciaz nalicza)
        time.invalidate()
        zapauzowane = true
    }
    
    @IBAction func koniec(_ sender: Any) {
        time.invalidate()
        count = 0
        label.text = "\(count)"
        odliczamy = false
    }
    
    @IBAction func podanyczas(_ sender: Any) {
    
    }
    @IBOutlet weak var podanyCzas: UITextField!
    
    @objc func updatetime(){
        
        if(count > 0){
            count -= 1
            
            var min = count / 60
            var sek = count % 60
            label.text = "\(min):\(sek)"

            //label.text = "\(count)"
        }else{
            odliczamy = false
        }
    }
}

