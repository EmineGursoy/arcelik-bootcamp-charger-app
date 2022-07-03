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
        self.view.backgroundColor = UIColor(named: "Charcoal grey")
        
        //UINavigationItem configured
        self.navigationItem.title = "Giriş Yapın"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "Badge"), style: .plain, target: self, action: #selector(profileClicked))

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
    
    @objc func profileClicked() {
        print("profile clicked")
    }
    
    @IBAction func makeAppointmentClicked(_ sender: Any) {
    }
    

}
