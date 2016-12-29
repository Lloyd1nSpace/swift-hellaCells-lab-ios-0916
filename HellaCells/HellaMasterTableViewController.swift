//
//  HellaMasterTableViewController.swift
//  HellaCells
//
//  Created by Lloyd W. Sykes on 12/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaMasterTableViewController: UITableViewController {
    
    var hella = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillHella()
    }
    
    func fillHella() {
        for i in 1...100 {
            hella.append(i)
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hella.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hellaCell", for: indexPath)
        cell.textLabel?.text = String(hella[indexPath.row])
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "hellaSeuge" { return }
        if let dest = segue.destination as? HellaDetailViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            dest.hellaNum = String(hella[indexPath.row])
        }
    }
    
}
