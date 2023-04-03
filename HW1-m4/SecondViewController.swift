//
//  SecondViewController.swift
//  HW1-m4
//
//  Created by cpu on 3/4/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelDescreeption: UILabel!
    
    @IBOutlet weak var imageSecondVC: UIImageView!
    var info = ""
    var name = ""
    var imagedet = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = name
        labelDescreeption.text = info
        imageSecondVC.image = UIImage(named: imagedet)
    }
    
}

