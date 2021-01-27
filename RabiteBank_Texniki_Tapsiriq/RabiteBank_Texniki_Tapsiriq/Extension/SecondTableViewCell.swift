//
//  SecondTableViewCell.swift
//  Texniki_tapshiriq
//
//  Created by Famil Mustafayev on 27.01.2021.
//  Copyright © 2021 Famil Mustafayev. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageViewSecond: ImageExtension!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var messajeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageViewSecond.layer.cornerRadius = imageViewSecond.frame.width / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
