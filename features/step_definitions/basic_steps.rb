Given("I visit the landing page") do
  visit root_path
end

Given("I click {string}") do |element|
  click_on element
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

Given("I click on {string} on {string}") do |element, product_name|
  product = Product.find_by_name(product_name)
  within("#product_#{product.id}") do
    click_on element
  end
end

Given("the following products exists") do |table|
  table.hashes.each do |product|
    category = Category.find_or_create_by(title: product[:category])
    product.except!('category')
    FactoryBot.create( :product, product.merge(category: category))
  end
end

Given("the following categories exists") do |table|
  table.hashes.each do |category|
    FactoryBot.create(:category, category)
  end
end

Given("the following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end 

When("I click on {string}") do |link_name|
 click_on link_name
end

When("I fill in {string} with {string} in first form") do |field, value|
  form = find_all('.general-form').first
  within form do
    fill_in field, with: value
  end
end

When("I fill in {string} with {string} in first address form") do |field, value|
  form = page.find_by_id('billing')
  within form do
    fill_in field, with: value
  end
end

When("I check Use Billing Adress") do 
  form = page.find_by_id('shipping')
  within form do
    page.find_by_id('mfcb').set(true)
  end
end