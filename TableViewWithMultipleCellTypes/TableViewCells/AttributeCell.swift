//
//  AttributeCell.swift
//  TableViewWithMultipleCellTypes
//
//  Created by 费凯峰 on 2019/3/20.
//  Copyright © 2019 费凯峰. All rights reserved.
//

import UIKit

class AttributeCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    var item: ProfileAttribute? {
        didSet {
            titleLabel.text = item?.key
            valueLabel.text = item?.value
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
