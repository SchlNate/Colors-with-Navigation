//
//  ColorsViewController.swift
//  Colors with Navigation
//
//  Created by Nathan Schlechte on 10/25/17.
//  Copyright © 2017 Nathan Schlechte. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    struct color {
        var name: String
        var swiftColor: UIColor
    }
    
    var allColors = [color]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allColors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = allColors[indexPath.row].name
        cell.backgroundColor = allColors[indexPath.row].swiftColor
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let color1 = color(name:"red", swiftColor:UIColor.red)
        let color2 = color(name:"orange", swiftColor:UIColor.orange)
        let color3 = color(name:"yellow", swiftColor:UIColor.yellow)
        let color4 = color(name:"green", swiftColor:UIColor.green)
        let color5 = color(name:"blue", swiftColor:UIColor.blue)
        let color6 = color(name:"purple", swiftColor:UIColor.purple)
        let color7 = color(name:"brown", swiftColor:UIColor.brown)
        
        allColors += [color1, color2, color3, color4, color5, color6, color7]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
