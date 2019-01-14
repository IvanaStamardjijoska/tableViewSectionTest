//
//  UcesnikTableViewCell.swift
//  tableViewSectionTest
//
//  Created by CodeWell on 1/14/19.
//  Copyright © 2019 Ivana Stamardjioska. All rights reserved.
//

import UIKit

class UcesnikTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imeUcesnik: UILabel!
    
    @IBOutlet weak var switchButton: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(coek:Ucesnik) {
        imeUcesnik.text = coek.ime
        switchButton.isOn = coek.odi
    }

}
