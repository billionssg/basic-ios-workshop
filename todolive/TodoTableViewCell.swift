//
//  TodoTableViewCell.swift
//  todolive
//
//  Created by Billion MOKAPOS on 23/06/21.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

    @IBOutlet var todoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setCell(name: String) {
        todoLabel.text = name
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
