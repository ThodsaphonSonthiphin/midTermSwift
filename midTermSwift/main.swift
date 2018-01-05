//
//  main.swift
//  midTermSwift
//
//  Created by thodsaphon on 1/1/2561 BE.
//  Copyright © 2561 thodsaphon. All rights reserved.
//

import Foundation



let frontCards = ["🎃","👻","🎃","👻","👽","🤖","🦄","👽","🤖","🦄"]
let backCard:Array<String> = Array(repeatElement("🀫", count: 10));
var cardInGame = backCard;
var allFlip = 0;




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






/// calculate score from (card.count * 100) - allFlip
///
/// - Parameter allFlip:
func calculateScoreFrom(allFlip:Int){
    var score = cardInGame.count * 100;
    score = score - allFlip;
    show(score: score);
}

/// show score to player
///
/// - Parameter score: thsi score come from calculatedScore function
func show(score:Int){
    print("you get \(score) score")
}




