//
//  CitySelectionViewController.swift
//  Charger
//
//  Created by Emine Sinem Gursoy on 03.07.22.
//

import UIKit

class CitySelectionViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var citySearchBar: UISearchBar!
    @IBOutlet weak var citiesTableView: UITableView!
    
    private var cities: [City] = []
    private var filteredCities: [City] = []
    
    private var viewModel: CitySelectionViewModelProtocol = CitySelectionViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
        
        DispatchQueue.main.asyncAfter(deadline: .now()){
            self.initializeTableData()
            self.citiesTableView.reloadData()
        }
        fetchData()
       
    }
    private func initializeTableData() {
        cities = []
        filteredCities = []
    }
    
    private func setUpUI(){
        
        citiesTableView.delegate = self
        citiesTableView.dataSource = self
         
        citiesTableView.register(UINib(nibName: "CityTableViewCell", bundle: nil), forCellReuseIdentifier: "CityTableViewCell")
        citySearchBar.delegate = self
        
        //Background color set
        self.view.backgroundColor = UIColor(named: "Charcoal grey")
        
        //Background color of UINavigationItem changed
        self.navigationController?.navigationBar.barTintColor  = UIColor(named: "Charcoal grey")
        
        //UINavigationItem configured
        self.navigationItem.title = "Şehir Seçin"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor:UIColor(named: "solid  - white")]
        
        self.navigationController?.navigationBar.tintColor = UIColor(named: "grayscale -  gray 25")
        
        self.containerView.backgroundColor = UIColor(named: "Charcoal grey")
        
        self.citySearchBar.placeholder = "Şehir Ara"
        self.citySearchBar.tintColor = UIColor(named: "Dark")
        self.citySearchBar.barTintColor = UIColor(named: "Dark")
        self.citySearchBar.searchTextField.textColor = UIColor(named: "solid  - white")
        
        
        self.citiesTableView.backgroundColor =  UIColor(named: "Charcoal grey")
    }
    
    private func fetchData(){
        // Fetch API Data
        viewModel.fetchCities() { cities, error in
            self.cities = cities
            self.filteredCities = cities
            
            DispatchQueue.main.async {
                self.citiesTableView.reloadData()
            }
        }
    }
}
//MARK: - UISearchBarDelegate
extension CitySelectionViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
        
        if searchText == "" {
            filteredCities = cities
            citiesTableView.reloadData()
        } else {
            filteredCities = cities.filter  {$0.cityName.lowercased().contains(searchText.lowercased()) }
            citiesTableView.reloadData()
        }
 
    }
    
}
//MARK: - UITableViewDelegate
extension CitySelectionViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("\(indexPath.row)")
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}
//MARK: - UITableViewDataSource
extension CitySelectionViewController: UITableViewDataSource {func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return filteredCities.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = citiesTableView.dequeueReusableCell(withIdentifier: "CityTableViewCell") as! CityTableViewCell
    
    let rowItem = filteredCities[indexPath.row]
    cell.cityLabel.text = rowItem.cityName
    cell.backgroundColor =  UIColor(named: "Charcoal grey")
    cell.cityLabel.textColor = UIColor(named: "solid  - white")
    return cell
}
}

struct City: Codable {
    let cityName : String
    
    init(cityName: String) {
        self.cityName = cityName
    }
}
