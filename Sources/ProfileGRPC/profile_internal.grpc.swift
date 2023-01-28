//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: profile_internal.proto
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


/// Usage: instantiate `ProfileServiceInternalClient`, then call methods of this protocol to make API calls.
public protocol ProfileServiceInternalClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: ProfileServiceInternalClientInterceptorFactoryProtocol? { get }

  func createProfile(
    _ request: CreateProfileRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<CreateProfileRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func getProfile(
    _ request: GetProfileRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<GetProfileRequest, GetProfileResponse>

  func getProfileWithContacts(
    _ request: GetProfileWithContactsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<GetProfileWithContactsRequest, GetProfileWithContactsResponse>

  func updateContacts(
    _ request: UpdateContactsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<UpdateContactsRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func getProfileByChannel(
    _ request: GetProfileByChannelRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<GetProfileByChannelRequest, GetProfileByChannelResponse>
}

extension ProfileServiceInternalClientProtocol {
  public var serviceName: String {
    return "ru.zveron.contract.profile.ProfileServiceInternal"
  }

  /// Создание профиля пользователя
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateProfile.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createProfile(
    _ request: CreateProfileRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<CreateProfileRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: ProfileServiceInternalClientMetadata.Methods.createProfile.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateProfileInterceptors() ?? []
    )
  }

  /// Получение профиля, как сущности, описывающей личные данные,
  ///
  /// - Parameters:
  ///   - request: Request to send to GetProfile.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getProfile(
    _ request: GetProfileRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<GetProfileRequest, GetProfileResponse> {
    return self.makeUnaryCall(
      path: ProfileServiceInternalClientMetadata.Methods.getProfile.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetProfileInterceptors() ?? []
    )
  }

  /// Получение профиля, как сущности, описывающей личные данные + контактная информация (для сервиса объявлений)
  ///
  /// - Parameters:
  ///   - request: Request to send to GetProfileWithContacts.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getProfileWithContacts(
    _ request: GetProfileWithContactsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<GetProfileWithContactsRequest, GetProfileWithContactsResponse> {
    return self.makeUnaryCall(
      path: ProfileServiceInternalClientMetadata.Methods.getProfileWithContacts.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetProfileWithContactsInterceptors() ?? []
    )
  }

  /// Обновление способов связи. Метод вызывается когда пользователь добавляет новый способ связи
  /// Или удаляет уже существующий.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateContacts.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateContacts(
    _ request: UpdateContactsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<UpdateContactsRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: ProfileServiceInternalClientMetadata.Methods.updateContacts.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateContactsInterceptors() ?? []
    )
  }

  /// Получение информации о пользователе по идентификатору в каком-то способе связи (номер телефона - телефон; id - соцсети)
  ///
  /// - Parameters:
  ///   - request: Request to send to GetProfileByChannel.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getProfileByChannel(
    _ request: GetProfileByChannelRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<GetProfileByChannelRequest, GetProfileByChannelResponse> {
    return self.makeUnaryCall(
      path: ProfileServiceInternalClientMetadata.Methods.getProfileByChannel.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetProfileByChannelInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension ProfileServiceInternalClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "ProfileServiceInternalNIOClient")
public final class ProfileServiceInternalClient: ProfileServiceInternalClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: ProfileServiceInternalClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: ProfileServiceInternalClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the ru.zveron.contract.profile.ProfileServiceInternal service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: ProfileServiceInternalClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct ProfileServiceInternalNIOClient: ProfileServiceInternalClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: ProfileServiceInternalClientInterceptorFactoryProtocol?

  /// Creates a client for the ru.zveron.contract.profile.ProfileServiceInternal service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: ProfileServiceInternalClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol ProfileServiceInternalAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: ProfileServiceInternalClientInterceptorFactoryProtocol? { get }

  func makeCreateProfileCall(
    _ request: CreateProfileRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<CreateProfileRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func makeGetProfileCall(
    _ request: GetProfileRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<GetProfileRequest, GetProfileResponse>

  func makeGetProfileWithContactsCall(
    _ request: GetProfileWithContactsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<GetProfileWithContactsRequest, GetProfileWithContactsResponse>

  func makeUpdateContactsCall(
    _ request: UpdateContactsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<UpdateContactsRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func makeGetProfileByChannelCall(
    _ request: GetProfileByChannelRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<GetProfileByChannelRequest, GetProfileByChannelResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension ProfileServiceInternalAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return ProfileServiceInternalClientMetadata.serviceDescriptor
  }

  public var interceptors: ProfileServiceInternalClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeCreateProfileCall(
    _ request: CreateProfileRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<CreateProfileRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeAsyncUnaryCall(
      path: ProfileServiceInternalClientMetadata.Methods.createProfile.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateProfileInterceptors() ?? []
    )
  }

  public func makeGetProfileCall(
    _ request: GetProfileRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<GetProfileRequest, GetProfileResponse> {
    return self.makeAsyncUnaryCall(
      path: ProfileServiceInternalClientMetadata.Methods.getProfile.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetProfileInterceptors() ?? []
    )
  }

  public func makeGetProfileWithContactsCall(
    _ request: GetProfileWithContactsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<GetProfileWithContactsRequest, GetProfileWithContactsResponse> {
    return self.makeAsyncUnaryCall(
      path: ProfileServiceInternalClientMetadata.Methods.getProfileWithContacts.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetProfileWithContactsInterceptors() ?? []
    )
  }

  public func makeUpdateContactsCall(
    _ request: UpdateContactsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<UpdateContactsRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeAsyncUnaryCall(
      path: ProfileServiceInternalClientMetadata.Methods.updateContacts.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateContactsInterceptors() ?? []
    )
  }

  public func makeGetProfileByChannelCall(
    _ request: GetProfileByChannelRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<GetProfileByChannelRequest, GetProfileByChannelResponse> {
    return self.makeAsyncUnaryCall(
      path: ProfileServiceInternalClientMetadata.Methods.getProfileByChannel.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetProfileByChannelInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension ProfileServiceInternalAsyncClientProtocol {
  public func createProfile(
    _ request: CreateProfileRequest,
    callOptions: CallOptions? = nil
  ) async throws -> SwiftProtobuf.Google_Protobuf_Empty {
    return try await self.performAsyncUnaryCall(
      path: ProfileServiceInternalClientMetadata.Methods.createProfile.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateProfileInterceptors() ?? []
    )
  }

  public func getProfile(
    _ request: GetProfileRequest,
    callOptions: CallOptions? = nil
  ) async throws -> GetProfileResponse {
    return try await self.performAsyncUnaryCall(
      path: ProfileServiceInternalClientMetadata.Methods.getProfile.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetProfileInterceptors() ?? []
    )
  }

  public func getProfileWithContacts(
    _ request: GetProfileWithContactsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> GetProfileWithContactsResponse {
    return try await self.performAsyncUnaryCall(
      path: ProfileServiceInternalClientMetadata.Methods.getProfileWithContacts.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetProfileWithContactsInterceptors() ?? []
    )
  }

  public func updateContacts(
    _ request: UpdateContactsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> SwiftProtobuf.Google_Protobuf_Empty {
    return try await self.performAsyncUnaryCall(
      path: ProfileServiceInternalClientMetadata.Methods.updateContacts.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateContactsInterceptors() ?? []
    )
  }

  public func getProfileByChannel(
    _ request: GetProfileByChannelRequest,
    callOptions: CallOptions? = nil
  ) async throws -> GetProfileByChannelResponse {
    return try await self.performAsyncUnaryCall(
      path: ProfileServiceInternalClientMetadata.Methods.getProfileByChannel.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetProfileByChannelInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct ProfileServiceInternalAsyncClient: ProfileServiceInternalAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: ProfileServiceInternalClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: ProfileServiceInternalClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol ProfileServiceInternalClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'createProfile'.
  func makeCreateProfileInterceptors() -> [ClientInterceptor<CreateProfileRequest, SwiftProtobuf.Google_Protobuf_Empty>]

  /// - Returns: Interceptors to use when invoking 'getProfile'.
  func makeGetProfileInterceptors() -> [ClientInterceptor<GetProfileRequest, GetProfileResponse>]

  /// - Returns: Interceptors to use when invoking 'getProfileWithContacts'.
  func makeGetProfileWithContactsInterceptors() -> [ClientInterceptor<GetProfileWithContactsRequest, GetProfileWithContactsResponse>]

  /// - Returns: Interceptors to use when invoking 'updateContacts'.
  func makeUpdateContactsInterceptors() -> [ClientInterceptor<UpdateContactsRequest, SwiftProtobuf.Google_Protobuf_Empty>]

  /// - Returns: Interceptors to use when invoking 'getProfileByChannel'.
  func makeGetProfileByChannelInterceptors() -> [ClientInterceptor<GetProfileByChannelRequest, GetProfileByChannelResponse>]
}

public enum ProfileServiceInternalClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "ProfileServiceInternal",
    fullName: "ru.zveron.contract.profile.ProfileServiceInternal",
    methods: [
      ProfileServiceInternalClientMetadata.Methods.createProfile,
      ProfileServiceInternalClientMetadata.Methods.getProfile,
      ProfileServiceInternalClientMetadata.Methods.getProfileWithContacts,
      ProfileServiceInternalClientMetadata.Methods.updateContacts,
      ProfileServiceInternalClientMetadata.Methods.getProfileByChannel,
    ]
  )

  public enum Methods {
    public static let createProfile = GRPCMethodDescriptor(
      name: "CreateProfile",
      path: "/ru.zveron.contract.profile.ProfileServiceInternal/CreateProfile",
      type: GRPCCallType.unary
    )

    public static let getProfile = GRPCMethodDescriptor(
      name: "GetProfile",
      path: "/ru.zveron.contract.profile.ProfileServiceInternal/GetProfile",
      type: GRPCCallType.unary
    )

    public static let getProfileWithContacts = GRPCMethodDescriptor(
      name: "GetProfileWithContacts",
      path: "/ru.zveron.contract.profile.ProfileServiceInternal/GetProfileWithContacts",
      type: GRPCCallType.unary
    )

    public static let updateContacts = GRPCMethodDescriptor(
      name: "UpdateContacts",
      path: "/ru.zveron.contract.profile.ProfileServiceInternal/UpdateContacts",
      type: GRPCCallType.unary
    )

    public static let getProfileByChannel = GRPCMethodDescriptor(
      name: "GetProfileByChannel",
      path: "/ru.zveron.contract.profile.ProfileServiceInternal/GetProfileByChannel",
      type: GRPCCallType.unary
    )
  }
}
