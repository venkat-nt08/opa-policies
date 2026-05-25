package authz

default allow = false

allow {
    input.role == "admin"
}

allow {
    input.role == "developer"
    input.action == "read"
}

allow {
    input.role == "developer"
    input.action == "write"
}

allow {
    input.role == "viewer"
    input.action == "read"
}
