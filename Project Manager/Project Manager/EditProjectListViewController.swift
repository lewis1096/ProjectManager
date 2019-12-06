//
//  EditProjectListViewController.swift
//  Project Manager
//
//  Created by Luigi Alecce on 3/12/19.
//  Copyright © 2019 Luigi Alecce. All rights reserved.
//

import UIKit

class EditProjectListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var item: UITextField!
    
    
    @IBAction func addItem(_ sender: UIButton) {
        if (item.text != ""){
            projectList.append(item.text!)
            item.text = ""
        }
    }
    
    
    @IBAction func editEnded(_ sender: UITextField) {
        resignFirstResponder()
    }
    
    
    @IBAction func backgroundTouched(_ sender: UIControl) {
        item.resignFirstResponder()
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        projects[tempIndex].toDoList = projectList
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
