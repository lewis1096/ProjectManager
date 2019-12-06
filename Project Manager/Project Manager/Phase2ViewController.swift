//
//  Phase2ViewController.swift
//  Project Manager
//
//  Created by Luigi Alecce on 3/10/19.
//  Copyright © 2019 Luigi Alecce. All rights reserved.
//

import UIKit


let languages = ["C", "C++", "C#", "Objective-C", "Java", "Python", "Swift", "Scala", "Kotlin"]



class Phase2ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return languages.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return languages[row]
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        titleLabel.text = projects[projects.count-1].name
    }
    
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var selectedLanguage = "No programming language selected"
    
    
    @IBAction func selected(_ sender: UIButton) {
        selectedLanguage = languages[picker.selectedRow(inComponent: 0)]
        projects[projects.count - 1].language = selectedLanguage
    }
    

    
    @IBAction func backButton(_ sender: UIButton) {
        projects.remove(at: projects.count-1)
        dismiss(animated: false, completion: nil)

    }
    
    @IBAction func next(_ sender: UIButton) {
        //projects[projects.count - 1].language = selectedLanguage
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
