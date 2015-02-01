#############################
# --- BATTERY FUNCTIONS --- #
#############################

if [[ $(uname) == "Darwin" ]] ; then
  
  # return remaining battery percentage
  function battery_pct_remaining() {
    if [[ $(ioreg -rc AppleSmartBattery | grep -c '^.*"ExternalConnected"\ =\ No') -eq 1 ]] ; then
      typeset -F maxcapacity=$(ioreg -rc "AppleSmartBattery"| grep '^.*"MaxCapacity"\ =\ ' | sed -e 's/^.*"MaxCapacity"\ =\ //')
      typeset -F currentcapacity=$(ioreg -rc "AppleSmartBattery"| grep '^.*"CurrentCapacity"\ =\ ' | sed -e 's/^.*CurrentCapacity"\ =\ //')
      integer i=$(((currentcapacity/maxcapacity) * 100))
      echo $i
    else
      echo "External Power"
    fi
  }

  # return remaining battery time
  function battery_time_remaining() {
    if [[ $(ioreg -rc AppleSmartBattery | grep -c '^.*"ExternalConnected"\ =\ No') -eq 1 ]] ; then
      timeremaining=$(ioreg -rc "AppleSmartBattery"| grep '^.*"AvgTimeToEmpty"\ =\ ' | sed -e 's/^.*"AvgTimeToEmpty"\ =\ //')
      echo "$((timeremaining / 60)):$((timeremaining % 60))"
    else
      echo "∞"
    fi
  }

  # battery promt with color output
  function battery_pct_prompt () {
    if [[ $(ioreg -rc AppleSmartBattery | grep -c '^.*"ExternalConnected"\ =\ No') -eq 1 ]] ; then
      b=$(battery_pct_remaining)
      if [ $b -gt 50 ] ; then
        color='green'
      elif [ $b -gt 20 ] ; then
        color='yellow'
      else
        color='red'
      fi
      echo "%{$fg[$color]%}[$(battery_pct_remaining)%%]%{$reset_color%}"
    else
      echo ""
    fi
  }

elif [[ $(uname) == "Linux"  ]] ; then

  # get acpi informations
  if [[ $(acpi 2&>/dev/null | grep -c '^Battery.*Discharging') -gt 0 ]] ; then
    function battery_pct_remaining() { echo "$(acpi | cut -f2 -d ',' | tr -cd '[:digit:]')" }
    function battery_time_remaining() { echo $(acpi | cut -f3 -d ',') }
    function battery_pct_prompt() {
      b=$(battery_pct_remaining)
      if [ $b -gt 50 ] ; then
        color='green'
      elif [ $b -gt 20 ] ; then
        color='yellow'
      else
        color='red'
      fi
      echo "%{$fg[$color]%}[$(battery_pct_remaining)%%]%{$reset_color%}"
    }
  else
    error_msg='no battery'
    function battery_pct_remaining() { echo $error_msg }
    function battery_time_remaining() { echo $error_msg }
    function battery_pct_prompt() { echo '' }
  fi
fi

# function for printing complete battery info
# <percentage> for <remaining_time>
function batinfo () {
}
