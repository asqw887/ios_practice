//
//  ViewController.swift
//  Album
//
//  Created by 최예주 on 2021/03/01.
//

import UIKit

class ViewController: UIViewController {

    var currentValue = 0
    
    @IBOutlet weak var priceLable: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        refresh()
        // Do any additional setup after loading the view.
    }

    @IBAction func hello(_ sender: Any) {
        
        let message = "가격은 \(currentValue) 입니다"
        
        let alert = UIAlertController(title: "HEllo", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "okay", style: .default ,handler: {action in self.refresh()})
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
       
        
        
    }
    
    func refresh() {
        let randomPrice = arc4random_uniform(10000) + 1
        currentValue = Int(randomPrice)
        priceLable.text = "$\(currentValue)"
    }
    
 

    
    
}

