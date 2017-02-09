
Then(/^the following ports should be listening:$/) do |table|
  table.raw.each do |row|
    if(row[0] != "port") then
      expect(Serverspec::Type::Port.new(row[0]).listening?(row[1],'0.0.0.0')).to equal true
    end
  end
end


Then(/^the following ports should not be listening:$/) do |table|
  table.raw.each do |row|
    if(row[0] != "port") then
      expect(Serverspec::Type::Port.new(row[0]).listening?(row[1],'0.0.0.0')).to equal false
    end
  end
end
