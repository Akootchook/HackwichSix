//
//  ViewController.swift
//  HackwichSix
//
//  Created by Berdell Akootchook on 3/2/21.
//

import UIKit


 class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //Part 7.2 in HAckwichTwelve guidesheet "var restaurantImageData = [String}()
var restaurantImageData = [String]()
    
    
     var myFriendsArray = ["John", "Bob", "Brian"]
    var friendsCity = ["Honolulu", "Kailua", "Waiʻanae"]

    //var myCountryArray = ["Cambodia", "Iceland", "Holland"]
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriendsArray.count
        
        
     }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
         let text = myFriendsArray[indexPath.row]
         cell.textLabel?.text = text
     
        cell.detailTextLabel?.text = friendsCity[indexPath.row]
        
         return cell
     }


     override func viewDidLoad() {
         super.viewDidLoad()
        //HackwichTwelve for class on 20APR2021
        
        //forResourse: "mathes name in ProjectNavigator on the left
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        restaurantImageData = dict?.object(forKey: "restaurantImages") as! [String]
        
    

        //Added countries to visit
   
        
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: <#T##IndexPath#> as IndexPath, animated: true)
        
    }
        
}

