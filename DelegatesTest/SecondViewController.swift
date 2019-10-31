//
//  SecondViewController.swift
//  DelegatesTest
//
//  Created by Chander Bhushan on 28/10/19.
//  Copyright © 2019 Chander Bhushan. All rights reserved.
//

import UIKit

protocol SecondVCDelegate {
    func changeBG(color:UIColor)
}

class SecondViewController: UIViewController {

    var delegate:SecondVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tappedBtnClickMe(_ seder:UIButton) {
        guard let del = delegate else {
            return
        }
        del.changeBG(color: .blue)
    }

}
