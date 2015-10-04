//
//  FriendDetailViewController.swift
//  Friendbook
//
//  Created by Mirko Cukich on 9/5/15.
//  Copyright © 2015 Digital Mirko. All rights reserved.
//

import UIKit



class FriendDetailViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var birthdayLabel: UILabel!
    
    var name = "Jenna"
    var birthday = "June 10th"

    override func viewDidLoad() {
        super.viewDidLoad()

        self.nameLabel.text = "\(self.name)'s birthday is:"
        self.birthdayLabel.text = self.birthday

    
    
    }

}
