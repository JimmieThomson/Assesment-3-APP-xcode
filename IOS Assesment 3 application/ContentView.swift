//
//  ContentView.swift
//  IOS Assesment 3 application
//
//  Created by James Thomson on 26/5/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var Password = ""
    @State private var WrongUsername = 0
    @State private var WrongPassword = 0
    @State private var ShowLoginScreen = false
    
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("LogoCar")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 400.0)
                    .position(x: 194, y: 50)
                Text("Login")
                    .font(.largeTitle)
                    .bold()
                    .position(x: 195, y: 150)
                Text("Username")
                    .bold()
                    .position(x: 93, y: 200)
                TextField("Username", text: $username)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .position(x: 195, y: 240)
                Text("Password")
                    .bold()
                    .position(x: 93, y: 290)
                SecureField("Password", text: $Password)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .position(x: 195, y: 330)
                Button("Enter") {
                    print("login tapped")
                    Authenticate(Username: username, Password: Password)
                }
                .frame(width: 200, height: 50)
                .background(Color(red: 0.684, green: 0.888, blue: 0.711))
                .foregroundColor(Color.white)
                .cornerRadius(10)
                .position(x: 200, y: 420)
                
                NavigationLink(destination: ContentViewB().navigationBarBackButtonHidden(true), isActive: $ShowLoginScreen){
                    EmptyView()
                }
            }
        }
    }


    func Authenticate(Username: String, Password: String){
        print(Username, Password)
        if (Username == "James") {
            print("Username correct")
            WrongUsername = 0
            if (Password == "Amongussussy") {
                print("Password correct")
                WrongPassword = 0
                ShowLoginScreen = true
                print("Successful Login")
            }
            else{
                WrongPassword = 2
            }
        }
        else{
            WrongUsername = 2
        }
    }
}


struct ContentViewB: View {
    @State var timeNow = ""
        let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
        var dateFormatter: DateFormatter {
                let fmtr = DateFormatter()
                fmtr.dateFormat = "LLLL dd, hh:mm:ss a"
                return fmtr
        }
    @State var Search = false
    var body: some View {
        ZStack{
            NavigationLink(destination: SearchStruc(),isActive: $Search){
                
            }
            Image("LogoCar")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 100)
                .position(x: 195, y: 50)
            Text("Welcome Back Miss Carbone,")
                .position(x: 140, y: 190)
            Rectangle()
                .fill(Color(red: 0.6784313725490196, green: 0.803921568627451, blue: 0.7058823529411765))
                .cornerRadius(10)
                .frame(width: 340, height: 233)
                .position(x: 195, y: 320)
            Text(timeNow)
                .bold()
                .multilineTextAlignment(.center)
                .minimumScaleFactor(800)
                .font(.system(size: 28))
                .lineLimit(2)
                .frame(width: 250, height: 80)
                .position(x: 205, y: 130)
                .onReceive(timer) { _ in
                    self.timeNow = dateFormatter.string(from: Date())
                }
            
            Group{
                //Enjoy this spagetti
                Text("Favourites")
                    .bold()
                    .position(x: 80, y: 230)
                    .foregroundColor(Color.white)
                Text("- Blackburn")
                    .bold()
                    .font(.system(size: 25))
                    .position(x: 110, y: 260)
                    .foregroundColor(Color.white)
                Text("- Box Hill")
                    .bold()
                    .font(.system(size: 25))
                    .position(x: 95, y: 290)
                    .foregroundColor(Color.white)
                Text("- Mont Albert")
                    .bold()
                    .font(.system(size: 25))
                    .position(x: 120, y: 320)
                    .foregroundColor(Color.white)
                Text("- Surrey Hills")
                    .bold()
                    .font(.system(size: 25))
                    .position(x: 119, y: 350)
                    .foregroundColor(Color.white)
                Text("- Chatam")
                    .bold()
                    .font(.system(size: 25))
                    .position(x: 100, y: 380)
                    .foregroundColor(Color.white)
            }
            Group{
                Rectangle()
                    .fill(Color(red: 0.6784313725490196, green: 0.803921568627451, blue: 0.7058823529411765))
                    .cornerRadius(10)
                    .frame(width: 340, height: 170)
                    .position(x: 195, y: 550)
                Text("Quick Search")
                    .bold()
                    .position(x: 90, y: 489)
                    .foregroundColor(Color.white)
                Rectangle()
                    .fill(Color(hue: 0.373, saturation: 0.301, brightness: 0.883))
                    .cornerRadius(10)
                    .frame(width: 310, height: 30)
                    .position(x: 195, y: 520)
                Rectangle()
                    .fill(Color(hue: 0.373, saturation: 0.301, brightness: 0.883))
                    .cornerRadius(10)
                    .frame(width: 310, height: 30)
                    .position(x: 195, y: 560)
                Rectangle()
                    .fill(Color(hue: 0.373, saturation: 0.301, brightness: 0.883))
                    .cornerRadius(10)
                    .frame(width: 310, height: 30)
                    .position(x: 195, y: 600)
                Text("Train Line")
                    .bold()
                    .font(.system(size: 20))
                    .position(x: 195, y: 520)
                    .foregroundColor(Color.white)
                Text("Avaliability")
                    .bold()
                    .font(.system(size: 20))
                    .position(x: 195, y: 559)
                    .foregroundColor(Color.white)
                Text("Near you")
                    .bold()
                    .font(.system(size: 20))
                    .position(x: 195, y: 598)
                    .foregroundColor(Color.white)
            }
            
            //navigation Bar
            Group{
                Image("Home")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 100)
                    .position(x: 50, y: 740)
                Rectangle()
                    .fill(Color(red: 0.357, green: 0.418, blue: 0.451))
                    .frame(width: 50, height: 2)
                    .position(x: 50, y: 780)
                Image("Maps")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 100)
                    .position(x: 183, y: 739)
                Button("Maps") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                .frame(width: 70, height: 64)
                .foregroundColor(.black)
                .position(x: 184, y: 767)
                
                Image("Settings")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 52, height: 100)
                    .position(x: 253, y: 738)
                Button("Settings") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                .frame(width: 70, height: 64)
                .foregroundColor(.black)
                .position(x: 254, y: 767)
            }
            Group{
                
                Image("News")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 54, height: 100)
                    .position(x: 330, y: 741)
                Button("News") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                .frame(width: 70, height: 64)
                .foregroundColor(.black)
                .position(x: 330, y: 767)
                
                Image("Search")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 53, height: 100)
                    .position(x: 120, y: 739)
                Button("Search") {
                    print("Search button pressed!")
                    Search = true
                    }
                .frame(width: 70, height: 64)
                .foregroundColor(.black)
                .position(x: 120, y: 767)
            }
        }.position(x:195, y: 240)
    }
}

struct SearchStruc: View {
    @State var Search = ""
    var body: some View {
        ZStack{
            Group{
                TextField("Search", text: $Search)
                    .padding()
                    .frame(width: 260, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .position(x: 145, y: 40)
                Button("Search") {
                    
                }
                .frame(width: 80, height: 50)
                .background(Color(red: 0.684, green: 0.888, blue: 0.711))
                .cornerRadius(10)
                .foregroundColor(Color.white)
                .position(x: 330, y: 40)
            }
            Text("Show more")
                .foregroundColor(Color.black.opacity(0.4))
                .position(x: 195, y: 330)
        }.position(x:195, y: 240)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {

            ContentView()
                .previewDevice("iPhone 12")
                .previewInterfaceOrientation(.portrait)
        }
    }
}
