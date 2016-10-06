//
//  ViewController.swift
//  HellaCells
//
//  Created by Flatiron School on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "numCell", for: indexPath)
        
        cell.textLabel?.text = createNum()[indexPath.row]
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "number" { return }
        
        if let destination = segue.destination as? numberVC,
        let indexPath =  tableView.indexPathForSelectedRow {
            
            destination.numberString = createNum()[indexPath.row]
            
        }
        
    }
    
    
    
    func createNum() -> [String] {
        var numbers = [String]()
        for x in 1...100 {
            numbers.append(String(x))
        }
        return numbers
    }
    
   
}

