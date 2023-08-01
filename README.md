# Timeline
Unreal Engine's Timeline for Roblox

```lua
local MyTimeline = Timeline.new(Track : Types.Track, Options : Types.TimelineOptions) -- Instatiate new Timeline 
```

```lua
MyTimeline:Play(MyTrackerID) -- Play the timeline, set an unique track identifier
```
```lua
MyTimeline.UpdateSignal:Connect(function(TrackerID, InterpolatedValue)
  print(TrackerID, InterpolatedValue)
end)
```

```lua
MyTimeline.EndedSignal:Connect(function(TrackerID)
  print("Timeline ended. "..TrackerID)
end)
