# Triple Step: A child is running up a staircase with n steps and can hop either 1-3 steps at a time.
# Implement a method to count how many possible ways the child can run up the stairs.

#152,178,217,237,262,359

def num_steps(n)
  if n < 4
    initial = [1,2,4]
    return initial[n-1]
  else
    num_steps(n-1) + num_steps(n-2) + num_steps(n-3)
  end
end


p num_steps(2)
p num_steps(3)
p num_steps(10)
