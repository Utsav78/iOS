//
//  ViewController.swift
//  PasswordReset
//
//  Created by ebpearls on 6/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    let newPasswordTextField = PasswordTextField(placeHolderText: "New Password")
    let stackView = UIStackView()
    let statusView = PasswordStatusView()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
    
}
extension ViewController {
    
    func style() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        newPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        statusView.translatesAutoresizingMaskIntoConstraints = false
      
    }
    
    func layout() {
      stackView.addArrangedSubview(newPasswordTextField)
        stackView.addArrangedSubview(statusView)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),

            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 2),
        
        ])
        
    }
    
}


