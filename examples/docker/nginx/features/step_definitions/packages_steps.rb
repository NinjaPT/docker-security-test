
Then(/^the following packages should not be installed:$/) do |table|
  table.raw.each do |row|
    row.each do |pkg|
      expect(Serverspec::Type::Package.new("#{pkg}").installed?).to equal false
    end
  end
end
