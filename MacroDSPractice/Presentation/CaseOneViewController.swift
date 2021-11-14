//
//  CaseOneViewController.swift
//  MacroDSPractice
//
//  Created by Delvina Janice on 12/11/21.
//

import UIKit

class CaseOneViewController: UIViewController {
    func cobamakan() {
        print("gw udah makan yaa")
    }
    
    func cobaTidur() {
        print("gw udah tidur yaa")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeStatusButtonOne(_ sender: UIButton) {
        performSegue(withIdentifier: "goToUpdateStatusCaseOne", sender: self)
    }
    
    @IBAction func changeStatusButtonTwo(_ sender: UIButton) {
        performSegue(withIdentifier: "goToUpdateStatusCaseOne", sender: self)
        
    }
    
}
