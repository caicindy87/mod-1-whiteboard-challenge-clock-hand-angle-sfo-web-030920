require 'pry'
def clock_angle(time)
    
    hour, min = time.split(':').map{|string| string.to_f}
 
    if hour <= 6.0  # need to specify to take into account that clock angle is mirrored
        min_angle = 6 * min
        hour_angle = (30 * hour) + (0.5 * min)
        return (hour_angle - min_angle).abs
    else
        min_angle = 6 * min
        hour_angle = ((30 * hour) - 360) + (0.5 * min) # want it to add (0.5 * min) because the hour arm is moving further away 
        return (hour_angle + min_angle).abs
    end

    
end
