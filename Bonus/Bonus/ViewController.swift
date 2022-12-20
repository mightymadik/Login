//
//  ViewController.swift
//  Bonus
//
//  Created by MacBook on 08.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let settingsView = UIView()
    var textField: UITextField?
    var textField1: UITextField?
    var ButtonField: UIButton?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        let textFieldFrame = CGRect(x: 0, y: 350, width: 300, height: 40)
                let textField = UITextField(frame: textFieldFrame)
                textField.placeholder = "E-mail"
                self.textField = textField
        textField.font = UIFont.systemFont(ofSize: 15)
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.clearButtonMode = UITextField.ViewMode.whileEditing
        textField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
                self.view.addSubview(self.textField!)
        
        UIView.animate(
                    withDuration: 0.30,
                    delay: 0.0,
                    options: .curveLinear,
                    animations: {

                        self.textField?.frame.origin.x = 50

                }) { (completed) in

                }
        
        
        let textFieldFrame1 = CGRect(x: 100, y: 400, width: 300, height: 40)
                let textField1 = UITextField(frame: textFieldFrame1)
                textField1.placeholder = "Password"
                self.textField1 = textField1
        textField1.font = UIFont.systemFont(ofSize: 15)
        textField1.borderStyle = UITextField.BorderStyle.roundedRect
        textField1.autocorrectionType = UITextAutocorrectionType.no
        textField1.keyboardType = UIKeyboardType.default
        textField1.returnKeyType = UIReturnKeyType.done
        textField1.clearButtonMode = UITextField.ViewMode.whileEditing
        textField1.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
                self.view.addSubview(self.textField1!)
        
        UIView.animate(
                    withDuration: 0.30,
                    delay: 0.0,
                    options: .curveLinear,
                    animations: {

                        self.textField1?.frame.origin.x = 50

                }) { (completed) in

                }
        let Button = CGRect(x: 150, y: 800, width: 100, height: 50)
                let ButtonField = UIButton(frame: Button)
                self.ButtonField = ButtonField
        ButtonField.backgroundColor = .lightGray
        ButtonField.setTitle("Login", for: .normal)
        ButtonField.layer.cornerRadius = 10.0
        ButtonField.addTarget(self, action: #selector(buttonAction), for:.touchUpInside)

                self.view.addSubview(self.ButtonField!)

                UIView.animate(
                    withDuration: 0.4,
                    delay: 0.0,
                    options: .curveLinear,
                    animations: {

                        self.ButtonField?.frame.origin.y = 470

                }) { (completed) in

                }
        
        
        }
    
    
         @objc func buttonAction(sender: UIButton!) {
             let vc = NewViewController()
             let navVc = UINavigationController(rootViewController: vc)
             navVc.modalPresentationStyle = .fullScreen
             present(navVc, animated: true)
}
    
        fileprivate func setupLayout(){
}
    
}

