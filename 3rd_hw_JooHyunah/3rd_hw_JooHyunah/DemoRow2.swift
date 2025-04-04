import SwiftUI

struct DemoRow2: View {
    var data: MockData2
    @State private var isActive = false

    
    var body: some View {
        HStack {
            Image(data.name)
                .resizable()
                .frame(width: 40, height:40)
                .cornerRadius(10)
            
            VStack(alignment: .leading){
                Text(data.title)
                  //  .font(.headline)
                   
                Text(data.time)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack(alignment: .trailing){
                Text(data.amount)
                   // .font(.headline)
                   
                Text(data.total)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            
        }
        
        .padding(.vertical, 5)
        .padding(.horizontal, 5)
        .background(Color.white)
        .cornerRadius(10)
        .foregroundColor(.black)
    }
}

#Preview {
    DemoRow2(data:MockData2(title: "카카오 택시_0", name: "store1", time: "10:00", amount: "-7,300원", total: "68,941원"))
}
