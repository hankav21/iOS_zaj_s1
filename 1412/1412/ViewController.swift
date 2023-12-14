//
//  ViewController.swift
//  1412
//
//  Created by student on 14/12/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        //let cell = UITableViewCell(style: .default, reuseIdentifier: "Komorka")
        let cell = tableView.dequeueReusableCell(withIdentifier: "Komorka", for: indexPath) as! widokWielokolumnowy
        let liczby = Int(sliderOut.value * 20)
        //cell.textLabel?.text = String(liczby * indexPath.row + 1 )
        cell.lab1?.text = String(liczby * indexPath.row + 1 )
        cell.lab2?.text = String(liczby * indexPath.row + 1 )
        return cell
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var tblVievOut: UITableView!
    
    @IBOutlet weak var sliderOut: UISlider!
    
    @IBAction func slider(_ sender: Any) {
        tblVievOut.reloadData()
    }
}

class widokWielokolumnowy: UITableViewCell{
    @IBOutlet weak var lab1: UILabel!
    @IBOutlet weak var lab2: UILabel!
    
    
    
}
