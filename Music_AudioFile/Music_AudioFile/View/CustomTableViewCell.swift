//
//  CustomTableViewCell.swift
//  Music_AudioFile
//
//  Created by Ngoc on 7/26/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var tiltleLbl: UILabel!
     @IBOutlet weak var genreLabel: UILabel!
     @IBOutlet weak var artistLabel: UILabel!
     @IBOutlet weak var filenameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
