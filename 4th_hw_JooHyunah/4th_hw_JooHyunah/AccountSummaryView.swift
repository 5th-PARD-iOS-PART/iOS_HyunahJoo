import SwiftUI

struct AccountSummaryView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            
            HStack(spacing: 50) {
                Text("통장")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .underline(true, color: .black)

                Text("내 토스뱅크")
                    .font(.headline)
                    .foregroundColor(.gray)

                Text("상품찾기")
                    .font(.headline)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .center)

            Spacer()
            Spacer()
            Spacer()
            Spacer()
            
            Text("토스뱅크 1000-9047-0710")
                .font(.subheadline)
                .foregroundColor(.gray)
            

            
            Text("38,841원")
                .font(.largeTitle)
            
            
            HStack(spacing: 12) {
                Button("채우기") {
                   
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color(red: 232/255, green: 242/255, blue: 255/255))
                .cornerRadius(10)
                .foregroundColor(.blue)
                
                Button("보내기") {
                 
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            
            HStack {
                Image("logo")
                    .resizable()
                    .frame(width: 40, height:40)
                    .cornerRadius(10)
                
                VStack(alignment: .leading) {
                    Text("어제까지 쌓인 이자")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text("114원 지금받기")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
                
            }
            Spacer()
         
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: .gray.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    AccountSummaryView()
}
