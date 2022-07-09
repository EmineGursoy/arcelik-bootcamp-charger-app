//
//  StationTableViewCell.swift
//  Charger
//
//  Created by Emine Sinem Gursoy on 06.07.22.
//

import UIKit

class StationTableViewCell: UITableViewCell {

    @IBOutlet weak var symbolImageView: UIImageView!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var serviceHoursLabel: UILabel!
    @IBOutlet weak var numberOfSocketsLabel: UILabel!
    @IBOutlet weak var containerView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
