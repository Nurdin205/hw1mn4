//
//  CustomTableViewCell.swift
//  HW1-m4
//
//  Created by cpu on 3/4/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

   @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textFild: UITextField!
    
    @IBOutlet weak var imageName: UIImageView!
    
    
    func displayy(item: User ) {
        label.text = item.label
        textFild.text = item.textFild
        imageName.image = UIImage(named: item.imageTV)
    }
    
}
