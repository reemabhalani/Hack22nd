//
//  ViewController.swift
//  CakeMania
//
//  Created by Reema Vachhani on 10/17/16.
//  Copyright © 2016 jnvapps.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cakeSelectionVcObj: CakeSelectionViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Cake Mania"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnCustomCakeTapped(_ sender: AnyObject) {
        cakeSelectionVcObj = CakeSelectionViewController(nibName: "CakeSelectionViewController", bundle: nil)
        [self.navigationController?.pushViewController(cakeSelectionVcObj!, animated: true)];
        

        
    }

}

