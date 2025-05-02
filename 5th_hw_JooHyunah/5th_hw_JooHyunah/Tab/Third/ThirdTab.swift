
import SwiftUI

struct ThirdTab: View {
    @State var viewModel = ProductViewModel()
    
    @State private var selectedIndex: Int = 0
    let tabs = ["모두", "특가", "식품", "의류", "전자제품", "뷰티"]

    var body: some View {
        VStack {
            HStack {
                    Text("토스쇼핑")
                        .font(.title)
                        .bold()
                    Spacer()
            }
            .padding(.leading, 30)
                
            HStack(spacing: 0) {
                ForEach(0..<tabs.count, id: \.self) { index in
                    Button(action: {
                        selectedIndex = index
                    }) {
                        Text(tabs[index])
                            .foregroundColor(selectedIndex == index ? .blue : .gray)
                            .frame(maxWidth: .infinity)
                            .bold()
                            .padding(.vertical, 10)
                    }
                }
            }
            .frame(maxWidth: .infinity)

            if selectedIndex == 0 {
                In_AllTab(viewModel: viewModel)
            } else if selectedIndex == 1 {
                In_DealsTab(viewModel: viewModel)
            } else if selectedIndex == 2 {
                In_FoodTab(viewModel: viewModel)
            } else if selectedIndex == 3 {
                In_ClothingTab(viewModel: viewModel)
            } else if selectedIndex == 4 {
                In_ElectronicTab(viewModel: viewModel)
            } else {
                In_BeautyTab(viewModel: viewModel)
            }

            Spacer()
        }
    }
}

#Preview {
    ThirdTab()
}
