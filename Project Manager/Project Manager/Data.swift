//
//  Data.swift
//  Project Manager
//
//  Created by Luigi Alecce on 3/9/19.
//  Copyright © 2019 Luigi Alecce. All rights reserved.
//

import Foundation
import UIKit


var projectName: String = "No input"
var members: String = "No input"
var descriptionData: String = "No input"


var projects = [Project]()






class Project{
    
    var name:String
    var members:String
    var descriptionData:String
    var language:String = ""
    var toDoList:[String] = [String]()
    var scanImage:UIImage?
    
    
    init(name: String, members: String, descriptionData: String){
        self.name = name
        self.members = members
        self.descriptionData = descriptionData
    }
    
}




