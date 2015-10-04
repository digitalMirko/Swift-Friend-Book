//
//  FriendListViewController.swift
//  Friendbook
//
//  Created by Mirko Cukich on 9/5/15.
//  Copyright © 2015 Digital Mirko. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    
    //let myFriends = ["Hannah", "Jocelyn", "Johnathan", "Liam", "Molly", "Stetson"]
    let myFriends = ["Hannah", "Jocelyn", "Johnathan", "Liam"]
    
    var selectedFriend = "Joe"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myFriends.count 
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
//        cell.backgroundColor = UIColor.yellowColor()
//        cell.textLabel!.text = "Yo"
        
        cell.textLabel!.text = myFriends[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.selectedFriend = myFriends[indexPath.row]
        
        self.performSegueWithIdentifier("friendListToFriendDetailSegue", sender: self)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailViewController = segue.destinationViewController as! FriendDetailViewController
        detailViewController.name  =  self.selectedFriend
        
        if self.selectedFriend == "Hannah" {
            detailViewController.birthday = "July 19th"
        } else if self.selectedFriend == "Jocelyn" {
            detailViewController.birthday = "December 3rd"
        } else if self.selectedFriend == "Johnathan" {
            detailViewController.birthday = "October 10th"
        } else if self.selectedFriend == "Liam" {
            detailViewController.birthday = "February 7th"
        }
    }
    
}
