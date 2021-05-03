//
//  Mockup3D.swift
//  coffe-mockup
//
//  Created by jacob on 2/05/21.
//

import SwiftUI

struct Mockup3D: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9278388619, green: 0.9223231673, blue: 0.9320785999, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack {
                HeaderTwo()
                
                SearchTwo().padding(.vertical, 10)
                
                ButtonsTwo().padding(.vertical, 20)
                
                CardsTwo().padding(.top, 20)
                
                Taskbar().offset(y:60)
            }
        }
    }
}

struct Mockup3D_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Mockup3D()
                .previewDevice("iPhone 12 Pro Max")
            Mockup3D()
        }
    }
}


//MARK: Header two
struct HeaderTwo: View {
    var body: some View {
        HStack {
            VStack {
                Text("Good morning,").font(.system(size: 19, weight: .medium, design: .serif)).foregroundColor(Color("maintext"))
                Text("Shaileen").font(.system(size: 28, weight: .bold, design: .serif)).foregroundColor(Color("maintext")).padding(.top, 5)
            }
            Spacer()
            Image("Aj").resizable().frame(width: 50, height: 50)
        }.padding(.horizontal, 30)
    }
}

//MARK: Search two
struct SearchTwo: View {
    var body: some View {
        HStack {
            Text("Search for 3D products").foregroundColor(.gray).font(.system(size: 15)).padding(.leading, 20)
            Spacer()
            Image(systemName: "magnifyingglass").font(.system(size: 26, weight: .medium, design: .serif)).foregroundColor(Color("maintext")).padding(.trailing, 20)
        }.frame(width: 350, height: 54).background(Color.white).cornerRadius(14)
    }
}

//MARK: Buttons two
struct ButtonsTwo: View {
    var body: some View {
        HStack(spacing: 36) {
            VStack{
                VStack {
                    Image(systemName: "clock").font(.system(size: 24)).foregroundColor(.white)
                }.frame(width: 60, height: 60).background(Color("maintext")).cornerRadius(10)
                Text("Recent").font(.system(size: 12, weight: .bold, design: .serif)).foregroundColor(Color("maintext")).padding(.top, 10)
            }
            VStack{
                VStack {
                    Image(systemName: "flame").font(.system(size: 24)).foregroundColor(.gray)
                }.frame(width: 60, height: 60).background(Color.white).cornerRadius(10)
                Text("Recent").font(.system(size: 12, weight: .bold, design: .serif)).foregroundColor(.gray).padding(.top, 10)
                
            }
            VStack{
                VStack {
                    Image(systemName: "crown").font(.system(size: 24)).foregroundColor(.gray)
                }.frame(width: 60, height: 60).background(Color.white).cornerRadius(10)
                Text("Popular").font(.system(size: 12, weight: .bold, design: .serif)).foregroundColor(.gray).padding(.top, 10)
                
            }
            VStack{
                VStack {
                    Image(systemName: "diamond").font(.system(size: 24)).foregroundColor(.gray)
                }.frame(width: 60, height: 60).background(Color.white).cornerRadius(10)
                Text("Trending").font(.system(size: 12, weight: .bold, design: .serif)).foregroundColor(.gray).padding(.top, 10)
                
            }
        }
    }
}

struct CardsTwo: View {
    var body: some View {
        HStack(spacing: 60) {
            VStack(alignment: .leading) {
                Text("Recommended products").font(.system(size: 22, weight: .bold, design: .serif)).foregroundColor(Color("maintext"))
                
                ScrollView(.horizontal) {
                    HStack(spacing: 60) {
                        VStack {
                            Image("Geometry").resizable()
                            VStack(alignment: .leading) {
                                Text("Geometry 3D Elements").font(.system(size: 20, weight: .bold, design: .serif)).foregroundColor(Color("maintext")).padding(.horizontal, 10)
                                Text("Hold up a rectangular piece of paper and ask all the students").font(.system(size: 15, weight: .medium, design: .serif)).foregroundColor(Color("maintext")).lineLimit(3).padding(.top, 5).padding(.leading, 10 ).padding(.bottom, 15)
                            }
                        }.frame(width: 280, height: 340).background(Color.white).cornerRadius(30)
                        VStack {
                            Image("Abstract").resizable()
                            VStack(alignment: .leading) {
                                Text("Abstract 3D Elements").font(.system(size: 20, weight: .bold, design: .serif)).foregroundColor(Color("maintext")).padding(.horizontal, 10)
                                Text("And abstract may act as stand alone").font(.system(size: 15, weight: .medium, design: .serif)).foregroundColor(Color("maintext")).lineLimit(3).padding(.top, 5).padding(.leading, 10 ).padding(.bottom, 15)
                            }
                        }.frame(width: 280, height: 340).background(Color.white).cornerRadius(30)
                    }
                }
                
            }
            
        }.padding(.leading, 30)
    }
}

struct Taskbar: View {
    var body: some View {
        HStack(spacing: 60) {
            VStack {
                Image(systemName: "house").font(.system(size: 26)).foregroundColor(.white)
                Circle().frame(width: 6, height: 6).foregroundColor(.white)
            }
            VStack {
                Image(systemName: "heart").font(.system(size: 26)).foregroundColor(.white)
                Circle().frame(width: 6, height: 6).foregroundColor(.white).opacity(0)
            }
            VStack {
                Image(systemName: "cube").font(.system(size: 26)).foregroundColor(.white)
                Circle().frame(width: 6, height: 6).foregroundColor(.white).opacity(0)
            }
            VStack {
                Image(systemName: "person").font(.system(size: 26)).foregroundColor(.white)
                Circle().frame(width: 6, height: 6).foregroundColor(.white).opacity(0)
            }
            
        }.frame(height: 103).frame(maxWidth: .infinity).background(Color("maintext")).cornerRadius(20)
    }
}
