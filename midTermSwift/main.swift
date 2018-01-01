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


