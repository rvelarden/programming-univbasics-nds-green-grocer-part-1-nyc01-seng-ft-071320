require 'pry'
def find_item_by_name_in_collection(name, collection)

counter = 1 
while counter < collection.length
  if collection[counter][:item] == name
  return collection[counter]

    end 
counter += 1
  end
 end
 
def consolidate_cart(cart)
  filtered_array = []
  cart.each do |item|
    target_item = find_item_by_name_in_collection(item[:item], filtered_array)
    if target_item
      target_item[:count] += 1
    else
      item[:count] = 1
      filtered_array << item
    end
  end
  return filtered_array
end


  