# # naive solution
def naive_gcd(up, down)
  d = 0
  minimun = up > down ? down : up
  (1..minimun).each do |i|
    d = i if (up % i).zero? && (down % i).zero?
  end
  d
end

# get GCD or GCF using euclidean algorithm
def euclidean_gcd(up, down)
  return up if down.zero?
  euclidean_gcd(down, up % down)
end

def stree_testing
  loop do
    up = Random.rand(1000) + 1
    down = Random.rand(1000) + 1
    if naive_gcd(up, down) == euclidean_gcd(up, down)
      puts 'Okay'
    else
      puts 'up = #{up} and down = #{down}'
      break
    end
  end
end
