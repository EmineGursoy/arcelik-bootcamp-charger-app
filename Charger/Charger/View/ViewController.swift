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
        self.view.backgroundColor = UIColor(named: "Charcoal grey")
        
        //Background color of UINavigationItem changed
        self.navigationController?.navigationBar.barTintColor  = UIColor(named: "Charcoal grey")
        
        //UINavigationItem configured
        self.navigationItem.title = "Randevular"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor:UIColor(named: "solid  - white")]
        
        //Button configured
        logInButton.setTitle("GİRİŞ YAP", for: .normal)
        logInButton.backgroundColor = UIColor(named: "solid  - white")
        logInButton.tintColor = UIColor(named: "Dark")
        logInButton.layer.cornerRadius = 30
        logInButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        //TextField configured
        emailTextField.placeholder = "E-POSTA ADRESİNİZ:"
        emailTextField.textColor = UIColor(named: "grayscale -  gray 25")
        emailTextField.borderStyle = .roundedRect
        
        //Title label configured
        titleLabel.textAlignment = .center
        titleLabel.textColor = UIColor(named: "solid  - white")
        titleLabel.font = .boldSystemFont(ofSize: 30)
        titleLabel.text = "Charger'a hoş geldiniz."
        titleLabel.layer.masksToBounds = true
        
        //Label configured
        explanationLabel.textAlignment = .center
        explanationLabel.textColor = UIColor(named: "grayscale -  gray 25")
        explanationLabel.font = .systemFont(ofSize: 20)
        explanationLabel.text = "Charger'ı kullanmak için giriş yapmanız gerekiyor."
        explanationLabel.numberOfLines = 0
        explanationLabel.layer.masksToBounds = true
       }
    
    
    //When the login button is clicked, transition to the appointment page is provided.
    @IBAction func logInButtonClicked(_ sender: Any) {
        
        if let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AppointmentsViewController") as? AppointmentsViewController {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

