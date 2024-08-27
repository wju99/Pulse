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
                    .frame(width:160, height:160)
                    .padding()
                
                VStack{
                    TextField("Enter your email", text:$email)
                        .modifier(TextFieldModifier())
                    SecureField("Enter your password", text:$password)
                        .modifier(TextFieldModifier())
                }
                
                NavigationLink{
                    Text("Forgot password")
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
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
                    RegistrationView().navigationBarBackButtonHidden()
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
