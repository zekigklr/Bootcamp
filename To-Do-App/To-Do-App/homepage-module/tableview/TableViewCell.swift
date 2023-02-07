//
//  TableViewCell.swift
//  To-Do-App
//
//  Created by Zeki Gökler on 6.02.2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var todoInfo: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
