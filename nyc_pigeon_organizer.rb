require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each { |attribute, value|
    value.each { |detail, names|
      names.each { |name|
        if pigeon_list.keys.include?(name)
          if pigeon_list[name][attribute]
            pigeon_list[name][attribute] << detail.to_s
          else
            pigeon_list[name][attribute] = [detail.to_s]
          end
        else
          # binding.pry
          pigeon_list[name] = {}
          pigeon_list[name][attribute] = [detail.to_s]
        end
      }
    }
  }
  pigeon_list
end
