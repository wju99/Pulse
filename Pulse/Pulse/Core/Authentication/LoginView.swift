//
//  LoginView.swift
//  Pulse
//
//  Created by Will Ju on 8/25/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                
                Image("pulse_logo_image")
                    .resizable()
                    .scaledToFit()
                    .frame(width:120, height:120)
                    .padding()
                
                VStack{
                    TextField("Enter your email", text:$email)
                    SecureField("Enter your password", text:$password)
                }
                
                NavigationLink{
                    Text("Forgot password")
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment:.trailing)
                }
                
                Button{
                    
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width:352, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }
                
                Spacer()
                
                Divider()
                
                NavigationLink{
                    Text("Registration View")
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }.font(.footnote)
                        .foregroundColor(.black)
                }
                .padding(.vertical, 16)
                
                
                
                
            }
        }
    }
}

#Preview {
    LoginView()
}
