//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Faisal Alkhotaifi on 3/29/17.
//  Copyright © 2017 Faisal Alkhotaifi. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "Birth Year: \(emoji.dirthYear)"
        categoryLabel.text = emoji.category
        definitionLabel.text = emoji.definition
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
