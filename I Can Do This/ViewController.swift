//
//  ViewController.swift
//  I Can Do This
//
//  Created by 이자민 on 2/23/24.
//

import UIKit

class ViewController: UIViewController {
    
    var isAngel: Bool = false {
            didSet {
                // isAngel 값이 변경될 때마다 이미지를 업데이트합니다.
                devilCatImageView.image = isAngel ? UIImage(named: "angelCat") : UIImage(named: "devilCat")
                
                canbeLabel.text = isAngel ? "I can be a bad cat" : "I can be a nice cat"
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var devilCatImageView: UIImageView!

    @IBAction func changeItemButton(_ sender: Any) {
        //devilCatImageView.image = UIImage(named: "angelCat")
        isAngel.toggle()
    }
    
    @IBOutlet weak var canbeLabel: UILabel!
    

}

