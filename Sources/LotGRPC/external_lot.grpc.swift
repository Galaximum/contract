//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: external_lot.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
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
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Usage: instantiate `LotExternalProtoServiceClient`, then call methods of this protocol to make API calls.
public protocol LotExternalProtoServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: LotExternalProtoServiceClientInterceptorFactoryProtocol? { get }

  func getWaterfall(
    _ request: WaterfallRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<WaterfallRequest, WaterfallResponse>

  func createLot(
    _ request: CreateLotRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<CreateLotRequest, CardLot>

  func editLot(
    _ request: EditLotRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<EditLotRequest, CardLot>

  func closeLot(
    _ request: CloseLotRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<CloseLotRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func getCardLot(
    _ request: CardLotRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<CardLotRequest, CardLot>
}

extension LotExternalProtoServiceClientProtocol {
  public var serviceName: String {
    return "ru.zveron.contract.lot.LotExternalProtoService"
  }

  /// Получить список объявлений для ленты
  ///
  /// - Parameters:
  ///   - request: Request to send to GetWaterfall.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getWaterfall(
    _ request: WaterfallRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<WaterfallRequest, WaterfallResponse> {
    return self.makeUnaryCall(
      path: LotExternalProtoServiceClientMetadata.Methods.getWaterfall.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetWaterfallInterceptors() ?? []
    )
  }

  /// Unary call to CreateLot
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateLot.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createLot(
    _ request: CreateLotRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<CreateLotRequest, CardLot> {
    return self.makeUnaryCall(
      path: LotExternalProtoServiceClientMetadata.Methods.createLot.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateLotInterceptors() ?? []
    )
  }

  /// Unary call to EditLot
  ///
  /// - Parameters:
  ///   - request: Request to send to EditLot.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func editLot(
    _ request: EditLotRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<EditLotRequest, CardLot> {
    return self.makeUnaryCall(
      path: LotExternalProtoServiceClientMetadata.Methods.editLot.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEditLotInterceptors() ?? []
    )
  }

  /// Unary call to CloseLot
  ///
  /// - Parameters:
  ///   - request: Request to send to CloseLot.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func closeLot(
    _ request: CloseLotRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<CloseLotRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: LotExternalProtoServiceClientMetadata.Methods.closeLot.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCloseLotInterceptors() ?? []
    )
  }

  /// Получить информацию про объявление
  ///
  /// - Parameters:
  ///   - request: Request to send to GetCardLot.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getCardLot(
    _ request: CardLotRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<CardLotRequest, CardLot> {
    return self.makeUnaryCall(
      path: LotExternalProtoServiceClientMetadata.Methods.getCardLot.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCardLotInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension LotExternalProtoServiceClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "LotExternalProtoServiceNIOClient")
public final class LotExternalProtoServiceClient: LotExternalProtoServiceClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: LotExternalProtoServiceClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: LotExternalProtoServiceClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the ru.zveron.contract.lot.LotExternalProtoService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: LotExternalProtoServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct LotExternalProtoServiceNIOClient: LotExternalProtoServiceClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: LotExternalProtoServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the ru.zveron.contract.lot.LotExternalProtoService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: LotExternalProtoServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol LotExternalProtoServiceAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: LotExternalProtoServiceClientInterceptorFactoryProtocol? { get }

  func makeGetWaterfallCall(
    _ request: WaterfallRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<WaterfallRequest, WaterfallResponse>

  func makeCreateLotCall(
    _ request: CreateLotRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<CreateLotRequest, CardLot>

  func makeEditLotCall(
    _ request: EditLotRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<EditLotRequest, CardLot>

  func makeCloseLotCall(
    _ request: CloseLotRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<CloseLotRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func makeGetCardLotCall(
    _ request: CardLotRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<CardLotRequest, CardLot>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension LotExternalProtoServiceAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return LotExternalProtoServiceClientMetadata.serviceDescriptor
  }

  public var interceptors: LotExternalProtoServiceClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeGetWaterfallCall(
    _ request: WaterfallRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<WaterfallRequest, WaterfallResponse> {
    return self.makeAsyncUnaryCall(
      path: LotExternalProtoServiceClientMetadata.Methods.getWaterfall.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetWaterfallInterceptors() ?? []
    )
  }

  public func makeCreateLotCall(
    _ request: CreateLotRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<CreateLotRequest, CardLot> {
    return self.makeAsyncUnaryCall(
      path: LotExternalProtoServiceClientMetadata.Methods.createLot.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateLotInterceptors() ?? []
    )
  }

  public func makeEditLotCall(
    _ request: EditLotRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<EditLotRequest, CardLot> {
    return self.makeAsyncUnaryCall(
      path: LotExternalProtoServiceClientMetadata.Methods.editLot.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEditLotInterceptors() ?? []
    )
  }

  public func makeCloseLotCall(
    _ request: CloseLotRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<CloseLotRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeAsyncUnaryCall(
      path: LotExternalProtoServiceClientMetadata.Methods.closeLot.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCloseLotInterceptors() ?? []
    )
  }

  public func makeGetCardLotCall(
    _ request: CardLotRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<CardLotRequest, CardLot> {
    return self.makeAsyncUnaryCall(
      path: LotExternalProtoServiceClientMetadata.Methods.getCardLot.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCardLotInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension LotExternalProtoServiceAsyncClientProtocol {
  public func getWaterfall(
    _ request: WaterfallRequest,
    callOptions: CallOptions? = nil
  ) async throws -> WaterfallResponse {
    return try await self.performAsyncUnaryCall(
      path: LotExternalProtoServiceClientMetadata.Methods.getWaterfall.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetWaterfallInterceptors() ?? []
    )
  }

  public func createLot(
    _ request: CreateLotRequest,
    callOptions: CallOptions? = nil
  ) async throws -> CardLot {
    return try await self.performAsyncUnaryCall(
      path: LotExternalProtoServiceClientMetadata.Methods.createLot.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateLotInterceptors() ?? []
    )
  }

  public func editLot(
    _ request: EditLotRequest,
    callOptions: CallOptions? = nil
  ) async throws -> CardLot {
    return try await self.performAsyncUnaryCall(
      path: LotExternalProtoServiceClientMetadata.Methods.editLot.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEditLotInterceptors() ?? []
    )
  }

  public func closeLot(
    _ request: CloseLotRequest,
    callOptions: CallOptions? = nil
  ) async throws -> SwiftProtobuf.Google_Protobuf_Empty {
    return try await self.performAsyncUnaryCall(
      path: LotExternalProtoServiceClientMetadata.Methods.closeLot.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCloseLotInterceptors() ?? []
    )
  }

  public func getCardLot(
    _ request: CardLotRequest,
    callOptions: CallOptions? = nil
  ) async throws -> CardLot {
    return try await self.performAsyncUnaryCall(
      path: LotExternalProtoServiceClientMetadata.Methods.getCardLot.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCardLotInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct LotExternalProtoServiceAsyncClient: LotExternalProtoServiceAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: LotExternalProtoServiceClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: LotExternalProtoServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol LotExternalProtoServiceClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'getWaterfall'.
  func makeGetWaterfallInterceptors() -> [ClientInterceptor<WaterfallRequest, WaterfallResponse>]

  /// - Returns: Interceptors to use when invoking 'createLot'.
  func makeCreateLotInterceptors() -> [ClientInterceptor<CreateLotRequest, CardLot>]

  /// - Returns: Interceptors to use when invoking 'editLot'.
  func makeEditLotInterceptors() -> [ClientInterceptor<EditLotRequest, CardLot>]

  /// - Returns: Interceptors to use when invoking 'closeLot'.
  func makeCloseLotInterceptors() -> [ClientInterceptor<CloseLotRequest, SwiftProtobuf.Google_Protobuf_Empty>]

  /// - Returns: Interceptors to use when invoking 'getCardLot'.
  func makeGetCardLotInterceptors() -> [ClientInterceptor<CardLotRequest, CardLot>]
}

public enum LotExternalProtoServiceClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "LotExternalProtoService",
    fullName: "ru.zveron.contract.lot.LotExternalProtoService",
    methods: [
      LotExternalProtoServiceClientMetadata.Methods.getWaterfall,
      LotExternalProtoServiceClientMetadata.Methods.createLot,
      LotExternalProtoServiceClientMetadata.Methods.editLot,
      LotExternalProtoServiceClientMetadata.Methods.closeLot,
      LotExternalProtoServiceClientMetadata.Methods.getCardLot,
    ]
  )

  public enum Methods {
    public static let getWaterfall = GRPCMethodDescriptor(
      name: "GetWaterfall",
      path: "/ru.zveron.contract.lot.LotExternalProtoService/GetWaterfall",
      type: GRPCCallType.unary
    )

    public static let createLot = GRPCMethodDescriptor(
      name: "CreateLot",
      path: "/ru.zveron.contract.lot.LotExternalProtoService/CreateLot",
      type: GRPCCallType.unary
    )

    public static let editLot = GRPCMethodDescriptor(
      name: "EditLot",
      path: "/ru.zveron.contract.lot.LotExternalProtoService/EditLot",
      type: GRPCCallType.unary
    )

    public static let closeLot = GRPCMethodDescriptor(
      name: "CloseLot",
      path: "/ru.zveron.contract.lot.LotExternalProtoService/CloseLot",
      type: GRPCCallType.unary
    )

    public static let getCardLot = GRPCMethodDescriptor(
      name: "GetCardLot",
      path: "/ru.zveron.contract.lot.LotExternalProtoService/GetCardLot",
      type: GRPCCallType.unary
    )
  }
}

