//
//  Phase1ViewController.swift
//  Project Manager
//
//  Created by Luigi Alecce on 3/10/19.
//  Copyright © 2019 Luigi Alecce. All rights reserved.
//

import UIKit

class Phase1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBOutlet var textFields: [UITextField]!
    @IBOutlet weak var descriptionField: UITextView!
    

    
    @IBAction func editEnded(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    
    
    
    
    @IBAction func backgroundTouched(_ sender: UIControl) {
        for tf in textFields{
            tf.resignFirstResponder()
        }
        descriptionField.resignFirstResponder()
        
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    
    

    
    
    @IBAction func next(_ sender: UIButton) {
        if ((textFields[0].text!.count) > 0 && (textFields[1].text!.count) > 0 && descriptionField.text.count > 0){
            var localName = ""
            var localMembers = ""
            var localDesc = ""
            
            if let tf0 = textFields[0].text {
                localName = "\(tf0)"
            }
            if let tf1 = textFields[1].text{
                localMembers = "\(tf1)"
            }
            if let desc = descriptionField.text{
                localDesc = "\(desc)"
            }
            
            projects += [Project(name: localName, members: localMembers, descriptionData: localDesc)]
            
            
            //dismiss(animated: false, completion: nil)
        }
        else{
            let alertController = UIAlertController(title: "Error", message: "Fill in all the fields to continue.", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(cancelAction)
            present(alertController, animated: true, completion: nil)
        }
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
