//
//  ViewController.swift
//  PasswordReset
//
//  Created by ebpearls on 6/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    let newPasswordTextField = PasswordTextField()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
    
}
extension ViewController {
    
    func style() {
        newPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        
      
    }
    
    func layout() {
        view.addSubview(newPasswordTextField)
        
        NSLayoutConstraint.activate([
            newPasswordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            newPasswordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        ])
        
    }
    
}


