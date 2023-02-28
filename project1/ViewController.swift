//
//  ViewController.swift
//  project1
//
//  Created by Sahara Farah Abdi on 2/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    let VincenzoCassano = Fictional(name: "Vincenzo Cassano", image:UIImage(named:"pxfuel")!, story:"is ruthless Korean-Italian mob lawyer and a Consigliere of the Cassano crime family from Netflix series Vincenzo")
    let SuperPower = Fictional(name:"Vincenzo Cassano", image:UIImage(named:"pxfuel")!, story:"He is smart, funny,badass lawyer, good looking, takes down bad guys. He is the ultimate Antihero")
    let FunFacts = Fictional(name: "Vincenzo Cassano", image: UIImage(named: "pxfuel")!, story: "He hates iced coffee and has a pigeon pet")
    
    var fictional: [Fictional] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fictional = [VincenzoCassano, SuperPower, FunFacts]
        
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapCharacter(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailSegue",
           let tappedView = sender as? UIView,
           let detailViewController = segue.destination as? DetailViewController {
            
            if tappedView.tag == 0 {
                detailViewController.fictional = fictional[0]
            } else if tappedView.tag == 1 {
                detailViewController.fictional = fictional[1]
            } else if tappedView.tag == 2 {
                detailViewController.fictional = fictional[2]
            }
            else{
                print("nothing was tapped, please check your selection.")
            }
        }
    }
    
}
    


