//
//  SwitchCell.swift
//  Yelp
//
//  Created by Jessie Chen on 10/22/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol SwitchCellDelegate {
    @objc optional func switchCell(switchCell: SwitchCell, didChangeValue value: Bool)
}

class SwitchCell: UITableViewCell {

    @IBOutlet weak var switchLabel: UILabel!
    
    @IBOutlet weak var onSwitch: UISwitch!
   
    weak var delegate: SwitchCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    onSwitch.addTarget(self, action: "switchValueChanged", for: UIControlEvents.valueChanged)
    }

    func switchValueChanged(){
        
        print("Switch Value Changed")
//        if delegate != nil{
//            delegate!.switchCell?(switchCell: self, didChangeValue: onSwitch.isOn)
//            
//        }
        
        delegate?.switchCell?(switchCell: self, didChangeValue: onSwitch.isOn)
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
