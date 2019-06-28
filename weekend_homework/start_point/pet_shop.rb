
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, ammount)
  return pet_shop[:admin][:total_cash] += ammount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end


def increase_pets_sold(pet_shop,pets_sold)
  return pet_shop[:admin][:pets_sold] += pets_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].length()
end


def pets_by_breed(pet_shop, breed)
  pets = Array.new()
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      pets << breed
    end
  end
  return pets
end


# def pets_by_breed(pet_shop, breed)
#   count = 0
#   for pet in pet_shop[:pets]
#     if pet[:breed] == breed
#       count+= 1
#     end
#   end
#   return count
# end


def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name]  == name
      return pet
    end
  end
  return
end


def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet_shop[:pets].delete(pet)
    end
  end
end


def add_pet_to_stock(pet_shop, pet)
  pet_shop[:pets] << pet
end


def customer_cash(customer)
  return customer[:cash]
end


def remove_customer_cash(customer, ammount_to_remove)
  return customer[:cash] -= ammount_to_remove
end


def customer_pet_count(customer)
  count = customer[:pets].length
  return count
end
