//
//  FriendCell.swift
//  TableViewWithMultipleCellTypes
//
//  Created by 费凯峰 on 2019/3/19.
//  Copyright © 2019 费凯峰. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {
    
    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var item: Friend? {
        didSet {
            guard let item = item else { return }
            
            if let pictureUrl = item.pictureURL {
                pictureImageView.image = UIImage(named: pictureUrl)
            }
            nameLabel.text = item.name
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
        pictureImageView?.layer.cornerRadius = pictureImageView.frame.width/2.0
        pictureImageView?.clipsToBounds = true
        pictureImageView?.contentMode = .scaleAspectFit
        pictureImageView?.backgroundColor = UIColor.lightGray
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
