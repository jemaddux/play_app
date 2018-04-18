json.id @location.id
json.name @location.name
json.current do 
  json.temp @location.recordings.last.temp
  json.status @location.recordings.last.status
end
json.all_recordings do
  json.array! @location.recordings.each do |recording|
    json.id recording.id
    json.temp recording.temp
    json.status recording.status
  end 
end
