//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Burak Firik on 11/27/17.
//  Copyright © 2017 Code Path. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

       var emojis: [Emoji] = []
  
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmojis()
    }

  
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojis.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        let emoj = emojis[indexPath.row]
        cell.textLabel?.text = "\(emoj.theEmoji) -" + "\(emoj.category)"
        return cell
    }
  
  
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "ourSegue", sender:emoji )
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      let emojiDetVC = segue.destination as! DetailViewController
      emojiDetVC.emoji = sender as! Emoji
    }
  
  func createEmojis() -> [Emoji] {
    let smiley = Emoji()
    smiley.theEmoji = "😀"
    smiley.birthYear = 2014
    smiley.explanation = "Smiley Face"
    smiley.category = "Faces"
    
    
    let lip = Emoji()
    lip.theEmoji = "👄"
    lip.birthYear = 2011
    lip.explanation = "Lip Face"
    lip.category = "Human"
    
    return [smiley, lip]
    
  }

}
