MY_VARIABLE=
NEW_VALUE=$1
if [[ -n "${MY_VARIABLE+x}" ]]; then
  MY_VARIABLE="${NEW_VALUE}"
  echo "MY_VARIABLE was set and has been substituted to: $MY_VARIABLE"
else
  echo "MY_VARIABLE was not set or was empty. No substitution performed."
fi
