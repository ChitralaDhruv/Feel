//
//  feedbackVC.swift
//  Feel
//
//  Created by Chitrala Dhruv on 05/12/21.
//

import UIKit

class feedbackVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    private let blueButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 150))
        button.backgroundColor = .blue
        
        return button
    }()
    
}


