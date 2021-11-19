//
//  ViewController.swift
//  Feel
//
//  Created by Chitrala Dhruv on 06/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let startButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.setTitle("START", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        
        return button
    }()
    
    private let questionLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 500, height: 50))
        label.text = "How you feeling now?"
        label.textColor = .red
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        view.addSubview(startButton)
        view.addSubview(questionLabel)
        
        startButton.addTarget(self, action: #selector(didTapStart), for: .touchUpInside)
        
        setUpAutoLayout()
    }
    
    
    @objc func didTapStart(_ sender: UIButton){
        print("tapped");
       show(TabBarVC(), sender: sender)
        
    }
    
    
    
    private func setUpAutoLayout() {
        startButton.center = view.center
        questionLabel.bottomAnchor.constraint(equalTo: startButton.topAnchor, constant: -20).isActive = true
        questionLabel.centerXAnchor.constraint(equalTo: startButton.centerXAnchor).isActive = true
        
        
    }
    
    
   
    
}




