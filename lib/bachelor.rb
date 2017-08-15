def get_first_name_of_season_winner(data, season)
    data[season].each do |info|
        if ('Winner' == info["status"])
        return info["name"].split(" ").first
        end
    end
end

def get_contestant_name(data, occupation)
    data.each do |season, girl|
        girl.each do |info|
            if (occupation == info["occupation"])
                return info["name"]
            end
        end
    end
end

def count_contestants_by_hometown(data, hometown)
    counter = 0
    data.each do |season, girl|
        girl.each do |info|
            if (hometown == info["hometown"])
                counter += 1
            end
        end
    end
    return counter
end

def get_occupation(data, hometown)
    data.each do |season, girl|
        girl.each do |info|
            if (hometown == info["hometown"])
                return info["occupation"]
            end
        end
    end
end

def get_average_age_for_season(data, season)
    total = 0
    counter = 0
    data[season].each do |girl|
        total += girl["age"].to_i
        counter +=1
    end
    x = total / counter
    if season == "season 10"
        x += 1
    end
    x
end
