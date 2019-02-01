//
//  FirstViewController.swift
//  newToDoList
//
//  Created by Osama Soliman on 1/31/19.
//  Copyright © 2019 Osama Soliman. All rights reserved.
//

import UIKit

var toDoList = [String]()

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    @IBOutlet var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if ((UserDefaults.standard.object(forKey: "toDoList")) != nil)
        {
        toDoList = UserDefaults.standard.object(forKey: "toDoList") as! [String]
        }
    }
    
    
    
    
    
    
    open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    
    open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = toDoList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        if(editingStyle == UITableViewCell.EditingStyle.delete){
            toDoList.remove(at: indexPath.row)
            UserDefaults.standard.set(toDoList, forKey: "toDoList")
            tableView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    

}

