
//
//  ChatTableViewCell.swift
//  Texniki_tapshiriq
//
//  Created by Famil Mustafayev on 27.01.2021.
//  Copyright © 2021 Famil Mustafayev. All rights reserved.
//

import UIKit
class ChatTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewChat: ImageExtension!
    @IBOutlet weak var labelChat: LabelExtension!
    @IBOutlet weak var messajeLabel: RightLabelExtension!
    @IBOutlet weak var imageViewMessaje: ImageExtension!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
