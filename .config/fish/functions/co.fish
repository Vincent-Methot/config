# Defined in - @ line 1
function co --wraps='git checkout' --description 'alias co git checkout'
  git checkout $argv;
end
