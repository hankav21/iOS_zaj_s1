//
//  ViewController.swift
//  pies
//
//  Created by student on 09/11/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func button(_ sender: Any) {
        let wiek = Int(podanyWiek.text ?? "nie liczba")
        let wynik = wiek! * 7
        wyswietlanyWynik.text = "twoej pies ma \(wynik) lat"
        
    }
    @IBOutlet weak var podanyWiek: UITextField!
    
    @IBOutlet weak var wyswietlanyWynik: UILabel!
    
    //Czesc obliczania BMI
    @IBOutlet weak var wzrostBMI: UITextField!
    @IBOutlet weak var wagaBMI: UITextField!
    
    @IBOutlet weak var wynikBMI: UILabel!
    
    @IBAction func buttonBMI(_ sender: Any) {
        let wzrost = Double(wzrostBMI.text ?? "nie liczba")
        let wzrost_w_metrach = wzrost!/100.0
        let waga = Double(wagaBMI.text ?? "nie liczba")
        let obliczoneBMI = round(( waga! / (wzrost_w_metrach * wzrost_w_metrach) * 100))/100
        //wynikBMI.text = "twoje BMI wynosi \(obliczoneBMI)"
        
        if(obliczoneBMI < 18.49) {
            wynikBMI.text = "twoje BMI wynosi \(obliczoneBMI) = niedowaga"
        }else if (obliczoneBMI < 25.0) {
            wynikBMI.text = "twoje BMI wynosi \(obliczoneBMI) = waga prawidlowa"
        }else if (obliczoneBMI < 30.0) {
            wynikBMI.text = "twoje BMI wynosi \(obliczoneBMI) = nadwaga"
        }else {
            wynikBMI.text = "twoje BMI wynosi \(obliczoneBMI) = otylosc"
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

