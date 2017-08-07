//
//  ViewController.swift
//  Perz
//
//  Created by Shandy Sulen on 7/23/17.
//  Copyright © 2017 Shandy Sulen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        view.backgroundColor = UIColor(red: CGFloat(3/255), green: CGFloat(20/255), blue: CGFloat(36/255), alpha: CGFloat(1))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "embedPageViewController" {
            
        }
    }
    
}

