require "pry-byebug"

def full_name(first_name, last_name)
  capitalized_first_name = first_name.capitalize
  capitalized_last_name = last_name.upcase
  binding.pry

  "#{capitalized_first_name} #{capitalized_last_name}"
end

p full_name("john", "lennon")

# 1. Require the `pry-byebug` gem
# 2. Add `binding.pry` where you want to stop the code
# 3. Inspect
# 4. Remove the `binding.pry` and `require "pry-byebug"`
