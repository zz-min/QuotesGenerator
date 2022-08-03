//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by kjmjimin on 2022/08/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes=[
        Quote(contents:"e1",name:"n1"),
        Quote(contents:"e2",name:"n2"),
        Quote(contents:"e3",name:"n3"),
        Quote(contents:"e4",name:"n4"),
        Quote(contents:"e5",name:"n5")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random=Int(arc4random_uniform(5)) //0~4사이의 난수를 반환
        let quote=quotes[random]
        self.quoteLabel.text=quote.contents
        self.nameLabel.text=quote.name
    }
}

