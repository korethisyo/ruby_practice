def to_hex(r, g, b)
  hex = '#'
  [r, g, b].inject(hex) do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

