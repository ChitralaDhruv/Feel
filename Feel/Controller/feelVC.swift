//
//  shareVC.swift
//  Feel
//
//  Created by Chitrala Dhruv on 21/11/21.
//

import UIKit

class feelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(questionLabel)
        view.addSubview(startButton)
        
        setUpAutoLayout()
        
    }
    
    private let questionLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 500, height: 50))
        label.text = "How are you feeling now?"
        label.textColor = .red
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    private let startButton: UIButton = {
        let but = UIButton()
        but.frame.size = CGSize(width: 200, height: 100)
        but.configure(cornerRadius: 0.0, backgroundColor: .black)
        if let fingerprint = UIImage(named: "fingerprint") {
            but.configure(icon: fingerprint, color: .black)
        }
        but.configure(color: .black, font: UIFont.boldSystemFont(ofSize: 12))
        but.setTitle("Start", for: .normal)
        but.setTitleColor(.red, for: .normal)

        return but
    }()
    
    
    
    
    private func setUpAutoLayout() {
        startButton.center = view.center
        questionLabel.bottomAnchor.constraint(equalTo: startButton.topAnchor, constant: -20).isActive = true
        questionLabel.centerXAnchor.constraint(equalTo: startButton.centerXAnchor).isActive = true


    }
}
    
