//
//  ViewController.swift
//  CardWorkOutSB
//
//  Created by Emmanuel Enya on 16/04/2023.
//

import UIKit

class CardWorkOutViewController: UIViewController {
    
    @IBOutlet weak var cardImageView: UIImageView!
    
    private let cards: [UIImage] = Deck.allValues
    
    private var timer: Timer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        scheduleTimer()
    }
    
    
    func scheduleTimer(){
         timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    
    @objc func showRandomImage(){
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
        
    }

    
    @IBAction func onButtonStopTapped(_ sender: UIButton) {
        timer.invalidate()
        
    }
    
    @IBAction func onButtonRestartTapped(_ sender: UIButton) {
        cardImageView.image =  UIImage(named: "AS")
        scheduleTimer()
    }
}

