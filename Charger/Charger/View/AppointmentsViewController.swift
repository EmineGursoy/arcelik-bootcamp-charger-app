//
//  AppointmentsViewController.swift
//  Charger
//
//  Created by Emine Sinem Gursoy on 02.07.22.
//

import UIKit

class AppointmentsViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var explanationLabel: UILabel!
    @IBOutlet weak var makeAppointmentButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
        
    }
    
    private func setUpUI(){
        
        //Background color set
        self.view.backgroundColor = UIColor(named: "Dark")
        
        //UINavigationItem configured
        self.navigationItem.title = "Randevular"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "Users")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(profileClicked))
        
        navigationItem.backButtonTitle = ""
        
        //Back button is hidden
        self.navigationItem.hidesBackButton = true

        //Image View configured
        logoImageView.image = UIImage(named:"Badge1")
        
        //Button configured
        makeAppointmentButton.setTitle("RANDEVU OLUŞTUR", for: .normal)
        makeAppointmentButton.backgroundColor = UIColor(named: "solid  - white")
        makeAppointmentButton.tintColor = UIColor(named: "Dark")
        makeAppointmentButton.layer.cornerRadius = 30
        makeAppointmentButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        //Title label configured
        titleLabel.textAlignment = .center
        titleLabel.textColor = UIColor(named: "solid  - white")
        titleLabel.font = .boldSystemFont(ofSize: 30)
        titleLabel.text = "Henüz bir randevu oluşturmadınız."
        titleLabel.numberOfLines = 0
        titleLabel.layer.masksToBounds = true
        
        
        //Label configured
        explanationLabel.textAlignment = .center
        explanationLabel.textColor = UIColor(named: "grayscale -  gray 25")
        explanationLabel.font = .systemFont(ofSize: 20)
        explanationLabel.text = "Oluşturulan randevular burada listelenir."
        explanationLabel.numberOfLines = 0
        explanationLabel.layer.masksToBounds = true
        
        
       }
    
    //When the profile button is clicked, transition to the profile page is provided.
    @objc func profileClicked() {
        print("profile clicked")
        
        if let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProfileViewController") as? ProfileViewController {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func makeAppointmentClicked(_ sender: Any) {
    }
    

}
