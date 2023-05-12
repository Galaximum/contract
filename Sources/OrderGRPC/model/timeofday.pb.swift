// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: timeofday.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2021 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Represents a time of day. The date and time zone are either not significant
/// or are specified elsewhere. An API may choose to allow leap seconds. Related
/// types are [google.type.Date][google.type.Date] and
/// `google.protobuf.Timestamp`.
public struct Google_Type_TimeOfDay {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Hours of day in 24 hour format. Should be from 0 to 23. An API may choose
  /// to allow the value "24:00:00" for scenarios like business closing time.
  public var hours: Int32 = 0

  /// Minutes of hour of day. Must be from 0 to 59.
  public var minutes: Int32 = 0

  /// Seconds of minutes of the time. Must normally be from 0 to 59. An API may
  /// allow the value 60 if it allows leap-seconds.
  public var seconds: Int32 = 0

  /// Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  public var nanos: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Google_Type_TimeOfDay: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.type"

extension Google_Type_TimeOfDay: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TimeOfDay"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "hours"),
    2: .same(proto: "minutes"),
    3: .same(proto: "seconds"),
    4: .same(proto: "nanos"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.hours) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.minutes) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.seconds) }()
      case 4: try { try decoder.decodeSingularInt32Field(value: &self.nanos) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.hours != 0 {
      try visitor.visitSingularInt32Field(value: self.hours, fieldNumber: 1)
    }
    if self.minutes != 0 {
      try visitor.visitSingularInt32Field(value: self.minutes, fieldNumber: 2)
    }
    if self.seconds != 0 {
      try visitor.visitSingularInt32Field(value: self.seconds, fieldNumber: 3)
    }
    if self.nanos != 0 {
      try visitor.visitSingularInt32Field(value: self.nanos, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Type_TimeOfDay, rhs: Google_Type_TimeOfDay) -> Bool {
    if lhs.hours != rhs.hours {return false}
    if lhs.minutes != rhs.minutes {return false}
    if lhs.seconds != rhs.seconds {return false}
    if lhs.nanos != rhs.nanos {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
