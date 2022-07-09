//
//  StationSelectionViewController.swift
//  Charger
//
//  Created by Emine Sinem Gursoy on 06.07.22.
//

import UIKit

class StationSelectionViewController: UIViewController {

    @IBOutlet weak var numberOfResultsLabel: UILabel!
    @IBOutlet weak var stationsTableView: UITableView!
    
    var selectedCity = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
    }
    
    
    private func setUpUI(){
        
        stationsTableView.delegate = self
        stationsTableView.dataSource = self
         
        stationsTableView.register(UINib(nibName: "StationTableViewCell", bundle: nil), forCellReuseIdentifier: "StationTableViewCell")
        
        
        //Background color set
        self.view.backgroundColor = UIColor(named: "Dark")
        
        //Background color of UINavigationItem changed
        self.navigationController?.navigationBar.barTintColor  = UIColor(named: "Charcoal grey")
        
        //UINavigationItem configured
        self.navigationItem.title = "İstasyon Seçin"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor:UIColor(named: "solid  - white")]
        
        //self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Users")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(filterClicked))
        
        self.navigationController?.navigationBar.tintColor = UIColor(named: "grayscale -  gray 25")
        
        self.numberOfResultsLabel.text = " '\(selectedCity)' şehri için sonuç görüntüleniyor."
        self.numberOfResultsLabel.textColor = UIColor(named: "solid  - white")
        
        
        self.stationsTableView.backgroundColor =  UIColor(named: "Dark")
        
        
        
    }
    
    @objc func filterClicked() {
        print("filter clicked")
    }
}

//MARK: - UITableViewDelegate
extension StationSelectionViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}
//MARK: - UITableViewDataSource
extension StationSelectionViewController: UITableViewDataSource {func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 2
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = stationsTableView.dequeueReusableCell(withIdentifier: "StationTableViewCell") as! StationTableViewCell
    
    
    cell.stationNameLabel.text = ""
    cell.serviceHoursLabel.text = "Hizmet saatleri: 24 saat"
    cell.numberOfSocketsLabel.text = "Uygun soket sayısı: "
    cell.backgroundColor =  UIColor(named: "Dark")
    cell.stationNameLabel.textColor = UIColor(named: "solid  - white")
    cell.serviceHoursLabel.textColor = UIColor(named: "solid  - white")
    cell.numberOfSocketsLabel.textColor = UIColor(named: "solid  - white")
    
    cell.containerView.backgroundColor = UIColor(named: "Charcoal grey")
    cell.containerView.layer.cornerRadius = 10
    
    return cell
}
}
