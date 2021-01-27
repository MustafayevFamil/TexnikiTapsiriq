//
//  CollectionViewController.swift
//  RabiteBank_Texniki_Tapsiriq
//
//  Created by Famil Mustafayev on 27.01.2021.
//  Copyright © 2021 Famil Mustafayev. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    let usersPhoto = [ "John", "Jonathan", "Mark", "Maykl", "Chloe", "Daniel", "Jack"]
    let messaje = ["Hola amigos .02:18 PM",
                   "This Flutter app rocks 😍😍😍.11:13AM",
                   "Group chats, photo and video.wow🔥",
                   "It saved me 4 months of development😎",
                   "There are so many feature here 😍.11:12",
                   "Wow, this is amazing🔥🔥.11:11AM",
                   "Mark sent a video. 05:33 PM"]
    override func viewDidLoad() {
        super.viewDidLoad()
        setupItemButtons()
        setupTextField()
        // Do any additional setup after loading the view.
    }
    private func setupTextField(){
        textField.layer.cornerRadius = 10
    }
    private func setupItemButtons(){
        let btn1 = UIButton(type: .custom)
        btn1.setImage(UIImage(named: "left-24"), for: .normal)
        btn1.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        btn1.addTarget(self, action: #selector(createLeftButton), for: .touchUpInside)
        let item1 = UIBarButtonItem(customView: btn1)
        
        let btn2 = UIButton(type: .custom)
        btn2.setImage(UIImage(named: "settings-24"), for: .normal)
        btn2.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        btn2.addTarget(self, action: #selector(createSettingsButton), for: .touchUpInside)
        let item2 = UIBarButtonItem(customView: btn2)
        
        self.navigationItem.setLeftBarButtonItems([item1], animated: true)
        
        self.navigationItem.setRightBarButtonItems([item2], animated: true)
    }
    @objc private func createLeftButton(){
        let firstViewController = self.storyboard?.instantiateViewController(withIdentifier: "navigationController")
        self.present(firstViewController!, animated: true)
        print("Back")
    }
    @objc private func createSettingsButton(){
        print("Settings")
    }
    @IBAction func photoButton(_ sender: Any) {
        print("Photo")
    }
    @IBAction func sendButton(_ sender: Any) {
        print("Send")
    }
}
extension CollectionViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersPhoto.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 3 == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellCollection", for: indexPath) as! ColectionCell
            cell.imageCollectionCell.image = UIImage(named: usersPhoto[indexPath.row])
            cell.smsLabel.isHidden = true
            cell.imageCollectionCell.isHidden = false
            cell.sendSmsLabel.text = messaje[indexPath.row]
            cell.sendSmsUserImage.image = UIImage(named: usersPhoto[indexPath.row])
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellCollection", for: indexPath) as! ColectionCell
        cell.smsLabel.text = "\(messaje[indexPath.row]) \(messaje[indexPath.row])"
        cell.imageCollectionCell.isHidden = true
        cell.smsLabel.isHidden = false
        cell.sendSmsLabel.text = messaje[indexPath.row]
        cell.sendSmsUserImage.image = UIImage(named: usersPhoto[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 260
    }
}
