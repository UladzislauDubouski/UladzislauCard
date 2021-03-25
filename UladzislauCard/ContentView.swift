//
//  ContentView.swift
//  UladzislauCard
//
//  Created by Uladzislau Dubouski on 8/27/20.
//  Copyright © 2020 Uladzislau Dubouski. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.45, green: 0.73, blue: 0.33, opacity: 0.5).edgesIgnoringSafeArea(.all)
            VStack {
                Image("ulad")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:150,height: 200)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white,lineWidth: 5)
                )
                Text("Uladzislau Dubouski")
                    .font(Font.custom("Pacifico-Regular", size: 30)).bold().foregroundColor(.white)
                Text("Mobile Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+375 33 914 21 14", imageName: "phone.fill")
                InfoView(text: "udubouski@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

