//
//  lista 1.swift
//  todo
//
//  Created by student on 11/01/2024.
//

import Foundation


import UIKit

var listaZadan = [String]()
var listaTerminow = [String]()


class lista1: UIViewController , UITableViewDelegate, UITableViewDataSource{

  

    @IBOutlet weak var tabela: UITableView!
    
 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return listaZadan.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    //let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
    //cell.textLabel?.text = listaZadan[indexPath.row] + listaTerminow[indexPath.row]
    //return cell
    
    //wersja dla 2 klolumn
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! widokWielokolumnowy
    //let liczby = 2
    cell.labelTask?.text = listaZadan[indexPath.row]
    cell.labelTermin?.text = listaTerminow[indexPath.row]
  
    return cell
}
//przeładowanie ekranu ponowne zaczytanie danych
override func viewDidAppear(_ animated: Bool) {
   tabela.reloadData()
}





override func viewDidLoad() {
    super.viewDidLoad()
    if UserDefaults.standard.object(forKey: "listazadan") != nil{
        listaZadan = UserDefaults.standard.object(forKey: "listazadan") as! [String]
        listaTerminow = UserDefaults.standard.object(forKey: "listaterminow") as! [String]    }
}
//kasowanie rekordow

func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
{
    if editingStyle == UITableViewCell.EditingStyle.delete{
        listaZadan.remove(at: indexPath.row)
        listaTerminow.remove(at: indexPath.row)
        
        UserDefaults.standard.set(listaZadan, forKey: "listazadan")
        tabela.reloadData()
        UserDefaults.standard.set(listaTerminow, forKey: "listaterminow")
        tabela.reloadData()
    }
    
    
}

   
}

class widokWielokolumnowy: UITableViewCell{
    @IBOutlet weak var labelTask: UILabel!
    @IBOutlet weak var labelTermin: UILabel!
    
}
