//
//  RegistrationView.swift
//  Pulse
//
//  Created by Will Ju on 8/27/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Spacer()
            
            Image("pulse_logo_image")
                .resizable()
                .scaledToFit()
                .frame(width:160, height:160)
                .padding()
            
            VStack{
                TextField("Enter your email", text:$email)
                    .autocapitalization(.none)
                    .modifier(TextFieldModifier())
                SecureField("Enter your password", text:$password)
                    .modifier(TextFieldModifier())
                TextField("Enter your full name", text:$fullname)
                    .modifier(TextFieldModifier())
                TextField("Enter your username", text:$username)
                    .modifier(TextFieldModifier())
                Button{
                    
                } label: {
                    Text("Sign Up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width:352, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }.padding(.vertical, 16)
                
                Spacer()
                
                Divider()
                
                Button{
                    dismiss()
                } label: {
                    HStack(spacing: 3){
                        Text("Already have an account?")
                        Text("Sign In")
                            .fontWeight(.semibold)
                    }.font(.footnote)
                        .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    RegistrationView()
}
