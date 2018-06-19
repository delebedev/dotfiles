#!/usr/bin/env python

import lldb

def process(debugger, command, result, internal_dict):
    lldb.debugger.HandleCommand("""
expr -l swift --
func $process(_ request: URLRequest) {
    func curl(_ request: URLRequest) -> String {
        guard let url = request.url?.absoluteString else {
            return "curl command could not be created"
        }
        var components = ["curl -i '\(url)'"]
        if let httpMethod = request.httpMethod, httpMethod != "GET" {
            components.append("-X \(httpMethod)")
        }
        if let headerFields = request.allHTTPHeaderFields {
            for (field, value) in headerFields {
                switch field {
                case "Cookie":
                    continue
                default:
                    components.append("-H '\(field): \(value)'")
                }
            }
        }
        if let
            httpBodyData = request.httpBody,
            let httpBody = String(data: httpBodyData, encoding: .utf8) {
            //let escapedBody = httpBody.replacingOccurrences(of: "\\"", with: "\\"")
            components.append("-d '\(httpBody)'")
        }
        return components.joined(separator: " \\\\\\n\\t")
    }
    Swift.print(curl(request))
}
    """.strip())
    lldb.debugger.HandleCommand('expr -l swift -- $process(' + command + ')')

def __lldb_init_module(debugger,internal_dict):
    debugger.HandleCommand("command script add -f curl.process curl")
