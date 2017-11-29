
import UIKit

class DetailViewController: UIViewController {
  
  var emoji =  Emoji()
  
  @IBOutlet weak var emojiLabel: UILabel!
  @IBOutlet weak var emojiDef: UILabel!
  @IBOutlet weak var birthLabel: UILabel!
  @IBOutlet weak var categoryLabel: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      emojiLabel.text = emoji.theEmoji
      emojiDef.text = emoji.explanation
      birthLabel.text = "Birth Yer: \(emoji.birthYear)"
      categoryLabel.text = "Category: \(emoji.category)"
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  
  
}
