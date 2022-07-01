//
//  ViewController.swift
//  Charger
//
//  Created by Emine Sinem Gursoy on 29.06.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var explanationLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    //UI is set
    private func setUpUI(){
        //Background color set
        self.view.backgroundColor = .systemGray6
        
        //Button configured
        logInButton.setTitle("GİRİŞ YAP", for: .normal)
        logInButton.backgroundColor = .white
        logInButton.tintColor = .black
        logInButton.layer.cornerRadius = 30
        logInButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        //TextField configured
        emailTextField.placeholder = "E-POSTA ADRESİNİZ:"
        emailTextField.textColor = .darkGray
        emailTextField.borderStyle = .roundedRect
        
        //Title label configured
        titleLabel.textAlignment = .center
        titleLabel.textColor = .white
        titleLabel.font = .boldSystemFont(ofSize: 30)
        titleLabel.text = "Charger'a hoş geldiniz."
        titleLabel.layer.masksToBounds = true
        
        //Label configured
        explanationLabel.textAlignment = .center
        explanationLabel.textColor = .gray
        explanationLabel.font = .systemFont(ofSize: 20)
        explanationLabel.text = "Charger'ı kullanmak için giriş yapmanız gerekiyor."
        explanationLabel.numberOfLines = 0
        explanationLabel.layer.masksToBounds = true
        
        
       }
    
    @IBAction func logInButtonClicked(_ sender: Any) {
    }
}

