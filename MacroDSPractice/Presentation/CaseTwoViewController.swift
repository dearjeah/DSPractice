//
//  CaseTwoViewController.swift
//  MacroDSPractice
//
//  Created by Delvina Janice on 12/11/21.
//

import UIKit

class CaseTwoViewController: UIViewController {
    
    @IBOutlet weak var orderCardOne: OrderView!
    @IBOutlet weak var OrderCardTwo: OrderView!
    
    var statusUpdate: String = ""
    var source: String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        orderCardOne.delegate = self
        OrderCardTwo.delegate = self
        initialData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ChangeStatusCaseTwoViewController {
            vc.workStatus = statusUpdate
            vc.source = source
            vc.setup(dlgt: self)
        }
    }
    
    func initialData() {
        orderCardOne.orderTitle.text = "Order 1"
        OrderCardTwo.orderTitle.text = "Order 2"
    }
}

extension CaseTwoViewController: ButtonChangeStatus {
    
    func didButtonTapped(status: String, from: String) {
        statusUpdate = status
        source = from
        performSegue(withIdentifier: "goChangeStatus", sender: self)
    }
}

extension CaseTwoViewController: UpdateStatus {
    func doUpdateStatus(newStatus: String, source: String) {
        if source == orderCardOne.orderTitle.text {
            orderCardOne.orderStatus.text = newStatus
        } else {
            OrderCardTwo.orderStatus.text = newStatus
        }
    }
}

