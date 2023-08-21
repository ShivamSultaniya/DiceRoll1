//
//  ViewController.swift
//  DiceRoll
//
//  Created by Shivam on 21/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var MainView: UIView!
    
    
    @IBOutlet weak var Stack: UIStackView!
    
    
    @IBOutlet weak var Logo: UIImageView!
    
    @IBOutlet weak var imageView1: UIImageView!
    
    
    @IBOutlet weak var imageView2: UIImageView!
    
    let imageNames1 = ["1b","2b","3b","4b","5b","6b"]
    let imageNames2 = ["1w","2w","3w","4w","5w","6w"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImage(named: "whitebg")
        MainView.backgroundColor = UIColor(patternImage: backgroundImage!)
        Logo.image = UIImage(named: "dicelogo")
        updatePicture()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        updatePicture()
    }
    
    func updatePicture(){
        let randomNumber1 = Int.random(in: 0...5)
        let randomNumber2 = Int.random(in: 0...5)
        imageView1.image = UIImage(named: imageNames1[randomNumber1])
        imageView2.image = UIImage(named: imageNames2[randomNumber2])
    }

}

