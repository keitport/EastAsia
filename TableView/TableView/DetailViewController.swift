//
//  DetailViewController.swift
//  TableView
//
//  Created by Keita Suzuki on 2020/06/11.
//  Copyright © 2020 Keita Suzuki. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var iconView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var Info: Info?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        guard let Info = Info else{ return }
        iconView.image = UIImage(named: Info.iconName)
        titleLabel.text = Info.title
        descriptionLabel.text = Info.description
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


