//
//  ProfileViewController.swift
//  Charger
//
//  Created by Emine Sinem Gursoy on 03.07.22.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var deviceIDLabel: UILabel!
    @IBOutlet weak var logOutButton: UIButton!
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
       
    }
    
    private func setUpUI(){
        
        //Background color set
        self.view.backgroundColor = UIColor(named: "Dark")
        
        //Background color of UINavigationItem changed
        self.navigationController?.navigationBar.barTintColor  = UIColor(named: "Charcoal grey")
        
        //UINavigationItem configured
        self.navigationItem.title = "Profil"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor:UIColor(named: "solid  - white")]
        
        
        self.navigationController?.navigationBar.tintColor = UIColor(named: "grayscale -  gray 25")
        
        //logoImageView configured
        logoImageView.image = UIImage(named:"Badge")
        
        //logOutButton configured
        logOutButton.setTitle("ÇIKIŞ YAP", for: .normal)
        logOutButton.backgroundColor = UIColor(named: "solid  - white")
        logOutButton.tintColor = UIColor(named: "Dark")
        logOutButton.layer.cornerRadius = 30
        logOutButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        //emailLabel configured
        emailLabel.textAlignment = .left
        emailLabel.textColor = UIColor(named: "grayscale -  gray 25")
        emailLabel.font = .systemFont(ofSize: 20)
        emailLabel.text = "E-posta:"
        emailLabel.numberOfLines = 1
        emailLabel.layer.masksToBounds = true
        
        //deviceIDLabel configured
        deviceIDLabel.textAlignment = .left
        deviceIDLabel.textColor = UIColor(named: "grayscale -  gray 25")
        deviceIDLabel.font = .systemFont(ofSize: 20)
        deviceIDLabel.text = "Cihaz ID:"
        deviceIDLabel.numberOfLines = 1
        deviceIDLabel.layer.masksToBounds = true
        
        //containerView configured
        self.containerView.backgroundColor = UIColor(named: "Charcoal grey")
        self.containerView.layer.cornerRadius = 10
    }
        
    @IBAction func logOutButtonClicked(_ sender: Any) {
    }
    
}
