//
//  ViewController.swift
//  IOS-Swift-UITableViewAutoRowHight
//
//  Created by Pooya on 2018-09-13.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    var tableData : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableData  = [("An apple is a sweet, edible fruit produced by an apple tree."),
               ("An apricot is a fruit, or the tree that bears the fruit, of several species in the genus Prunus (stone fruits)."),
               ("A banana is an edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa."),
               ("A grape is a fruit, botanically a berry, of the deciduous woody vines of the flowering plant genus Vitis."),
               ("Kiwifruit, or Chinese gooseberry is the edible berry of several species of woody vines in the genus Actinidia."),
               ("The orange is the fruit of the citrus species Citrus × sinensis in the family Rutaceae. "),
               ("A peach is a soft, juicy and fleshy stone fruit produced by a peach tree.")]
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! TableViewCell
        let cellText = tableData[indexPath.row]
        //cell.textLabel?.text = cellText
        cell.cellLabel?.text = cellText
        
        if indexPath.row % 2 == 0 {
            cell.contentView.backgroundColor = UIColor.lightGray
        }
        
        return cell
    }
    

}

