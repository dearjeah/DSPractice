//
//  ChangeStatusCaseTwoViewController.swift
//  MacroDSPractice
//
//  Created by Delvina Janice on 12/11/21.
//

import UIKit

protocol UpdateStatus: AnyObject {
    func doUpdateStatus(newStatus: String, source: String)
}

class ChangeStatusCaseTwoViewController: UIViewController {
    
    var workStatus = String()
    var source = String()
    weak var delegate: UpdateStatus?
    
    func setup(dlgt: UpdateStatus) {
        self.delegate = dlgt
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func statusChecker(status: String) -> String {
        if status == "Idle" {
            return "Ongoing"
        } else if status == "Ongoing" {
            return "Finish"
        } else {
            return "Idle"
        }
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        let newStatus = statusChecker(status: workStatus)
        delegate?.doUpdateStatus(newStatus: newStatus, source: source)
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
