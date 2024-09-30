import SwiftUI

struct WaterView: View {

    @State var progeresm: CGFloat 
    @State var startanimation: CGFloat = 0

    @State var  target:Bool = false
    
    @State var waterModel = WaterViewModel()
      init(waterModel: WaterViewModel = WaterViewModel()) {
          self._progeresm = State(initialValue: 0.5)
        
          self.waterModel = waterModel
      }
    
    var body: some View {
        VStack{

            ZStack{
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(.main.opacity(0.6))
                
                    .frame(height: UIScreen.main.bounds.height / 2)
                VStack{
                    Text("Günlük Tüketiminiz")
                        .font(.title)
                        .fontWeight(.light)
                        .foregroundColor(.water)
                    
                    //MARK: WATER FILL ICON

                    ZStack{
                        GeometryReader{ geometry in
                            let size = geometry.size
                            
                            // MARK: ICON
                            ZStack{
                                Image(systemName: "drop.fill")
                                    .resizable()
                                    .renderingMode(.template)
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.white)
                                    .scaleEffect(x: 1.1, y: 1)
                                    .offset(y: -1)
                              

                                WaterShape(progress: progeresm, waveHeight: 0.1, offset: startanimation)
                                    .fill(Color.water)
                                
                                    .overlay{
                                        ZStack{
                                            Circle()
                                                .fill(Color.white.opacity(0.1))
                                                .frame(width: 15, height: 15)
                                                .offset(x: -20)
                                            
                                            Circle()
                                                .fill(Color.white.opacity(0.1))
                                                .frame(width: 15, height: 15)
                                                .offset(x: 40, y: 30)
                                            
                                            Circle()
                                                .fill(Color.white.opacity(0.1))
                                                .frame(width: 25, height: 25)
                                                .offset(x: -30, y: 80)
                                            
                                            Circle()
                                                .fill(Color.white.opacity(0.1))
                                                .frame(width: 25, height: 25)
                                                .offset(x: 50, y: 70)
                                            
                                            Circle()
                                                .fill(Color.white.opacity(0.1))
                                                .frame(width: 10, height: 10)
                                                .offset(x: 40, y: 100)
                                            
                                            Circle()
                                                .fill(Color.white.opacity(0.1))
                                                .frame(width: 10, height: 10)
                                                .offset(x: -40, y: 50)
                                        }
                                    }
                                    .mask{
                                        Image(systemName: "drop.fill")
                                            .resizable()
                                            .renderingMode(.template)
                                            .aspectRatio(contentMode: .fit)
                                            .padding(20)
                                          
                                    }
                               
                             
                            }
                            .frame(width: size.width, height: size.height, alignment: .center)
                            .onAppear{
                                withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)){
                                    startanimation = size.width
                                }
                            }
                        }
                    }
                    .frame(height: 250)
                 
                }
               
                  
                
             
            }
            VStack{
                GoalView(progeresm: $progeresm)
                WaterCupView(progeresm: $progeresm, waterModel: WaterViewModel())
                
                Spacer()
                GoalWaterView()
                Spacer()
            }
         
        }
        .padding()
    
                 
    }
}

// MARK:  SHAPE
struct WaterShape: Shape {
 var progress: CGFloat
    var waveHeight: CGFloat
    
    var offset: CGFloat
    
    var animatableData: CGFloat {
        get { offset }
        set { offset = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: .zero)
            
            let progressHeight: CGFloat = (1 - progress) * rect.height
            let height = waveHeight * rect.height
            
            for value in stride(from: 0, to: rect.width, by: 2) {
                let x: CGFloat = value
                let sine: CGFloat = sin(Angle(degrees: value + offset).radians)
                let y: CGFloat = progressHeight + (height * sine)
                
                path.addLine(to: CGPoint(x: x, y: y))
            }
            
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
        }
    }
}


#Preview {
    WaterView()
}


