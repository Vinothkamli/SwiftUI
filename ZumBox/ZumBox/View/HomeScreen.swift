//
//  homeScreen.swift
//  ZumBox
//
//  Created by apple on 09/01/23.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ZStack {
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        ProfileView()
                        Spacer()
                        Image("Avatar")
                    }
                    .padding(.horizontal)
                    VStack(spacing: 0) {
                        WelcomeCoin()
                        SlidingImage()
                            .frame(maxWidth: .infinity)
                            .frame(height: 200)
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text("View by Flavour")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .padding(.horizontal)
                            HStack {
                                ProductView()
                            }
                            HStack {
                                Text("View By Categories")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .padding(.horizontal)
                                Spacer()
                                Button(action: {
                                    
                                }, label: {
                                    Text("Show all")
                                        .foregroundColor(.white)
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .padding(.horizontal)
                                        .background(.red)
                                })
                                .padding(.horizontal)
                                .buttonStyle(.borderedProminent)
                                .tint(.red)
                            }
                            HStack {
                                ProductView()
                            }
                            VStack(alignment: .center) {
                                Text("New Arrival Cakes")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                NewArrivalHorizontal()
                            }
                        }
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct homeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("For ELite Ones")
                .font(.subheadline)
                .foregroundColor(.gray)
            HStack() {
                Text("Elite Cakes")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Image(systemName: "chevron.down")
            }
            HStack {
                Image(systemName: "mappin.and.ellipse")
                Text("Srihind Road, Patiala")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct WelcomeCoin: View {
    var body: some View {
        VStack {
            HStack {
                Image("Avatar")
                    .padding(.top)
                    .padding(.bottom)
                
                VStack(alignment: .leading) {
                    Text("Welcome")
                        .font(.headline)
                        .fontWeight(.bold)
                    Text("You Have 100 SUPER COINS")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.top)
                .padding(.bottom)
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding(.leading)
            .padding(.trailing, 25)
        }
        .frame(maxHeight: 90)
        .background(.white)
        .cornerRadius(10)
        .padding(.horizontal)
        .cornerRadius(20)
        .shadow(radius: 4)
    }
}

struct SlidingImage: View {
    
    @State private var numberOfimages = 4
    private var timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    @State private var currentIndex = 0
    
    var body: some View {
        GeometryReader { proxy in
            TabView(selection: $currentIndex) {
                ForEach(0..<numberOfimages) { img in
                    Image("walkthrough_img2")
                        .resizable()
                        .tag(img)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .onAppear {
                setupAppearance()
            }
            .padding()
            .onReceive(timer, perform: { _ in
                withAnimation {
                    currentIndex = currentIndex < numberOfimages ? currentIndex + 1 : 0
                }
            })
        }
    }
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .red
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.white.withAlphaComponent(0.5)
    }
}

struct ProductView: View {
    @State private var numberOfimages = 4
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                HStack(spacing: 10) {
                    ForEach(0..<numberOfimages) { img in
                        ProducView()
                    }
                }
            }
        }
        
    }
}

struct NewArrival: View {
    @State private var numberOfimages = 4
    var body: some View {
        VStack(alignment: .leading) {
            Image("NewArrival")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .shadow(radius: 5)
                .frame(maxWidth: .infinity, maxHeight: 260)
                .cornerRadius(8)
            HStack {
                Text("Hearty Black Forest Desire")
                    .font(.title3)
                    .fontWeight(.semibold)
                Spacer()
                Text("$700")
            }
            Text("In Designer Cakes")
            HStack {
                Image("Yum_Box_Logo")
                    .resizable()
                    .frame(width: 20, height: 20)
                Image(systemName: "star")
                    .resizable()
                    .frame(width: 15, height: 15)
                Image(systemName: "star")
                    .resizable()
                    .frame(width: 15, height: 15)
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Order now")
                        .foregroundColor(.white)
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                        .background(.red)
                })
                .buttonStyle(.borderedProminent)
                .frame(height: 30)
                .tint(.red)
                .cornerRadius(40)
            }
        }
        .padding(.horizontal)
    }
}

struct NewArrivalHorizontal: View {
    @State private var numberOfimages = 4
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                HStack(spacing: 10) {
                    ForEach(0..<numberOfimages) { img in
                        NewArrival()
                    }
                }
            }
        }
    }
}


struct ProducView: View {
    @State private var numberOfimages = 4
    var body: some View {
        ZStack {
            VStack(spacing: 5) {
                Image("viewby")
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 200, maxHeight: 70)
                    .offset(x: 25, y: -30)
                    .padding(.bottom, 10)
                
                Text("Black Forest")
                    .font(.headline)
                    .padding(.top)
            }
            .padding(.top, 5)
            .padding(.horizontal, 15)
            .padding(.bottom, 20)
            .background(
                Color.white
                    .cornerRadius(20)
            )
            .padding(.top, 70)
            .padding(.bottom)
            .shadow(radius: 3)
        }
        .padding(.leading)
    }
}


