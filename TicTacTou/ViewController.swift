//
//  ViewController.swift
//  TicTacTou
//
//  Created by mac on 3 محرم، 1439 هـ.
//  Copyright © 1439 هـ mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func buSelectEvent(_ sender: Any) {
        let buSelect = sender as! UIButton
        playGame(buSelect: buSelect)
    }
    
    var ActivePlayer = 1
    var player1 = [Int]()
    var player2 = [Int]()
    func playGame(buSelect:UIButton){
        
        if ActivePlayer == 1 {
            buSelect.setTitle("X", for: UIControlState.normal)
            buSelect.backgroundColor = UIColor(red: 102/255, green: 250/255, blue: 51/255, alpha: 0.5)
            player1.append(buSelect.tag)
            ActivePlayer = 2
            //print(player1)
        }else{
            buSelect.backgroundColor = UIColor(red: 88/255, green: 231/255, blue: 147/255, alpha: 0.5)
            ActivePlayer = 2
            buSelect.setTitle("O", for: UIControlState.normal)
            player1.append(buSelect.tag)
            ActivePlayer = 1
            //print(player2)
    }
        buSelect.isEnabled = false
        findwinner()
    }
    
    func findwinner() {
        var winner = -1
    //row1
        if( player1.contains(1) && player1.contains(2) && player1.contains(3)) {
            winner = 1
        }
        
        if( player2.contains(1) && player2.contains(2) && player2.contains(3)) {
            winner = 2
        }
        
        //row2
        if( player1.contains(4) && player1.contains(5) && player1.contains(6)) {
            winner = 1
        }
        
        if( player2.contains(4) && player2.contains(5) && player2.contains(6)) {
            winner = 2
            
            //row3
            if( player1.contains(7) && player1.contains(8) && player1.contains(9)) {
                winner = 1
            }
            
            if( player2.contains(7) && player2.contains(8) && player2.contains(9)) {
                winner = 2
                
            }
            
            //col1
            if( player1.contains(1) && player1.contains(4) && player1.contains(7)) {
                winner = 1
            }
            
            if( player2.contains(1) && player2.contains(4) && player2.contains(7)) {
                winner = 2
                
            }
            
            //col2
            if( player1.contains(2) && player1.contains(5) && player1.contains(8)) {
                winner = 1
            }
            
            if( player2.contains(2) && player2.contains(5) && player2.contains(8)) {
                winner = 2
                
            }
            
            //col3
            if( player1.contains(3) && player1.contains(6) && player1.contains(9)) {
                winner = 1
            }
            
            if( player2.contains(3) && player2.contains(6) && player2.contains(9)) {
                winner = 2
                
            }
            
            if winner != -1 {
                
                var msg = ""
                if winner == 1 {
                   msg = "plaer 1"
                }else{
                msg = " فاز الاعب الاول"
                }
                //print(msg)
                //show alert
                let alert = UIAlertController(title: "winner", message: msg, preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
            }
         }
}
}
