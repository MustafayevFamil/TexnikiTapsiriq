//
//  TableViewController.swift
//  Texniki_tapshiriq
//
//  Created by Famil Mustafayev on 27.01.2021.
//  Copyright © 2021 Famil Mustafayev. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController{
    var index: Int = 0
    
    @IBOutlet weak var newSearchBar: UISearchBar!
    
    private let reuseIdentifierCollection = "Cell"
    private let reuseIdentifierTableView = "CellSecond"
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBarButtonItem()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    private func setupBarButtonItem(){
    let btn1 = UIButton(type: .custom)
    btn1.setImage(UIImage(named: "menu-48"), for: .normal)
    btn1.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
    btn1.addTarget(self, action: #selector(creatMenuButton), for: .touchUpInside)
    let item1 = UIBarButtonItem(customView: btn1)
    
    let btn2 = UIButton(type: .custom)
    btn2.setImage(UIImage(named: "sms-32"), for: .normal)
    btn2.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
    btn2.addTarget(self, action: #selector(creatSmsButton), for: .touchUpInside)
    let item2 = UIBarButtonItem(customView: btn2)
    
    self.navigationItem.setLeftBarButtonItems([item1], animated: true)
    
    self.navigationItem.setRightBarButtonItems([item2], animated: true)
    }
    @objc private func creatMenuButton(){
        print("Menu")
    }
    @objc private func creatSmsButton(){
        print("SMS")
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return usersPhoto.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierCollection, for: indexPath) as! TableViewCell
            return cell
        }
        // Configure the cell...
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierTableView, for: indexPath) as! SecondTableViewCell
        cell.imageViewSecond.image = UIImage(named:usersPhoto[indexPath.row])
        cell.usernameLabel.text = nameUsers[indexPath.row]
        cell.messajeLabel.text = messaje[indexPath.row]
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 100
        }
        return 100
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "segue", sender: self)
        index = indexPath.row
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segue"{
                let dvc = segue.destination as! ChatViewController
                dvc.word = messaje[1]
                dvc.imageString = "Mark"
                dvc.username = "InstaMobile Team"
            
        }

     }
    
}
