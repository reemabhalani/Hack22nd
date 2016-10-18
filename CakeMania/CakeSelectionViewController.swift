//
//  CakeSelectionViewController.swift
//  CakeMania
//
//  Created by Reema Vachhani on 10/17/16.
//  Copyright © 2016 jnvapps.com. All rights reserved.
//

import UIKit

class CakeSelectionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tblView: UITableView!
    var items: [String] = ["Round", "Square", "Rectangel"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tblView.contentInset = UIEdgeInsetsMake(-60, 5, 5, 5)
        self.tblView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tblView.delegate = self;
        self.tblView.dataSource = self;
    }
    
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return items.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",
                                                 for: indexPath)
        let itemsValue = items[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = itemsValue
        return cell
    }
    
    // MARK: - UITableViewDelegate
//    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
////        let indexPath = tableView.indexPathForSelectedRow!
////        let cell =  tableView.cellForRow(at: indexPath)! as UITableViewCell
////        cell.accessoryType = .checkmark
////        
////        obj = UserProfileVC(nibName: "UserProfileVC", bundle: nil);
////        obj.strUserName = cell.textLabel?.text
////        btnConnect.isEnabled = true
//        
//    }
//    
//    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        tableView.cellForRow(at: indexPath)?.accessoryType = .none
//        
//    }
//

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
