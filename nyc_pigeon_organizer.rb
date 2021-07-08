def nyc_pigeon_organizer(data)
  phash = {}

  data.keys.each { |outerKey|
    data[outerKey].keys.each { |innerKey|
      data[outerKey][innerKey].each { |bird|
        if (!phash.key?(bird))
          phash[bird] = {}
        end
        if (!phash[bird].key?(outerKey))
          phash[bird][outerKey] = []
        end
        phash[bird][outerKey].push(innerKey.to_s)
      }
    }
  }

  phash
end
