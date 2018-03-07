/**
 * Autogenerated by Thrift Compiler (1.0.0-dev)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public final class SampleStruct {

  public var key: Int32

  public var value: String


  public init(key: Int32, value: String) {
    self.key = key
    self.value = value
  }

}

public protocol TestService {

  ///
  /// - Parameters:
  ///   - HelloString: 
  /// - Returns: String
  /// - Throws: 
  func Hello(HelloString: String) throws -> String

  ///
  /// - Parameters:
  ///   - key: 
  ///   - value: 
  /// - Returns: SampleStruct
  /// - Throws: 
  func GetSampleStruct(key: Int32, value: String) throws -> SampleStruct

}

open class TestServiceClient : TClient /* , TestService */ {

}

open class TestServiceProcessor /* TestService */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, TestService) throws -> Void]

  public var service: TestService

  public required init(service: TestService) {
    self.service = service
  }

}


