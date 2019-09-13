def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash_change)
  pet_shop[:admin][:total_cash] += cash_change
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number_of_pets_sold)
  pet_shop[:admin][:pets_sold] += number_of_pets_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].length()
end

def pets_by_breed(pet_shop, breed_name)
  pet_of_breed_type = []
  for pet in pet_shop[:pets]
    pet_of_breed_type.push(pet[:name]) if pet[:breed] == breed_name
  end
  return pet_of_breed_type
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    return pet if pet[:name] == pet_name
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  pet_to_remove = find_pet_by_name(pet_shop, pet_name)
  pet_shop[:pets].delete(pet_to_remove)
end

def add_pet_to_stock(pet_shop, pet_to_add)
  pet_shop[:pets].push(pet_to_add)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, cash_to_remove)
   customer[:cash] -= cash_to_remove
end

def customer_pet_count(customer)
  return customer[:pets].length()
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

# -------OPTIONAL------------
def customer_can_afford_pet(customer, new_pet)
  return true if customer[:cash] >= new_pet[:price]
  return false
end
