FactoryGirl.define do
  factory(:product) do
    title("Apples and Cinnamon Adventure Oats")
    flavor("Apples and Cinnamon")
    size ('8 oz.')
    diet('Gluten Free')
    price 50
  end
end
