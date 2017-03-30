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
    
    
    @IBOutlet weak var definitionLabel: UILabel!
    var emoji = "No Emoji"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        
        if emoji == "😎"{
            definitionLabel.text = "dude with sunglasses"
        }else if emoji == "😨"{
            definitionLabel.text = "I am afraid of you!!"
        }else if emoji == "💩"{
            definitionLabel.text = "Eat shit"
        }else if emoji == "😄"{
            definitionLabel.text = "You're so funny my friend"
        }else if emoji == "🐹"{
            definitionLabel.text = "What a cute Hamster"
        }else if emoji == "🐬"{
            definitionLabel.text = "am I pretty?"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
