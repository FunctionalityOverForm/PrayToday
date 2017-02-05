//
//  ViewController.swift
//  Pray Today
//
//  Created by UGP on 1/29/17.
//  Copyright © 2017 Patrick Ford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func action(_ sender: Any) {
     
        
        performSegue(withIdentifier: "segue", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

