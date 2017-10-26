//
//  ColorsViewController.swift
//  Colors with Navigation
//
//  Created by Nathan Schlechte on 10/25/17.
//  Copyright © 2017 Nathan Schlechte. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var colorTableView: UITableView!
    var allColors = [Color]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allColors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = allColors[indexPath.row].name
        cell.backgroundColor = allColors[indexPath.row].swiftColor
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.isSelected = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let color1 = Color(name:"red", swiftColor:UIColor.red)
        let color2 = Color(name:"orange", swiftColor:UIColor.orange)
        let color3 = Color(name:"yellow", swiftColor:UIColor.yellow)
        let color4 = Color(name:"green", swiftColor:UIColor.green)
        let color5 = Color(name:"blue", swiftColor:UIColor.blue)
        let color6 = Color(name:"purple", swiftColor:UIColor.purple)
        let color7 = Color(name:"brown", swiftColor:UIColor.brown)
        
        allColors += [color1, color2, color3, color4, color5, color6, color7]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
        let row = colorTableView.indexPathForSelectedRow?.row {
            destination.color = allColors[row]
        }
    }
 

}
