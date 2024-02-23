//
//  ContentView.swift
//  War Card Game
//
//  Created by 64001174 on 2/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card1"
    @State var cpuCard = "card2"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            

            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                Spacer()
                
                Button(
                    action: {
                        deal()
                    },
                    label: {
                    Image("button")
                })
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.title)
                            .padding(.bottom, 5.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                    
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.title)
                            .padding(.bottom,5)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal() {
        var playerCardValue = String(Int.random(in: 2...14))
        var cpuCardValue = String(Int.random(in: 2...14))
        
        //randomize player card
        playerCard = "card" + playerCardValue
        
        //randomize cpu card'
        cpuCard = "card" + cpuCardValue
        
        //update score
        if (cpuCardValue > playerCardValue) {
            cpuScore += 1
        } else if (playerCardValue > cpuCardValue) {
            playerScore += 1
        }
        
        
    }
    
}

#Preview {
    ContentView()
}
