//
//  Build.swift
//  Perz
//
//  Created by Shandy Sulen on 8/18/17.
//  Copyright © 2017 Shandy Sulen. All rights reserved.
//

import Foundation

class Build {
    
    enum buildType {
        case GamingPC, ProductionPC, StreamingPC, HomeTheaterPC, HomeOfficePC, InternetBoxPC
    }
    
    var name: String
    var dateCreated: Date
    var complete: Bool
    var type: buildType
    var budget: UInt
    
    init(name: String, dateCreated: Date, complete: Bool, type: buildType, budget: UInt){
        self.name = name
        self.dateCreated = dateCreated
        self.complete = complete
        self.type = type
        self.budget = budget
    }
    
}
