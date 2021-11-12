//
//  OrderView.swift
//  MacroDSPractice
//
//  Created by Delvina Janice on 12/11/21.
//

import Foundation
import UIKit

class OrderView: UIView {
    
    @IBOutlet weak var bgColor: UIView!
    @IBOutlet weak var orderTitle: UILabel!
    @IBOutlet weak var orderName: UILabel!
    @IBOutlet weak var orderStatus: UILabel!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initWithNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initWithNib()
    }
    
    convenience init() {
        self.init()
    }
    
    fileprivate func initWithNib() {
        guard let view = loadViewFromNib(nibName: "OrderView") else { return }
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(view)
    }
    
    func loadViewFromNib(nibName: String) -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}
