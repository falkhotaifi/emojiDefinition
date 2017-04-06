//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Faisal Alkhotaifi on 3/29/17.
//  Copyright © 2017 Faisal Alkhotaifi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!

    var emojis: [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        emojis = makeEmojiArry()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.deselectRow(at: indexPath, animated: true)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArry() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.definition = "A smiley face with sunglasses"
        emoji1.category = "Category: Smileys & people"
        emoji1.dirthYear = 2009
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😨"
        emoji2.definition = "An afraid face"
        emoji2.category = "Category: Smileys & people"
        emoji2.dirthYear = 2011
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "💩"
        emoji3.definition = "A shit face"
        emoji3.category = "Category: Smileys & people"
        emoji3.dirthYear = 2014
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😄"
        emoji4.definition = "A funny face"
        emoji4.category = "Category: Smileys & people"
        emoji4.dirthYear = 2010
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐹"
        emoji5.definition = "A Hamster"
        emoji5.category = "Category: Animals & Nuture"
        emoji1.dirthYear = 2013
        
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐬"
        emoji6.definition = "A dolphin"
        emoji6.category = "Category: Animals & Nuture"
        emoji6.dirthYear = 2009
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }

}

