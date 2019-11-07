def nyc_pigeon_organizer(data)
  # write your code here!
  #puts "Input data:"
  #puts pp(data)
  # HoHoA
  pigeon_list = {}

  colors = data[:color]
  genders = data[:gender]
  lives = data[:lives]

  data.each { |hash_title, attributes|
    puts "Titles: #{hash_title}, attributes: #{attributes}"

    attributes.each { |attribute, names|
      names.each { |name|
        if !pigeon_list[name]
          pigeon_list[name] = add_pigeon(name)
        end
        pigeon_list[name][hash_title].push(attribute.to_s)
      }
    }
  }


=begin

  colors.each { |color, names|
    names.each { |name|
      if !pigeon_list[name]
        pigeon_list[name] = add_pigeon(name)
      end
      pigeon_list[name][:color].push(color.to_s)
    }
  }

  genders.each { |gender, names|
    names.each { |name|
      if !pigeon_list[name]
        pigeon_list[name] = add_pigeon(name)
      end
      pigeon_list[name][:gender].push(gender.to_s)
    }
  }

  lives.each { |location, names|
    names.each { |name|
      if !pigeon_list[name]
        pigeon_list[name] = add_pigeon(name)
      end
      pigeon_list[name][:lives].push(location.to_s)
    }
  }

=end

  pigeon_list

end

def add_pigeon(name)
  result = {
    :color => [],
    :gender => [],
    :lives => []
  }
  return result
end
