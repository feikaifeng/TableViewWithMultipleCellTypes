//
//  ViewController.swift
//  TableViewWithMultipleCellTypes
//
//  Created by 费凯峰 on 2019/3/19.
//  Copyright © 2019 费凯峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let profileViewModel = ProfileViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = profileViewModel
        tableView.delegate = profileViewModel
        
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
        
        tableView.register(AboutCell.nib, forCellReuseIdentifier: AboutCell.identifier)
        tableView.register(NamePictureCell.nib, forCellReuseIdentifier: NamePictureCell.identifier)
        tableView.register(FriendCell.nib, forCellReuseIdentifier: FriendCell.identifier)
        tableView.register(AttributeCell.nib, forCellReuseIdentifier: AttributeCell.identifier)
        tableView.register(EmailCell.nib, forCellReuseIdentifier: EmailCell.identifier)
        
    }
}

