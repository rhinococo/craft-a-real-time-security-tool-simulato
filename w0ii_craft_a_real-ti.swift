import Foundation

// Data Model for Real-Time Security Tool Simulator

// Enum for Security Levels
enum SecurityLevel {
    case low
    case medium
    case high
    case critical
}

// Struct for Intrusion Detection
struct IntrusionDetection {
    let id: Int
    let timestamp: Date
    let severity: SecurityLevel
    let description: String
}

// Struct for Network Packet
struct NetworkPacket {
    let sourceIP: String
    let destinationIP: String
    let protocolType: String
    let packetData: Data
}

// Struct for System Process
struct SystemProcess {
    let pid: Int
    let processName: String
    let memoryUsage: Double
    let cpuUsage: Double
}

// Class for Real-Time Security Tool Simulator
class RealTimeSecurityToolSimulator {
    var intrusionDetections: [IntrusionDetection] = []
    var networkPackets: [NetworkPacket] = []
    var systemProcesses: [SystemProcess] = []
    
    func simulateIntrusionDetection(_ intrusionDetection: IntrusionDetection) {
        intrusionDetections.append(intrusionDetection)
        print("Intrusion Detection Simulated: \(intrusionDetection.description)")
    }
    
    func simulateNetworkPacket(_ networkPacket: NetworkPacket) {
        networkPackets.append(networkPacket)
        print("Network Packet Simulated: \(networkPacket.sourceIP) -> \(networkPacket.destinationIP)")
    }
    
    func simulateSystemProcess(_ systemProcess: SystemProcess) {
        systemProcesses.append(systemProcess)
        print("System Process Simulated: \(systemProcess.processName) - PID: \(systemProcess.pid)")
    }
    
    func displaySecurityStatus() {
        print("Security Status:")
        if intrusionDetections.count > 0 {
            print("Intrusion Detections: \(intrusionDetections.count)")
        }
        if networkPackets.count > 0 {
            print("Network Packets: \(networkPackets.count)")
        }
        if systemProcesses.count > 0 {
            print("System Processes: \(systemProcesses.count)")
        }
    }
}