//
//  ViewController.swift
//  Binary Counter
//
//  Created by Peisure on 1/17/18.
//  Copyright © 2018 Ben. All rights reserved.
//

import UIKit

class ViewController: UITableViewController,customDeligate{

    @IBOutlet weak var total: UILabel!
    var sum = 0
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        cell.displayLabel.text = String(describing: pow(10,indexPath.row))
        cell.deligate = self
        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func caculate(_ sender: CustomCell, with button: UIButton) {
        if let num = Int(sender.displayLabel.text!){
            if button.titleLabel?.text == "+"{
                sum += num
            }
            else{
                sum -= num
            }
        }
        total.text = "Total: \(String(sum))"
    }

}

