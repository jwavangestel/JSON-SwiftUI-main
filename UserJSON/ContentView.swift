import SwiftUI
struct ContentView: View {
    
    @State var themas: [User] = []

    var body: some View {
        List(themas) { thema in
          
            VStack {
                Text(thema.name)
                Text(thema.subthemas.subthema[0].name)
                Text(thema.subthemas.subthema[0].items[0].name)
                Text(thema.subthemas.subthema[0].items[0].item[0].desc)
                Text(thema.subthemas.subthema[0].items[1].name)
                Text(thema.subthemas.subthema[0].items[1].item[0].desc)
        }

        }
            .onAppear {
                apiCall().getUsers { (users) in
                    self.themas = users
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
