//: Playground - noun: a place where people can play

import UIKit

//Players
let player1: [String:String] = ["Name":"Joe Smith", "Height":"42", "Soccer Experience":"YES",
                             "Guardian":"Jim and Jan Smith"]

let player2: [String:String] = ["Name":"Jill Tanner", "Height":"36", "Soccer Experience":"YES",
                             "Guardian":"Clara Tanner"]

let player3: [String:String] = ["Name":"Bill Bon", "Height":"43", "Soccer Experience":"YES",
                             "Guardian":"Sara and Jenny Bon"]

let player4: [String:String] = ["Name":"Eva Gordon", "Height":"45", "Soccer Experience":"NO",
                             "Guardian":"Wendy and Mike Gordon"]

let player5: [String:String] = ["Name":"Matt Gill", "Height":"40", "Soccer Experience":"NO",
                             "Guardian":"Charles and Sylvia Gill"]

let player6: [String:String] = ["Name":"Kimmy Stein", "Height":"41", "Soccer Experience":"NO",
                             "Guardian":"Bill and Hillary Stein"]

let player7: [String:String] = ["Name":"Sammy Adams", "Height":"45", "Soccer Experience":"NO",
                             "Guardian":"Jeff Adams"]

let player8: [String:String] = ["Name":"Karl Saygan", "Height":"42", "Soccer Experience":"YES",
                             "Guardian":"Heather Bledsoe"]

let player9: [String:String] = ["Name":"Suzane Greenberg", "Height":"44", "Soccer Experience":"YES",
                             "Guardian":"Henrietta Dumas"]

let player10: [String:String] = ["Name":"Sal Dali", "Height":"41", "Soccer Experience":"NO",
                              "Guardian":"Gala Dali"]

let player11: [String:String] = ["Name":"Joe Kavalier", "Height":"39", "Soccer Experience":"NO",
                              "Guardian":"Sam and Elaine Kavalier"]

let player12: [String:String] = ["Name":"Ben Finkelstein", "Height":"44", "Soccer Experience":"NO",
                              "Guardian":"Aaron and Jill Finkelstein"]

let player13: [String:String] = ["Name":"Diego Soto", "Height":"41", "Soccer Experience":"YES",
                              "Guardian":"Robin and Sarika Soto"]

let player14: [String:String] = ["Name":"Chloe Alaska", "Height":"47", "Soccer Experience":"NO",
                              "Guardian":"David and Jamie Alaska"]

let player15: [String:String] = ["Name":"Arnold Willis", "Height":"43", "Soccer Experience":"NO",
                              "Guardian":"Claire Willis"]

let player16: [String:String] = ["Name":"Phillip Helm", "Height":"44", "Soccer Experience":"YES",
                              "Guardian":"Thomas Helm and Eva Jones"]

let player17: [String:String] = ["Name":"Les Clay", "Height":"42", "Soccer Experience":"YES",
                              "Guardian":"Wynonna Brown"]

let player18: [String:String] = ["Name":"Herschel Krustofski", "Height":"45", "Soccer Experience":"YES",
                              "Guardian":"Hyman and Rachel Krustofski"]

//Array with players

let playersArray = [player1, player2, player3, player4, player5, player6, player7, player8, player9,
                    player10, player11, player12, player13, player14, player15, player16, player17,
                    player18]


var dragrons = [NSDictionary]()
var sharks = [NSDictionary]()
var raptors = [NSDictionary]()


let numberOfTeams = 3
var teamIterator = 1

//Organize players in the teams

//Set skilled players
for index in 0...(playersArray.count - 1){
    
    let player = playersArray[index]
    
    if(player["Soccer Experience"] == "YES"){
    
        if(teamIterator == 1){
            dragrons.append(player)
        }else{
            if(teamIterator == 2){
                sharks.append(player)
            }else{
                raptors.append(player)
            }
        }
        
        teamIterator += 1
        if(teamIterator > numberOfTeams){
            teamIterator = 1
        }

        
    }
    
}

//Set non skilled players
for index in 0...(playersArray.count - 1){
    
    let player = playersArray[index]
    
    if(player["Soccer Experience"] == "NO"){
        
        if(teamIterator == 1){
            dragrons.append(player)
        }else{
            if(teamIterator == 2){
                sharks.append(player)
            }else{
                raptors.append(player)
            }
        }
        
        teamIterator += 1
        if(teamIterator > numberOfTeams){
            teamIterator = 1
        }
        
        
    }
    
}

//Create the letters

//Dragons letters
var dragonsLettersArray = [String]()

for index in 0...dragrons.count - 1 {
    
    let playerName = dragrons[index]["Name"]
    let guardiansName = dragrons[index]["Guardian"]
    
    let letter = "Hello \(guardiansName!), We would like to inform you that \(playerName!) is in the team of the dragons and his first training is on March 17 at 1pm. We would like to invite you to attend to his first practice. Thanks in advance"
    
    print(letter)
    
    dragonsLettersArray.append(letter)
}


//Sharks letters
var sharksLettersArray = [String]()

for index in 0...sharks.count - 1 {
    
    let playerName = sharks[index]["Name"]
    let guardiansName = sharks[index]["Guardian"]
    
    let letter = "Hello \(guardiansName!), We would like to inform you that \(playerName!) is in the team of the shark and his first training is on March 17 at 3pm. We would like to invite you to attend to his first practice. Thanks in advance"
    
    print(letter)
    
    sharksLettersArray.append(letter)
}

//Raptors letters
var raptorsLettersArray = [String]()

for index in 0...raptors.count - 1 {
    
    let playerName = raptors[index]["Name"]
    let guardiansName = raptors[index]["Guardian"]
    
    let letter = "Hello \(guardiansName!), We would like to inform you that \(playerName!) is in the team of the raptors and his first training is on March 18 at 1pm. We would like to invite you to attend to his first practice. Thanks in advance"

    print(letter)
    
    raptorsLettersArray.append(letter)
}


print(raptorsLettersArray[2])
sharksLettersArray[0]
dragonsLettersArray[0]





