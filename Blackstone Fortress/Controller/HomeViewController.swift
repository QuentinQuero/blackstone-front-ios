//
//  HomeViewController.swift
//  Blackstone Fortress
//
//  Created by Carl on 29/01/2021.
//

import UIKit
import youtube_ios_player_helper

class HomeViewController: UIViewController {

    @IBOutlet weak var characterButton: UIButton!
    @IBOutlet weak var starshipButton: UIButton!
    @IBOutlet weak var explorationButton: UIButton!
    
    @IBOutlet weak var youtubePlayer: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        roundCorner(button: characterButton)
        roundCorner(button: starshipButton)
        roundCorner(button: explorationButton)
        
        youtubePlayer.load(withVideoId: "THr3cB1n0VM", playerVars: ["playsinline": "1"]
        )
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    private func roundCorner(button: UIButton) {
//        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.7).cgColor
//        button.layer.shadowRadius = 2.0
//        button.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
//        button.layer.shadowOpacity = 2.0
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
    }

}
