module InfoHelper
  Propert.all.each do |prop|
    eval "#{prop.code.upcase} = Propert.find_by_code('#{prop.code}').value"
  end

end
