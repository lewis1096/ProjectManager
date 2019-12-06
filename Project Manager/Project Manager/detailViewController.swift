//
//  detailViewController.swift
//  Project Manager
//
//  Created by Luigi Alecce on 3/10/19.
//  Copyright © 2019 Luigi Alecce. All rights reserved.
//

import UIKit

var projectList = [String]()

class detailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        

        
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        if let p = project{
            titleLabel.text = p.name
            membersLabel.text = p.members
            descriptionLabel.text = p.descriptionData
            languageLabel.text = p.language
            
            projectList = p.toDoList//error here not saving todoList

            
        }
    }
    
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var membersLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UITextView!
    
    @IBOutlet weak var languageLabel: UILabel!
    
    var project: Project?
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
