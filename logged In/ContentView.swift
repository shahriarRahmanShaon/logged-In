//
//  ContentView.swift
//  logged In
//
//  Created by sergio shaon on 27/4/21.
//

import SwiftUI

struct ContentView: View {
    var screen = NSScreen.main?.visibleFrame
    @State var email = ""
    @State var pass = ""
    @State var keepmeLoggedIn = true
    @State var alert = false
    var body: some View {
        HStack{
            VStack( spacing : 10){
                Button(action: {
                    
                }, label: {
                    HStack{
                        Image("youtubeLogin")
                            .resizable()
                            .aspectRatio(contentMode: .fit )
                            .frame(width: 25, height: 25)
                        Spacer(minLength: 0)
                        Text("Log in with Youtube")
                            .font(.title3)
                        Spacer(minLength: 0)
                        
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: -5, y: -5)
                }).buttonStyle(PlainButtonStyle())
                
                HStack{
                    Rectangle()
                        .fill(Color.green.opacity(0.3))
                        .frame(height: 1)
                    Text("Or")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Rectangle()
                        .fill(Color.green.opacity(0.3))
                        .frame(height: 1)
                }
                
                TextField("Enter your email", text: $email)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding()
                // borders
                    .background(RoundedRectangle(cornerRadius: 2).stroke(Color.gray.opacity(0.5), lineWidth: 2))
                
                SecureField("Enter your Password", text: $pass)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding()
                    // borders
                    .background(RoundedRectangle(cornerRadius: 2).stroke(Color.gray.opacity(0.5), lineWidth: 2))
                    .padding(.top, 20)
                    
                //keep logged in and forget password
                HStack{
                    Toggle(" ", isOn: $keepmeLoggedIn)
                        .toggleStyle(CheckboxToggleStyle())
                    Text(" Keep Logged In")
                    Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    Button(action: {
                        
                    }, label: {
                        Text("Forgot Password")
                            .underline(color: Color.blue)
                    }).buttonStyle(PlainButtonStyle())
                }
                .padding(.top, 20)
                // login button
                Button(action: {
                    alert.toggle()
                }, label: {
                    HStack{
                        Text("Login")
                        Spacer()
                        Image(systemName: "arrow.right")
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(2)
                }).buttonStyle(PlainButtonStyle())
                .padding(.top)
            }
            .padding(.horizontal, 50)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            
            Spacer()
            VStack{
                Spacer()
                
                Image("loginImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                
                
            }
            .frame(width: (screen!.width/1.8)/2)
            .background(Color("loginColor"))
        }
        .ignoresSafeArea(.all, edges: .all)
        .frame(width: screen!.width/1.8, height: screen!.height - 100)
        .preferredColorScheme(.light)
        .alert(isPresented: $alert, content: {
            Alert(title: Text("message"), message: Text(" login successful"), dismissButton: .cancel(Text("cancel")))
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
