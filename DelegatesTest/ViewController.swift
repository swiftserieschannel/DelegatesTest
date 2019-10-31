//
//  ViewController.swift
//  DelegatesTest
//
//  Created by Chander Bhushan on 28/10/19.
//  Copyright © 2019 Chander Bhushan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var tf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tf.delegate = self
    }
    
    @IBAction func clickedBtnGoToSecondVC(_ sender:UIButton){
        let vc = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension FirstViewController : SecondVCDelegate {
    func changeBG(color: UIColor) {
        self.view.backgroundColor = color
    }
}

extension FirstViewController : UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let maxLength = 1
        let currentString: NSString = textField.text! as NSString
        let newString: NSString =
            currentString.replacingCharacters(in: range, with: string) as NSString
        return newString.length <= maxLength
    }
}
