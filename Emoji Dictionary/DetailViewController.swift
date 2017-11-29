//
//  DetailViewController.swift
//  Emoji Dictionary
//
//  Created by Burak Firik on 11/28/17.
//  Copyright © 2017 Code Path. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
    var emoji = ""
  
  @IBOutlet weak var emojiLabel: UILabel!
  @IBOutlet weak var emojiDef: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
      emojiLabel.text = emoji
      // ["✊🏻", "👄", "🧠", "🤜🏻", "🙌🏼","👀", "🎯"]
      if (emoji == "✊🏻") {
        emojiDef.text = "Hand Ok!"
      }
      
      if emoji == "👄" {
        emojiDef.text = "Smiley face"
      }
      
      if emoji == "🧠" {
        emojiDef.text = "Brain"
      }
      
      if emoji == "🤜🏻" {
        emojiDef.text = "Punch"
      }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  
  
}
