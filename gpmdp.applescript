set googlePlayMusic to "Google Play Music Desktop Player"

if application googlePlayMusic is running then
	return do shell script "bash ./track_details.sh"
else
	return "Google Play Music"
end if