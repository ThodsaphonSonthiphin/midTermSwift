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
var locationOfCardsFromPlayer:Array<(Int,Int)> = [(0,2),(1,3),(4,7),(5,8),(6,9)]


enum GameError:Error{
    case outOfbound
}

func checkLocationOf(card:(Int,Int))throws{
    guard card.0 <= cardInGame.count-1 else {
        throw GameError.outOfbound;
    }
    guard card.1 <= cardInGame.count-1 else {
        throw GameError.outOfbound;
    }
}

enum DiscriptionOfCard:String{
    case ghost = "👻"
    case pumkin = "🎃"
    case alien = "👽"
    case robotFace = "🤖"
    case unicorn = "🦄"
}
func checkDiscriptionOfCard(aCard:String){
    
    if let value = DiscriptionOfCard.init(rawValue: aCard){
        
        
        print("you meet the \(value)");
    }else{
        print("error")
    }

}






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
func guide(){
    print("\t\t\t\t\t\t\t\t\t\t\t\t  ยินดีต้อนรับสู่เกมจับคู่")

    var guildCards:Array<String> = Array(repeatElement("🀫", count: 10));
    guildCards[0] = "🎃"
    guildCards[2] = "🎃"
    show(cards: guildCards);
    print("");
    print("");
    print("#Rule#")

    let rule = """
    1. เลือกตำแหน่งของไพ่ที่คิดว่าจะมีหน้าไพ่ที่เหมือนกัน ทั้งสอตำแหน่ง
    2. ถ้าเลือกไพ่ที่มีหน้าไม่เหมือนกัน จะต้องเลือกใหม่. ถ้าภาพเหมือนกัน ระบบจะแสดงหน้าไพ่ทั้งสองใบที่เลือก
    """


    print(rule)

}

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




func checkCard(){
    var setBackCard = Set(backCard);
    var setCardsInGame = Set(cardInGame);
    //การ์ดยังไม่เปิดทั้งหมด
    while setBackCard.intersection(setCardsInGame).count != 0 {
        //fetch location from array and delete first
        let locationOfCards = locationOfCardsFromPlayer.removeFirst();
        
        allFlip = allFlip + 2;
        
        if frontCards[locationOfCards.0] == frontCards[locationOfCards.1]{
            
            checkDiscriptionOfCard(aCard: frontCards[locationOfCards.0]);
            checkDiscriptionOfCard(aCard: frontCards[locationOfCards.1]);
            
            
            cardInGame[locationOfCards.0] = frontCards[locationOfCards.0];
            cardInGame[locationOfCards.1] = frontCards[locationOfCards.1];
            
            show(cards: cardInGame);
        }
        
        setBackCard = Set(backCard);
        setCardsInGame = Set(cardInGame);
    }
     show(cards: cardInGame);
    calculateScoreFrom(allFlip: allFlip);
}



enum Mode:Int{
    case guide = 1;
    case play = 2;
}


let seslectMode = Mode.init(rawValue: 1)!;

print("ต้องการดูคู่มือก่อนเล่น กด 1")

switch seslectMode {
    
case .guide:
    guide();
    fallthrough;
case .play:
    checkCard();
    
}
do {
    try checkLocationOf(card: (9,9))
} catch {
    print(error)
}


//print(DiscriptionOfCard.ghost);

