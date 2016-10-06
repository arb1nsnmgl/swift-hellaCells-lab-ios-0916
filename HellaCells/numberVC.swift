//
//  numberVC.swift
//  HellaCells
//
//  Created by Arvin San Miguel on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class numberVC: UIViewController {
    
    var numberString: String?
    
    
    @IBOutlet weak var number: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let number = number {
            number.text = numberString
            navigationItem.title = "Number"
        }
    }

}
