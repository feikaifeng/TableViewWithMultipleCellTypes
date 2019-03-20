//
//  EmailCell.swift
//  TableViewWithMultipleCellTypes
//
//  Created by 费凯峰 on 2019/3/20.
//  Copyright © 2019 费凯峰. All rights reserved.
//

import UIKit

class EmailCell: UITableViewCell {
    
    @IBOutlet weak var emailLabel: UILabel!
    
    var item: ProfileViewModelItem? {
        didSet {
            guard let item = item as? ProfileViewModelEmailItem else { return }
            emailLabel.text = item.email
        }
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
