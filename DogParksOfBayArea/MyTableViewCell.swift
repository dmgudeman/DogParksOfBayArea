//
//  MyTableViewCell.swift
//  DogParksOfBayArea
//
//  Created by David Gudeman on 10/19/15.
//  Copyright (c) 2015 DeAnza. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

  @IBOutlet var myParkCellTextView: UITextView!
  
  @IBOutlet var myParkCellImageView: UIImageView!
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
