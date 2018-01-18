//
//  CustomCell.swift
//  Binary Counter
//
//  Created by Peisure on 1/17/18.
//  Copyright © 2018 Ben. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var minusB: UIButton!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var displayLabel: UILabel!
    
    weak var deligate:customDeligate?
    
    @IBAction func calculate(_ sender: UIButton) {
        deligate?.caculate(self, with:sender)
    }

    
}
