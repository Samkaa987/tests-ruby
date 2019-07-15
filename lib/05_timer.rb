def time_string(a)

	return Time.at(a).utc.strftime("%H:%M:%S")

end

# Reference
# http://stackoverflow.com/questions/3963930/ruby-rails-how-to-convert-seconds-to-time