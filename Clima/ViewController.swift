//
//  ViewController.swift
//  Clima
//
//  Created by Fernando Venturim on 24/01/18.
//  Copyright © 2018 Fernando Venturim. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var itens = ["fernando","leonardo","cleia","arnobio"]
    
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
    
    @IBAction func AddPress(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add Novo ", message: "", preferredStyle:.alert)
        
        
        let action = UIAlertAction(title: "Add Item", style: .default){(action) in
            
            print("Sucesso");
             print(textField.text)
            self.itens.append(textField.text!)
            self.tableView.reloadData()
        }
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Criar novo"
            textField = alertTextField
           
        }
        alert.addAction(action)
        
       present(alert, animated:true, completion: nil)
        
        
    }
}

