//
//  SplashController.swift
//  Charger
//
//  Created by Emine Sinem Gursoy on 29.06.22.
//
import PermissionsKit
import LocationWhenInUsePermission
import NotificationPermission
import UIKit

class SplashController: UIViewController {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var appNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
    }
    
    // Notification and location permission requested
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Permission.locationWhenInUse.request {
            let authorized = Permission.locationWhenInUse.authorized
            if !authorized {
                // Not authorized, show warning(alert) message
            } else {
                Permission.notification.request {
                    print("finished")
                    DispatchQueue.main.async {
                        self.performSegue(withIdentifier: "goToSecondScreen", sender: nil)
                    }
                }
            }
        }
    }
    
    //UI is set
    private func setUpUI(){
        
        //Background color set
        self.view.backgroundColor = UIColor(named: "Dark")
        
        //Image View configured
        logoImageView.image = UIImage(named:"03")
        
        //Label configured
        appNameLabel.text = "Charger"
        appNameLabel.textColor = UIColor(named: "solid  - white")
        appNameLabel.textAlignment = .center
        appNameLabel.font = UIFont.boldSystemFont(ofSize: 60)
        appNameLabel.numberOfLines = 0
       }



}
