//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by Tayfur Salih Şen on 17.07.2022.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpson : SimpsonClass?

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson?.name
        imageView.image = selectedSimpson?.image
        jobLabel.text = selectedSimpson?.job
        
        

        
        
    }
    

   
}
