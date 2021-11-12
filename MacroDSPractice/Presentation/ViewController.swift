//
//  ViewController.swift
//  MacroDSPractice
//
//  Created by Delvina Janice on 20/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender.tag == 1 {
            performSegue(withIdentifier: "goToCaseOne", sender: self)
        } else if sender.tag == 2 {
            performSegue(withIdentifier: "goToCaseTwo", sender: self)
        } else if sender.tag == 3 {
            performSegue(withIdentifier: "goToCaseThree", sender: self)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

