function schedule --wraps='imv ~/Pictures/schedule.png' --description 'alias schedule=imv ~/Pictures/schedule.png'
  imv ~/Pictures/schedule.png $argv &; 
  disown
end
