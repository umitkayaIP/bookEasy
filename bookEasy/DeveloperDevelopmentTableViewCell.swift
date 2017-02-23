//
//  DeveloperDevelopmentTableViewCell.swift
//  bookEasy
//
//  Created by keat on 22/02/2017.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class DeveloperDevelopmentTableViewCell: UITableViewCell {
   
    @IBOutlet weak var developerDevelopmentImage: UIImageView!
    
    @IBOutlet weak var developerDevelopmentDescription: UILabel!
    
    @IBOutlet weak var forwardButton: UIImageView!
    
    @IBOutlet weak var developerDevelopmentTitle: UILabel!
       
    override func awakeFromNib() {
        super.awakeFromNib()
    
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
