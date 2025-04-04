import SwiftUI

struct DemoRow: View {
    var data: MockData
    
    var body: some View {
        HStack {
            Image(data.name)
                .resizable()
                .frame(width: 50, height:50)
                .cornerRadius(10)
            
            VStack(alignment: .leading){
                Text(data.title)
                    .font(.headline)
                   
                Text(data.bankName)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Button("송금"){
                
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 6)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .background(Color.white)
        .cornerRadius(10)
        .foregroundColor(.black)
    }
}

#Preview {
    DemoRow(data:MockData(title: "gg", name: "symbol1", bankName: "하나은행"))
}
