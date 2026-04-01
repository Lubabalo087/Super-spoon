import SwiftUI

struct CrashTrackerView: View {
    @StateObject private var viewModel = CrashTrackerViewModel()
    
    var body: some View {
        ZStack {
            Color(red: 0.07, green: 0.07, blue: 0.07)
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                // Header
                VStack(spacing: 10) {
                    Text("Crash Tracker")
                        .font(.system(size: 36, weight: .bold))
                        .foregroundColor(.white)
                    
                    Text("V35")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.gray)
                }
                .padding(.top, 40)
                
                Spacer()
                
                // Status Display
                VStack(spacing: 20) {
                    Text(viewModel.statusText)
                        .font(.system(size: 24, weight: .semibold))
                        .foregroundColor(.white)
                    
                    Text(viewModel.multiplierText)
                        .font(.system(size: 48, weight: .bold))
                        .foregroundColor(.cyan)
                    
                    Text("Next Crash Multiplier")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity)
                .padding(30)
                .background(Color(red: 0.1, green: 0.1, blue: 0.1))
                .cornerRadius(15)
                
                Spacer()
                
                // Control Buttons
                HStack(spacing: 15) {
                    Button(action: viewModel.startTracking) {
                        Text("Start Tracking")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(15)
                            .background(Color(red: 0.12, green: 0.56, blue: 1.0))
                            .cornerRadius(10)
                    }
                    
                    Button(action: viewModel.stopTracking) {
                        Text("Stop Tracking")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(15)
                            .background(Color.red.opacity(0.7))
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 40)
            }
            .padding()
        }
    }
}

#Preview {
    CrashTrackerView()
}