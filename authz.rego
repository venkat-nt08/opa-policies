package authz

default allow = false

allow {
    user := data.users[input.user]
    user.role == "admin"
}

allow {
    user := data.users[input.user]
    user.role == "developer"
    input.action == "read"
}

allow {
    user := data.users[input.user]
    user.role == "developer"
    input.action == "write"
}

allow {
    user := data.users[input.user]
    user.role == "viewer"
    input.action == "read"
}
allow {
    input.role == "manager"
    input.action == "read"
}
