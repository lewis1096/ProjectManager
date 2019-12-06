//
//  PhotoViewController.swift
//  Project Manager
//
//  Created by Luigi Alecce on 3/12/19.
//  Copyright © 2019 Luigi Alecce. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    var takenPhoto:UIImage?
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let availableImage = takenPhoto{
            imageView.image = availableImage
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goBack(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
        
    }
    
    @IBAction func saveImage(_ sender: UIButton) {
        
        projects[projects.count - 1].scanImage = imageView.image
        
        
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
