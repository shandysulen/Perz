//
//  FirstTimeUserViewController.swift
//  Perz
//
//  Created by Shandy Sulen on 8/7/17.
//  Copyright © 2017 Shandy Sulen. All rights reserved.
//

import UIKit

class FirstTimeUserViewController: UIViewController {
    
    @IBOutlet weak var headingLabel: UILabel!
    @IBOutlet weak var buildSetupQuestionLabel: UILabel!
    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var okButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set button and label text
        headingLabel.text = "Welcome to Perz!"
        headingLabel.textColor = UIColor(colorLiteralRed: 207/255, green: 103/255, blue: 102/255, alpha: 1)
        buildSetupQuestionLabel.text = "Looks like it's your first time here. Would you like to take a short survey to set you up for your future build? You can do this at any time."
        buildSetupQuestionLabel.textColor = UIColor(colorLiteralRed: 207/255, green: 103/255, blue: 102/255, alpha: 1)
        skipButton.setTitle("SKIP", for: .normal)
        skipButton.setTitleColor(UIColor(colorLiteralRed: 207/255, green: 103/255, blue: 102/255, alpha: 1), for: .normal)
        okButton.setTitle("OK", for: .normal)
        
        //Set colors
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
