//
//  Ujjwal_TableViewCell.swift
//  Ujjwal_Yellow_TicTacToe
//
//  Created by Ujjwal Bhasin on 2019-05-28.
//  Copyright © 2019 Ujjwal Bhasin. All rights reserved.
//

import UIKit

class Ujjwal_TableViewCell: UITableViewCell {

    @IBOutlet weak var WIn_Loss_Image: UIImageView!
    @IBOutlet weak var Who_Won: UILabel!
    @IBOutlet weak var date_played: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
