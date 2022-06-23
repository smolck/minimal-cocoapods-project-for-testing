import SwiftUI
import SwiftyJSON

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
        Button {
            if let dataFromString = "{\"hello\": 5}".data(using: .utf8, allowLossyConversion: false) {
                do {
                    let json = try JSON(data: dataFromString)
                    assert(json["hello"].number! == 5)
                    print("'Twas asserted!")
                } catch {
                    print("idk")
                }
            }
        } label: {
            Text("Press me if you want")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
