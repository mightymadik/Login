//
//  NewViewController.swift
//  Bonus
//
//  Created by MacBook on 09.12.2022.
//

import UIKit

class NewViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    struct info{
        let price: String
        let name: String
    }
    struct char{
        let proc: String
    }
    
    let array = [
        info(price: "150$", name: "Samgsung A60"),
        info(price: "200$", name: "Huawei Lite"),
        info(price: "300$", name: "Xiaomi Mi 9")
    ]
    
    let infoArray = ["Snapdragon 300", "AMD 100X", "Intel I5"]
        
    
    let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
        view.backgroundColor = .white
        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return array.count
        }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        let array = array[indexPath.row]
        cell.accessoryType = .detailDisclosureButton
        cell.textLabel?.text = array.name
        cell.detailTextLabel?.text = array.price
        cell.textLabel?.font = UIFont.systemFont(ofSize: 20.0, weight: .bold)
        
        return cell
    }
    
    
//    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) -> UITableViewCell {
//       var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//       cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
//       let array = array[indexPath.row]
//       array.name[indexPath.row] = infoArray[indexPath.row]
//
//
//       return cell
//    }
    
    
    
}
