//
//  ClassicResults.swift
//  EightBall
//
//  Created by Brennan Stehling on 12/28/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

import Foundation

public class Results: NSObject {

    lazy var classicResults = [
        // Positive
        "It is certain",
        "It is decidedly so",
        "Without a doubt",
        "Yes definitely",
        "You may rely on it",
        "As I see it yes",
        "Most likely",
        "Outlook good",
        "Yes",
        "Signs point to yes",
        // Uncertain
        "Reply hazy try again",
        "Ask again later",
        "Better not tell you now",
        "Cannot predict now",
        "Concentrate and ask again",
        // Negative
        "Don\"t count on it",
        "My reply is no",
        "My sources say no",
        "Outlook not so good",
        "Very doubtful"
    ]

    public func randomClassicResult() -> String {
        let randomIndex = Int(arc4random_uniform(UInt32(classicResults.count)))
        return classicResults[randomIndex]
    }

}
