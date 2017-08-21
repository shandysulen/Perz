//
//  SurveyPageViewController.swift
//  Perz
//
//  Created by Shandy Sulen on 7/23/17.
//  Copyright © 2017 Shandy Sulen. All rights reserved.
//

import UIKit
import Foundation

class SurveyPageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    var surveyQuestions: [SurveyQuestion] = {
        
        var questionsArray = [SurveyQuestion]()
        
        do {
            if let path = Bundle.main.url(forResource: "surveyData", withExtension: "json") {
                let data = try Data(contentsOf: path)
                let json = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let objects = json as? [[String: Any]] {
                    print(objects)
                    
                    for object in objects {
                        let question = SurveyQuestion(questionText: object["questionText"] as! String, id: object["id"] as! UInt, answerOptions: object["answerOptions"] as! [String], answerOptionsDetailText: object["answerOptionsDetailText"] as? [String])
                        questionsArray.append(question)
                    }
                
                } else {
                    print("JSON is invalid")
                }
            } else {
                print("The JSON resource cannot be found")
            }
        } catch {
            print(error.localizedDescription)
        }
        
        return questionsArray
    }()
    
    
    
    lazy var surveyVCs: [SurveyQuestionViewController] = {
        
        var vcs = [SurveyQuestionViewController]()
        
        for i in (0..<self.surveyQuestions.count) {
            guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SurveyQuestionViewController") as? SurveyQuestionViewController else { continue }
            vc.question = self.surveyQuestions[i]
            if i == self.surveyQuestions.count - 1 {
                
            }
            vcs.append(vc)
        }
        
        return vcs
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        setViewControllers([surveyVCs[0]], direction: .forward, animated: false, completion: nil)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let surveyVC = viewController as? SurveyQuestionViewController,
            let indexOfCurrentVC = surveyVCs.index(of: surveyVC),
            indexOfCurrentVC > 0 else { return nil }
        return surveyVCs[indexOfCurrentVC - 1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let surveyVC = viewController as? SurveyQuestionViewController,
            let indexOfCurrentVC = surveyVCs.index(of: surveyVC),
            indexOfCurrentVC < surveyVCs.count - 1 else { return nil }
        return surveyVCs[indexOfCurrentVC + 1]
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return surveyVCs.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
}
