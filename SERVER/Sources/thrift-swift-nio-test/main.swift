import Foundation
import Thrift
import ThriftSwiftNio

class TestServiceHandler : TestService {
    func Hello(HelloString: String) throws -> String {
        return "Hello " + HelloString
    }

    func GetSampleStruct(key: Int32, value: String) throws -> SampleStruct {
        return SampleStruct(key: key, value: value)
    }
}

class TestProcessor : Processor {
    func process(on inProtocol: TProtocol, outProtocol: TProtocol) throws {
        print("In process")

        let handler = TestServiceHandler()

        let processor = TestServiceProcessor(service: handler)

        do {
            try processor.process(on: inProtocol, outProtocol: outProtocol)
        }
        catch {
            print("Error in process")
        }

        print("Response sent back")
    }
}

let processor = TestProcessor()

let server = Server(host: "::1", port: 9090, with: processor, inProtocolType: TBinaryProtocol.self, outProtocolType: TBinaryProtocol.self)

server.run()

print("Server closed")