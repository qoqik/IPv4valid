def valid_ipv4?(str)
  segments = str.split('.')
  return false unless segments.length == 4

  segments.all? do |segment|
    segment.to_i.to_s == segment && (0..255).include?(segment.to_i)
  end
end


# Test the method
puts valid_ipv4?("192.168.1.1")  # Should return true
puts valid_ipv4?("0.0.0.0")      # Should return true
puts valid_ipv4?("255.255.255.255")  # Should return true
puts valid_ipv4?("256.0.0.1")    # Should return false
puts valid_ipv4?("12.34.056.78")  # Should return false
puts valid_ipv4?("  192.168.1.1  ")  # Should return false (contains leading/trailing spaces)
puts valid_ipv4?("192.168.01.1")  # Should return false (contains leading zeros)
