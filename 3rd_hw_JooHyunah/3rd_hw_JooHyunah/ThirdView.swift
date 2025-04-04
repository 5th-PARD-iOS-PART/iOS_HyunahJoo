import SwiftUI

struct ThirdView: View {
    var body: some View{
        ZStack{
            Color.orange.ignoresSafeArea()
            Text("세 번째 페이지")
        }
       
    }
}


#Preview {
    ThirdView()
}
