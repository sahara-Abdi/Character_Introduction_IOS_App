//
//  DetailViewController.swift
//  project1
//
//  Created by Sahara Farah Abdi on 2/25/23.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var CharacterStory: UILabel!
    @IBOutlet weak var CharacterImage: UIImageView!
    @IBOutlet weak var CharacterName: UILabel!
    var fictional: Fictional?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let fictional = fictional{
            
            CharacterImage.image = fictional.image
            CharacterName.text = fictional.name
            CharacterStory.text = fictional.story
            
        }

        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
