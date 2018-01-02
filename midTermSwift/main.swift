//
//  main.swift
//  midTermSwift
//
//  Created by thodsaphon on 1/1/2561 BE.
//  Copyright © 2561 thodsaphon. All rights reserved.
//

import Foundation

/// show cards in the game
///
/// - Parameter cards: array of string
func show(cards:Array<String>){
    for card in cards{
        print("|\(card)|  ",terminator:"");
        //print(_:separator:terminator:)
    }
    
    print("")
}


/// how to play this game

print("\t\t\t\t\t\t\t\t\t\t\t\t  ยินดีต้อนรับสู่เกมจับคู่")

var guildCards:Array<String> = Array(repeatElement("🀫", count: 10));
guildCards[0] = "🎃"
guildCards[2] = "🎃"
show(cards: guildCards);
print("");
print("");
print("#Rule#")


//let frontCards = ["🎃","👻","🎃","👻","👽","🤖","🦄","👽","🤖","🦄"]
//let backCard:Array<String> = Array(repeatElement("🀫", count: 10));
//
//show(cards: frontCards);
//show(cards: backCard);



