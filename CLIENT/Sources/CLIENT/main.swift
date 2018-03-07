import Foundation
import Thrift

do {
    let serviceURL: URL = URL(string: "http://localhost:9090")!
    let session: URLSession = URLSession(configuration: .default)

    let transport: THTTPSessionTransport = THTTPSessionTransport.Factory(session: session, url: serviceURL).newTransport()
    //let transport = try TSocketTransport(hostname: "localhost", port: 9090)

    print("Transport established")

    //  var proto = TCompactProtocol(transport: transport)
    let proto = TBinaryProtocol(on: transport)
    //  var client = HermesClient(inoutProtocol: proto)
    let client = TestServiceClient(inoutProtocol: proto)

    let result = try client.Hello(HelloString: "Thrift!")
    print(result)

    let sampleStruct = try client.GetSampleStruct(key: 3, value: "Three")
    print("\(sampleStruct.key) \(sampleStruct.value)")
    
} catch let error {
    print("\(error)")
}
