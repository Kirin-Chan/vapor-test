//
//  Request+BaseURL.swift
//  App
//
//  Created by Kilian Haack on 12.09.18.
//

import Foundation
import Vapor


extension Request {
    var baseURL: String {
        var host = http.headers["Host"].first ?? ""
        host = host.finished(with: "/")
        let scheme = http.remotePeer.scheme ?? "http"
        return "\(scheme)://\(host)todos/"
    }
}
