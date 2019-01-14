//
//  ViewController.swift
//  tableViewSectionTest
//
//  Created by CodeWell on 1/14/19.
//  Copyright © 2019 Ivana Stamardjioska. All rights reserved.
//

import UIKit

class  ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    

    
    
  
    var dobriCoeci:[Ucesnik] = []
    var losiCoeci:[Ucesnik] = []
    
     var ucesnici: [Ucesnik] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let temp = "ABCDFGHIJKLMNOP"
        for bukva in temp{
            let ucesnik = Ucesnik(ime:String(bukva))
            let odi:Bool = arc4random()%2 == 0
            ucesnik.odi = odi
            ucesnici.append(ucesnik)
        }
        
        for coek in ucesnici {
            if coek.odi{
                dobriCoeci.append(coek)
            } else {
                losiCoeci.append(coek)
            }
            
        }
        
        
        
        print(ucesnici)
        print(dobriCoeci)
        print(losiCoeci)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return dobriCoeci.count
        }
        
        return losiCoeci.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var ucesnik: Ucesnik
        if indexPath.section == 0 {
            ucesnik = dobriCoeci[indexPath.row]
            
        }
        else {
            ucesnik = losiCoeci[indexPath.row]
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "kelija")
        if let ucesnikCell = cell as? UcesnikTableViewCell {
            ucesnikCell.update(coek:ucesnik)
            
        }
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "DobriCoeci"
        }
        return "LosiCoeci"
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var ucesnik: Ucesnik
        if indexPath.section == 0 {
            ucesnik = dobriCoeci[indexPath.row]
        } else {
            ucesnik = losiCoeci[indexPath.row]
        }
        
        if ucesnik.odi {
            ucesnik.odi = false
        } else {
            ucesnik.odi = true
        }
        
        dobriCoeci = []
        losiCoeci = []
        
        for coek in ucesnici {
            if coek.odi{
                dobriCoeci.append(coek)
            } else {
                losiCoeci.append(coek)
            }
            
        tableView.reloadData()
        
    }
    }
    
    


}
