import SwiftUI

struct ProfileCardView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ProfileCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCardView()
    }
}
