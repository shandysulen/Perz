//
//  SurveyQuestionViewController.swift
//  Perz
//
//  Created by Shandy Sulen on 7/23/17.
//  Copyright © 2017 Shandy Sulen. All rights reserved.
//

import UIKit
import Foundation

class SurveyQuestionViewController: UIViewController {
    
    
    var question: SurveyQuestion! // implicitly unwrapped optional
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerOptionTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.textColor = .white
        view.backgroundColor = UIColor(red: 3.0/255.0, green: 20.0/255.0, blue: 36.0/255.0, alpha: 1)
        questionLabel.text = question?.questionText
        answerOptionTableView.tableFooterView = UIView()
        answerOptionTableView.backgroundColor =  UIColor(red: 3.0/255.0, green: 20.0/255.0, blue: 36.0/255.0, alpha: 1)
        questionLabel.backgroundColor =  UIColor(red: 3.0/255.0, green: 20.0/255.0, blue: 36.0/255.0, alpha: 1)
    }
    
}

extension SurveyQuestionViewController: UITableViewDataSource {
    @available(iOS 2.0, *)
    
    func tableView(_ answerOptionTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return question.answerOptions.count
    }
    
    func tableView(_ answerOptionTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = answerOptionTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = question.answerOptions[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.backgroundColor? = UIColor(red: 3.0/255.0, green: 20.0/255.0, blue: 36.0/255.0, alpha: 1)
        return cell
    }
    
}

//UIColor(red: CGFloat(207/255), green: CGFloat(103/255), blue: CGFloat(102/255), alpha: CGFloat(1))
