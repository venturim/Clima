//
//  ViewController.swift
//  Clima
//
//  Created by Fernando Venturim on 24/01/18.
//  Copyright © 2018 Fernando Venturim. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let itens = ["fernando","leonardo","cleia","arnobio"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
 
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListaCell",for:indexPath)
        cell.textLabel?.text = itens[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itens[indexPath.row])
        
        
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

