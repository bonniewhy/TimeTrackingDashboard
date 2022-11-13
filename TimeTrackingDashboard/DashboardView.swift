import SwiftUI

struct DashboardView: View {
    @StateObject var viewModel = ViewModel()

    var body: some View {
        ScrollView {
            VStack(spacing: Scale.five) {
                ForEach(viewModel.timeTrackingInformation) { info in
                    TimeTrackerCardView(
                        icon: info.icon,
                        title: info.title,
                        currentAmount: info.currentAmount,
                        duration: info.duration,
                        previousAmount: info.previousAmount,
                        backgroundColor: info.backgroundColor
                    )
                }

                Spacer()
            }
        }
        .padding(Scale.five)
        .background(Color.blueVeryDark.edgesIgnoringSafeArea(.all))
        .onAppear { viewModel.load() }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
