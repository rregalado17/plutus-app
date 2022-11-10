require_relative 'auth_user'

users = [
    {username: 'rregalado', password: 'password1'},
    {username: 'jsnow', password: 'password2'},
    {username: 'tlanister', password: 'password3'},
    {username: 'rstark', password: 'password4'},
    {username: 'dtargarean', password: 'password5'}
]

hash_users = AuthUser.create_secure_users(users)
puts hash_users