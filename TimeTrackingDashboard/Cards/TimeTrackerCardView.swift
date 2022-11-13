import SwiftUI

struct TimeTrackerCardView: View {
    var icon: String
    var title: String
    var currentAmount: Double
    var duration: String
    var previousAmount: Double
    var backgroundColor: Color

    var body: some View {
        ZStack(alignment: .bottom) {
            HStack(alignment: .top) {
                Spacer()
                Image(icon)
                    .offset(y: -Scale.three)
                    .padding(.trailing, Scale.four)
            }
            .padding(.bottom, Scale.twenty)

            VStack(spacing: Scale.two) {
                HStack {
                    Text(title)
                        .font(.headingSmall)
                        .foregroundColor(.white)
                    Spacer()
                    Image("icon-ellipsis")
                }

                HStack {
                    Text("\(currentAmount.formatted())hrs")
                        .font(.headingLarge)
                        .foregroundColor(.white)
                    Spacer()
                    Text("\(duration) - \(previousAmount.formatted())hrs")
                        .font(.bodyCopyLarge)
                        .foregroundColor(.bluePale)
                }
            }
            .padding(Scale.seven)
            .background(Color.blueDark)
            .cornerRadius(Scale.three)
        }
        .background(backgroundColor)
        .cornerRadius(Scale.three)
        .preferredColorScheme(.dark)
    }
}

struct TimeTrackerCardView_Previews: PreviewProvider {
    static var previews: some View {
        TimeTrackerCardView(
            icon: "icon-work",
            title: "Work",
            currentAmount: 32,
            duration: "Last Week",
            previousAmount: 36,
            backgroundColor: Color.orangeSoft
        )
    }
}
