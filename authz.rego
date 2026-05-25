package authz

default allow := false

allow if {
    input.role == "admin"
}

allow if {
    input.role == "developer"
    input.action in {"read", "write", "list"}
}

allow if {
    input.role == "viewer"
    input.action == "read"
}
