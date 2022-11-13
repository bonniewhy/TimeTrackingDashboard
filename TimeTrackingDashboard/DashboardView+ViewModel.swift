import SwiftUI

extension DashboardView {
    struct TimeTrackingInformation: Identifiable {
        var id = UUID()
        var icon: String
        var title: String
        var currentAmount: Double
        var duration: String
        var previousAmount: Double
        var backgroundColor: Color
    }
    
    class ViewModel: ObservableObject {
        @Published var timeTrackingInformation: [TimeTrackingInformation] = []

        func load() {
            timeTrackingInformation = [TimeTrackingInformation(icon: "icon-work", title: "Work", currentAmount: 32, duration: "Last Week", previousAmount: 36, backgroundColor: Color.orangeSoft)]
        }
    }
}
