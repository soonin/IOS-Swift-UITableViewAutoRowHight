//
//  TableViewCell.swift
//  IOS-Swift-UITableViewAutoRowHight
//
//  Created by Pooya on 2018-09-13.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
