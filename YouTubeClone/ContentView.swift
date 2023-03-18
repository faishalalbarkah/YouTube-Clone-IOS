//
//  ContentView.swift
//  YouTubeClone
//
//  Created by faisalalbarkah on 27/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView {
                Home()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                Home()
                    .tabItem{
                        Image(systemName: "paperplane.fill")
                        Text("Explorasi")
                    }
                Home()
                    .tabItem{
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                    }
                Home()
                    .tabItem{
                        Image(systemName: "envelope.fill")
                        Text("Kotak Masuk")
                    }
                Home()
                    .tabItem{
                        Image(systemName: "play.rectangle.fill")
                        Text("Koleksi")
                    }
            }
            .accentColor(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    var body: some View {
        NavigationView{
            Content()
//            Text("Hello Ini Content")
                .navigationBarItems(
                leading:
                    HStack{
                        Button(action: {print("Hello Button")})
                            {
                                Image("youtube")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 90, height: 40)
                            }
                        },
                trailing:
                    HStack(spacing:10){
                        Button(action: {print("Hello Print")}){
                            Image(systemName: "tray.full")
                                .foregroundColor(Color.secondary)
                        }
                        
                        Button(action: {print("Hello Print")}){
                            Image(systemName: "video.fill")
                                .foregroundColor(Color.secondary)
                        }
                        
                        Button(action: {print("Hello Print")}){
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color.secondary)
                        }
                        
                        Button(action: {print("Hello Print")}){
                            Image("profile")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width:25, height:25)
                                .clipShape(Circle())
                        }
                    }
                ).navigationBarTitle("", displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Content: View {
    var body: some View {
        List{
//            Content 1
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("content1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    Text("10:00")
                        .padding(.all, 5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                
                HStack{
                    Image("profile")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading){
                        Text("Membuat Content Menarik").font(.headline)
                        Spacer()
                        HStack{
                            Text("Ini adalah deskripsi video kita - 300x ditonton - 9 Jam yang lalu").font(.caption)
                        }
                    }
//                    Spacer()
//                    Spacer()
                    Image(systemName:"list.bullet")
                }
            }
            
//          Content 2
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("content2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    Text("10:00")
                        .padding(.all, 5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                
                HStack{
                    Image("profile")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading){
                        Text("Creative Content").font(.headline)
                        Spacer()
                        HStack{
                            Text("Ini adalah deskripsi video kita - 300x ditonton - 9 Jam yang lalu").font(.caption)
                        }
                    }
                    Spacer()
                    Spacer()
                    Image(systemName:"list.bullet")
                }
            }
            
//            Content 1
           VStack{
               ZStack(alignment: .bottomTrailing){
                   Image("content1")
                       .resizable()
                       .aspectRatio(contentMode: .fill)
                   
                   Text("10:00")
                       .padding(.all, 5)
                       .foregroundColor(Color.white)
                       .font(.caption)
                       .background(Color.black)
                       .cornerRadius(5)
                       .padding(.trailing, 5)
                       .padding(.bottom, 5)
               }
               
               HStack{
                   Image("profile")
                       .resizable()
                       .frame(width: 30, height: 30)
                       .clipShape(Circle())
                   
                   VStack(alignment: .leading){
                       Text("Membuat Content Menarik").font(.headline)
                       Spacer()
                       HStack{
                           Text("Ini adalah deskripsi video kita - 300x ditonton - 9 Jam yang lalu").font(.caption)
                       }
                   }
//                    Spacer()
//                    Spacer()
                   Image(systemName:"list.bullet")
               }
           }
        }
    }
}
