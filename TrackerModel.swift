import Foundation

class TrackerModel: ObservableObject {
    @Published var isTracking = false
    @Published var currentCrashMultiplier: Double = 0.0
    @Published var statusMessage = "Status: Idle"
    @Published var trackingHistory: [Double] = []
    
    private var timer: Timer?
    
    func startTracker() {
        guard !isTracking else { return }
        isTracking = true
        statusMessage = "Status: Tracking..."
        trackingHistory.removeAll()
        
        timer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { [weak self] _ in
            let randomCrash = Double.random(in: 0.0...10.0)
            let roundedCrash = round(randomCrash * 100) / 100
            self?.currentCrashMultiplier = roundedCrash
            self?.trackingHistory.append(roundedCrash)
            self?.statusMessage = "Next crash multiplier: \(roundedCrash)x"
        }
    }
    
    func stopTracker() {
        isTracking = false
        timer?.invalidate()
        timer = nil
        statusMessage = "Status: Stopped"
    }
    
    deinit {
        timer?.invalidate()
    }
}