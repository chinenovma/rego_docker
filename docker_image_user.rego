package main

default allow = false

default check_user_field_exists = false

default check_user_exists = false

default check_user_match_regex = false

allow {
	check_user_field_exists
	check_user_exists
	check_user_match_regex
}

check_user_field_exists {
	input.Config.User
}

check_user_exists {
	not input.Config.User == ""
}

check_user_match_regex {
	not input.Config.User == "root"
	not input.Config.User == "0"
	not startswith(input.Config.User, "root:")
	not startswith(input.Config.User, "0:")
	not endswith(input.Config.User, ":root")
	not endswith(input.Config.User, ":0")
}
