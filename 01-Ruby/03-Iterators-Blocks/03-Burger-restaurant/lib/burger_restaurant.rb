def burger(patty, sauce, topping)
  # TODO: code the `burger` method
  patty = (block_given? ? yield(patty) : patty)
  ["bread", patty, sauce, topping, "bread"]
end

burger("steak", "ketchup", "onions") do |patty|
  "grilled #{patty}"
end
