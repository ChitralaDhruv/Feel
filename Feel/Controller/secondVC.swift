//
//  secondVC.swift
//  Feel
//
//  Created by Chitrala Dhruv on 21/11/21.
//

import UIKit
import EventKitUI
import FSCalendar

class secondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        view.addSubview(calendar)

    }
    
    private let calendar: UIView = {
        let calendar = FSCalendar(frame: CGRect.init(x: 10, y: 60, width: 375, height: 250))

        return calendar
    }()
    


}
