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
        appNameLabel.text = "Charger"
        appNameLabel.textAlignment = .center
        appNameLabel.font = UIFont.boldSystemFont(ofSize: 30)
        appNameLabel.numberOfLines = 0
       }



}
