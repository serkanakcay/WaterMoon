import SwiftUI

struct GoalView: View {
    
@Binding var progeresm: CGFloat
   @State private var customLitre: String = "0"
    
    @State var waterModel = WaterViewModel()
    init(progeresm: Binding<CGFloat>,waterModel: WaterViewModel = WaterViewModel()) {
       self._progeresm = progeresm
        self.waterModel = waterModel
    }
        var body:some View {
            HStack {
                VStack{
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.white)
                        .stroke(Color.gray.opacity(0.1), lineWidth: 1)
                        .frame(width: 120, height: 40)
                        .shadow(color: .gray.opacity(0.1), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .overlay {
                            Button(action: {
                              if let litre = Double(customLitre) {
                                 self.progeresm -= CGFloat(litre / 1000.0)
                                }
                            }, label: {
                                Text("-")
                                    .foregroundStyle(.black)
                            })
                        }
                    
                }
                
                
                VStack{
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.white)
                        .stroke(Color.gray.opacity(0.1), lineWidth: 1)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 40)
                        .shadow(color: .gray.opacity(0.1), radius: 10)
                        .overlay {
                            HStack{
                                TextField("ml Giriniz", text: $customLitre)
                                    .multilineTextAlignment(.center)
                                    
                                Text("ml")
                                    .foregroundStyle(.gray)
                                    .font(.caption)
                                  
                            }
                            .padding()
                        }
                    
                }
                
                VStack{
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.white)
                        .stroke(Color.gray.opacity(0.1), lineWidth: 1)
                        .frame(width: 120, height: 40)
                        .shadow(color: .gray.opacity(0.1), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .overlay {
                            Button(action: {
                                if let litre = Double(customLitre) {
                                   self.progeresm += CGFloat(litre / 1000.0)
                                    print(litre)
                                  }
                            }, label: {
                                Text("+")
                                    .foregroundStyle(.black)
                            })
                            
                        }
                }
                
                
                
                
            }
            
        }
        
    }
    

    #Preview {
        GoalView(progeresm: .constant(0.3))
    }



