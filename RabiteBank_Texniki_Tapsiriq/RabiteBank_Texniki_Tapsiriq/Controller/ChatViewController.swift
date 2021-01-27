//
//  ChatViewController.swift
//  Texniki_tapshiriq
//
//  Created by Famil Mustafayev on 27.01.2021.
//  Copyright © 2021 Famil Mustafayev. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textField: UITextField!
    var word = ""
    var imageString = ""
    var username = "Mark"
    var messaje = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = username
        setupItemButtons()
        setupTextField()
        // Do any additional setup after loading the view.
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension ChatViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 3 == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "chatCell", for: indexPath) as! ChatTableViewCell
            cell.imageViewChat.image = UIImage(named: imageString)
            cell.labelChat.text = word
            cell.messajeLabel.text = "Wow, this is amazing🔥🔥.11:11AM"
            cell.imageViewMessaje.image = UIImage(named: "Mark")
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "chatCell", for: indexPath) as! ChatTableViewCell
        
        cell.imageViewChat.image = UIImage(named: imageString)
        cell.labelChat.text = word
        cell.messajeLabel.text = "There are so many feature here 😍.11:12"
        cell.imageViewMessaje.image = UIImage(named: "Mark")
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 150
    }
    
    
}
