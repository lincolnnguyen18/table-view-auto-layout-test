//
//  TestTableViewCell.swift
//  table view auto layout test
//
//  Created by Lincoln Nguyen on 2/6/21.
//

import UIKit

class TestTableViewCell: UITableViewCell {
    @IBOutlet weak var testLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
