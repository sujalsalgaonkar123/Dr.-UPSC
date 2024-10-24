//
//  OTPView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 20/09/24.
//

import SwiftUI

struct OTPView: View {
    enum FocusPin {
        case  pinOne, pinTwo, pinThree, pinFour
    }
    @FocusState private var pinFocusState : FocusPin?
    @State var pinOne: String = ""
    @State var pinTwo: String = ""
    @State var pinThree: String = ""
    @State var pinFour: String = ""
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.white
                    .ignoresSafeArea()
                VStack(spacing:50){
                    //BACK VIEW BRN
                    NavigationLink {
                        LoginView().navigationBarBackButtonHidden(true)
                    } label: {
                        HStack{
                            Image(systemName: "arrowtriangle.left")
                                .fontWeight(.bold)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 10)
                                .foregroundColor(.black)
                                .overlay(){
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(style: StrokeStyle())
                                        .stroke(lineWidth: 2)
                                        .foregroundColor(Color("Yellow"))
                                }
                            Spacer()
                        }
                    }
                    
                    //BODY
                    VStack(alignment: .trailing){
                        Text("LOGIN ")
                            .font(.custom("Bangers", size: 28))
                            .foregroundColor(.black)
                        ZStack(alignment: .leading){
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 120, height: 8)
                                .foregroundColor(.black.opacity(0.6))
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 50, height: 8)
                                .foregroundColor(Color("Yellow"))
                        }
                    }
                    
                    VStack{
                        HStack{
                            Text("Enter the Otp")
                                .font(.custom("MoreSugarRegular", size: 16))
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .frame(width: 360, height: 40)
                        
                        //OTP Part
                        HStack(spacing:15){

                            TextField("", text: $pinOne)
                                .modifier(OtpModifer(pin: $pinOne))
                                .onChange(of: pinOne) { newVal in
                                    if newVal.count == 1 {
                                        pinFocusState = .pinTwo
                                    }
                                }
                                .focused($pinFocusState, equals: .pinOne)

                            TextField("", text:  $pinTwo)
                                .modifier(OtpModifer(pin:$pinTwo))
                                .onChange(of:pinTwo){newVal in
                                    if (newVal.count == 1) {
                                        pinFocusState = .pinThree
                                    }
                                }
                                .focused($pinFocusState, equals: .pinTwo)


                            TextField("", text:$pinThree)
                                .modifier(OtpModifer(pin:$pinThree))
                                .onChange(of:pinThree){newVal in
                                    if (newVal.count == 1) {
                                        pinFocusState = .pinFour
                                    }
                                }
                                .focused($pinFocusState, equals: .pinThree)


                            TextField("", text:$pinFour)
                                .modifier(OtpModifer(pin:$pinFour))
                                .focused($pinFocusState, equals: .pinFour)


                        }

                        
                    }
                    
                    //NEXT VIEW BTN
                    HStack{
                        Spacer()
                        NavigationLink {
                            SignUpView().navigationBarBackButtonHidden(true)
                        } label: {
                            HStack{
                                Text("SUBMIT    ")
                                    .font(.custom("Bangers", size: 28))
                                Image(systemName: "arrowtriangle.forward.fill")
                                    .font(.title)
                            }
                            .padding()
                            .padding(.horizontal, 10)
                            .background(Color("Yellow"))
                            .cornerRadius(10)
                            .foregroundColor(.black)
                            .shadow(color: .black.opacity(0.7), radius: 1, x:5, y:5)
                            
                        }
                    }
                    
                    Spacer()
                    
                }
                .padding()
            }
        }
    }
    
}


#Preview {
    OTPView()
}

struct OtpModifer: ViewModifier {
    
    @Binding var pin : String
    
    var textLimt = 1
    
    func limitText(_ upper : Int) {
        if pin.count > upper {
            self.pin = String(pin.prefix(upper))
        }
    }
    
    
    //MARK -> BODY
    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.center)
            .font(.custom("MoreSugarRegular", size: 22))
            .keyboardType(.numberPad)
            .foregroundColor(Color("Yellow"))
            .frame(width: 70, height: 70)
            .background(Color.white.cornerRadius(10))
            .overlay(){
                RoundedRectangle(cornerRadius: 10)
                    .stroke(style: StrokeStyle())
                    .stroke(lineWidth: 1)
                    .foregroundStyle(Color(.black))
            }
    }
}
