//
//  ContentView.swift
//  IOSseminar5
//
//  Created by Admin on 19.02.2024.
//

import SwiftUI


struct ContentView: View {
    @StateObject var anotherColor: AnotherColor
    var body: some View {
        VStack {
            Text("Светофор")
            HStack {
                TrafficLights(anotherColor: anotherColor)
            }
            Button("Сменить цвет", action: {switch anotherColor.color {
            case.red: anotherColor.color = .yellow
            case.yellow: anotherColor.color = .green
            case.green: anotherColor.color = .red
            }
            }).padding(.all, 5.0).accentColor(.black).border(.black, width: 1)
                       
//            Text("Разноцветные квадраты")
//            HStack {
//                Squares()
//                Squares()
//                Squares()
//            }
//            Text("Разноцветные круги")
//            HStack {
//                Circles()
//                Circles()
//                Circles()
//            }
//            Text("Разноцветные квадраты со скруглениями")
//                .multilineTextAlignment(.center)
//            HStack {
//                RoundedSquares()
//                RoundedSquares()
//                RoundedSquares()
//            }
        }
    }
}


struct OneSquare: View {
    var body: some View {
        Rectangle().frame(width: 35.0, height: 35.0)
    }
}

struct Squares: View {
    var body: some View {
        VStack {
            OneSquare().foregroundColor(.red)
            OneSquare().foregroundColor(.yellow)
            OneSquare().foregroundColor(.green)
        }
    }
}

struct TrafficLights: View {
    @ObservedObject var anotherColor = AnotherColor()
    var body: some View {
        switch anotherColor.color {
        case .red:
            VStack {
                OneSquare().foregroundColor(.red).border(Color.red, width: 1)
                OneSquare().foregroundColor(.white).border(Color.yellow, width: 1)
                OneSquare().foregroundColor(.white).border(Color.green, width: 1)
            }
        case .yellow:
            VStack {
                OneSquare().foregroundColor(.white).border(Color.red, width: 1)
                OneSquare().foregroundColor(.yellow).border(Color.yellow, width: 1)
                OneSquare().foregroundColor(.white).border(Color.green, width: 1)
            }
        case .green:
            VStack {
                OneSquare().foregroundColor(.white).border(Color.red, width: 1)
                OneSquare().foregroundColor(.white).border(Color.yellow, width: 1)
                OneSquare().foregroundColor(.green).border(Color.green, width: 1)
            }
        }
        }
    }
    
    enum TrafficLight {
        case red
        case yellow
        case green
    }
    class AnotherColor: ObservableObject {
        @Published var color: TrafficLight = .red
    }
    
    struct OneCircle: View {
        var body: some View {
            Circle().frame(width: 35.0, height: 35.0)
        }
    }
    
    struct Circles: View {
        var body: some View {
            VStack {
                OneCircle().foregroundColor(.red)
                OneCircle().foregroundColor(.yellow)
                OneCircle().foregroundColor(.green)
            }
        }
    }
    
    struct OneRoundedRectangle: View {
        var body: some View {
            RoundedRectangle(cornerRadius: 10).frame(width: 35.0, height: 35.0)
        }
    }
    
    struct RoundedSquares: View {
        var body: some View {
            VStack {
                OneRoundedRectangle().foregroundColor(.red)
                OneRoundedRectangle().foregroundColor(.yellow)
                OneRoundedRectangle().foregroundColor(.green)
            }
        }
    }
    
//struct ContentView_Previes: PreviewProvider {
//    static var previews: some View {
//        ContentView(anotherColor: AnotherColor())
//    }
//}
#Preview {
    ContentView(anotherColor: AnotherColor())
}
