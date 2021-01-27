//
//  ColectionCell.swift
//  RabiteBank_Texniki_Tapsiriq
//
//  Created by Famil Mustafayev on 27.01.2021.
//  Copyright © 2021 Famil Mustafayev. All rights reserved.
//

import UIKit

class ColectionCell: UITableViewCell {

    @IBOutlet weak var smsLabel: LabelExtension!
    @IBOutlet weak var imageCollectionCell: ImageExtension!
    @IBOutlet weak var userImage: ImageExtension!
    @IBOutlet weak var sendSmsLabel: RightLabelExtension!
    @IBOutlet weak var sendSmsUserImage: ImageExtension!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
