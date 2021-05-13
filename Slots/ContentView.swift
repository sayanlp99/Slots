//
//  ContentView.swift
//  Slots
//
//  Created by Admin on 13/05/21.
//

import SwiftUI

struct ContentView: View {
    @State var score = 0
    @State var slot1 = "star"
    @State var slot2 = "star"
    @State var slot3 = "star"
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Text("Slots")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .padding()
                Spacer()
                ZStack{
                    Image("container")
                    HStack{
                        Text("Credit: ")
                            .foregroundColor(Color.white)
                        Text(String(score))
                            .foregroundColor(Color.white)
                    }
                }
                Spacer()
                HStack{
                    Image(slot1)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image(slot2)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image(slot3)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                Spacer()
                Button(action: {
                    let mSlot1 = Int.random(in: 1...3)
                    let mSlot2 = Int.random(in: 1...3)
                    let mSlot3 = Int.random(in: 1...3)
                    switch mSlot1{
                        case 1:
                            slot1 = "apple"
                        case 2:
                            slot1 = "cherry"
                        case 3:
                            slot1 = "star"
                        default:
                            break
                    }
                    switch mSlot2{
                        case 1:
                            slot2 = "apple"
                        case 2:
                            slot2 = "cherry"
                        case 3:
                            slot2 = "star"
                        default:
                            break
                    }
                    switch mSlot3{
                        case 1:
                            slot3 = "apple"
                        case 2:
                            slot3 = "cherry"
                        case 3:
                            slot3 = "star"
                        default:
                            break
                    }
                    if(slot1 == slot2 && slot2 == slot3 && slot3 == slot1){
                        score += 1
                    }
                }, label: {
                    ZStack{
                        Image("button")
                        Text("Spin")
                            .foregroundColor(Color.white)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                })
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
