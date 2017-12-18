require "pry"

def begins_with_r (array)
  array.each do |x|
    return false if x.start_with?("r") != true
  end
  true
end

def contain_a(array)
  array.select do |x|
    x.include?("a")
  end
end

# array = ["candy", :pepper, "wall", :ball, "wacky"]

def first_wa(array)
   start_with = nil
  array.find do |x|
    if x.instance_of?(String) && x.start_with?("wa") == true
      start_with = x
    end
  end
  # binding.pry
   start_with
end

def remove_non_strings(array)
  array.select do |x|
    x.instance_of?(String)
  end
end

def count_elements(array)
  names_array = []
  array.each do |hash|
    hash.each do |key, value|
      names_array << value
    end
  end

  uniq_names = names_array.uniq
  count_hash_array = []

  uniq_names.each do |x|
    count_hash = {}
    count_hash[:name] = x
    count_hash[:count] = names_array.count(x)
    count_hash_array << count_hash
  end
  count_hash_array
end

def merge_data(keys, hash)
  merged_hash_array = []
  keys.each do |keys_hashes|
    keys_hashes.each do |first_name_key, first_name_value|
      hash.each do |hashes|
        hashes.each do |key, data|
          # binding.pry
          if key == first_name_value
            data[first_name_key] = first_name_value
            merged_hash_array << data
          end
        end
      end
    end
  end
  merged_hash_array
end


def find_cool(array)
  cool = []
  array.each do |hash|
    hash.each do |key, value|
      if key == "cool" || value == "cool"
        cool << hash
      end
    end
  end
  cool
end

def organize_schools(schools)
  schools_by_location = {}
  schools.collect do |school, location_data|
    location_string = nil
    location_data.collect do |location_key, location|
      location_string = location
      if schools_by_location[location].instance_of?(Array) == false
        schools_by_location[location] = []
        schools_by_location[location] << school
      elsif schools_by_location[location].instance_of?(Array) == true
        schools_by_location[location] << school
      end
      # binding.pry
    end
    # binding.pry
  end
  # binding.pry
  schools_by_location
end
