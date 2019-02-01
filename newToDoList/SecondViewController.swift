//
//  SecondViewController.swift
//  newToDoList
//
//  Created by Osama Soliman on 1/31/19.
//  Copyright © 2019 Osama Soliman. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet var newItemText: UITextField!
    @IBAction func addItemBottum(_ sender: Any) {
        
        toDoList.append(newItemText.text!)
        newItemText.text = ""
        UserDefaults.standard.set(toDoList, forKey: "toDoList")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
}

