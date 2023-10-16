//
//  ContentView.swift
//  TextField_ejercicio
//
//  Created by MacOsX on 10/15/23.
//

import SwiftUI

struct ContentView: View {
    @State var username: String = ""
    @State var pass: String = ""
    var body: some View {
        
        VStack{
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.green)
            
            TextField("Usuario", text: $username)
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal,60)
                .padding(.top,40)
                .onChange(of: username, perform: { value in
                    print("El valor cambiado es \(value)")
                })
            
            SecureField("Password", text: $pass)
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal,60)
                .padding(.top,20)
                .onChange(of: pass, perform: { value in
                    print("El valor cambiado es \(value)")
                })
            Button("Ingresar"){
                print("*************")
                print("\(username)")
                print(" \(pass)")
            }
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
