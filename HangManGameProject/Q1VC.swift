//
//  Q1VC.swift
//  HangManGameProject
//
//  Created by 家田真帆 on 2019/11/16.
//  Copyright © 2019 家田真帆. All rights reserved.
//

import UIKit

class Q1VC: UIViewController {

    @IBOutlet weak var categoryLabel: UILabel!
    var category = ""
    
    @IBOutlet weak var questionLabel: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()

//       question == "______"
        if category == "sports" {
            questionLabel.text = "______"
        } else if category == "fruits" {
            questionLabel.text = "__________"
        } else if category == "animals" {
            questionLabel.text = "____"
            
        }
    }
    
    
}
