def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each { |hash_title, attributes|
    attributes.each { |attribute, names|
      names.each { |name|
        if !pigeon_list[name]
          pigeon_list[name] = add_pigeon(name)
        end
        pigeon_list[name][hash_title].push(attribute.to_s)
      }
    }
  }
  pigeon_list
end

def add_pigeon(name)
  {
    :color => [],
    :gender => [],
    :lives => []
  }
end
