//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Burak Firik on 11/27/17.
//  Copyright © 2017 Code Path. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    var emojis = ["✊🏻", "👄", "🧠", "🤜🏻", "🙌🏼","👀", "🎯"]
     
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }

  
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojis.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
  
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let emoji = emojis[indexPath.row]
    performSegue(withIdentifier: "ourSegue", sender:emoji )
    
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    let emojiDetVC = segue.destination as! DetailViewController
    emojiDetVC.emoji = sender as! String
    
  }

}
