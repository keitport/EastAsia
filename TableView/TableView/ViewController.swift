//
//  ViewController.swift
//  TableView
//
//  Created by Keita Suzuki on 2020/06/11.
//  Copyright © 2020 Keita Suzuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let infoLists: [Info] = [
          Info(iconName: "China", title: "中華人民共和国", description: "国旗制定日：1949年"),
          Info(iconName: "Mongolia", title: "モンゴル", description: "国旗制定日：1992年"),
          Info(iconName: "Korea", title: "大韓民国", description: "国旗制定日：1949年"),
          Info(iconName: "North_Korea", title: "朝鮮民主主義人民共和国", description: "国旗制定日：1948年"),
          Info(iconName: "Japan", title: "日本", description: "国旗制定日：1870年"),
          Info(iconName: "Macau", title: "マカオ", description: "国旗制定日：1999年"),
          Info(iconName: "Hong_Kong", title: "香港", description: "国旗制定日：1997年")
      ]
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configureTableViewCell()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func configureTableViewCell(){
        
        let nib = UINib(nibName: "keitaTableViewCell", bundle: nil)
        let cellID = "keitaTableViewCell"
        
        tableView.register(nib, forCellReuseIdentifier: cellID)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infoLists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "keitaTableViewCell", for: indexPath) as! keitaTableViewCell
        cell.iconView.image = UIImage(named: infoLists[indexPath.row].iconName)
        
        cell.titleLabel.text = infoLists[indexPath.row].title
        
        cell.descriptionLabel.text = infoLists[indexPath.row].description
        
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = DetailViewController()
        vc.Info = infoLists[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)

    }
}

