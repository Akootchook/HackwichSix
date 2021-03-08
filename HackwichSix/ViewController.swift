//
//  ViewController.swift
//  HackwichSix
//
//  Created by Berdell Akootchook on 3/2/21.
//

import UIKit


 class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

     var myFriendsArray = ["John", "Bob", "Brian"]

    //var myCountryArray = ["Cambodia", "Iceland", "Holland"]
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriendsArray.count
        
        
     }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
         let text = myFriendsArray[indexPath.row]
         cell.textLabel?.text = text
     
        cell?.detailTextLabel?.text = friendsHomeArray[indexPath.row]
         return cell
     }


     override func viewDidLoad() {
         super.viewDidLoad()
        
        //Added countries to visit
      
    }
}

