//
//  MessajeTableViewCell.swift
//  RabiteBank_Texniki_Tapsiriq
//
//  Created by Famil Mustafayev on 27.01.2021.
//  Copyright © 2021 Famil Mustafayev. All rights reserved.
//

import UIKit

class MessajeTableViewCell: UITableViewCell {

    @IBOutlet weak var messajeLabelCell: RightLabelExtension!
    @IBOutlet weak var imageMessajeCell: ImageExtension!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
