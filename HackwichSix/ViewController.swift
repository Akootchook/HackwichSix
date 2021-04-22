//
//  ViewController.swift
//  HackwichSix
//
//  Created by Berdell Akootchook on 3/2/21.
//

import UIKit


 class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //Part 7.2 in HAckwichTwelve guidesheet "var restaurantImageData = [String}()
    @IBOutlet weak var tableView: UITableView!
    
var restaurantImageData = [String]()
    
    
     var myFriendsArray = ["Kapolei Kalapawai"]
    var friendsCity = ["Kapolei Kalapawai"]

    //var myCountryArray = ["Cambodia", "Iceland", "Holland"]
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriendsArray.count
        
        
     }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
         let text = myFriendsArray[indexPath.row]
         cell.textLabel?.text = text
     
//        cell.detailTextLabel?.text = friendsCity[indexPath.row]
        
         return cell
     }


     override func viewDidLoad() {
         super.viewDidLoad()
        //HackwichTwelve for class on 20APR2021
        
        //forResourse: "mathes name in ProjectNavigator on the left
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        restaurantImageData = dict!.object(forKey: "restaurantImages") as! [String]
        
    

        //Added countries to visit
   
        
        
    }
    
    //add a new tableview function that detects when a cell is selected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?){
        
        if segue.identifier == "mySegue"
        
        {
            let s1 = segue.destination as! detailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!]
        }
    }
    
    
    


}
