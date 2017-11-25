def euclidean_gcd(up, down)
  return up if down.zero?
  euclidean_gcd(down, up % down)
end

def lcm(up, down)
  ((up * down) / euclidean_gcd(up, down))
end

# there are rule say :
# lcm(a, b) * gcd(a, b) = a * b
