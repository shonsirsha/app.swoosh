//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Sean Saoirse on 19/09/18.
//  Copyright © 2018 Sean Saoirse. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    @IBOutlet weak var nextBtn: borderButton!
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    
    @IBAction func onCoEdTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    
    @IBAction func onNextBtnTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }

}
