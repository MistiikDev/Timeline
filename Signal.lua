local signal = {}
signal.__index = signal
signal.ClassName = "Signal"

function signal.new()
	local self = {}
	self.event = Instance.new("BindableEvent")
	self.arguments = {}
	self.totalArguments = 0

	return setmetatable(self, signal)
end

function signal:Fire(...)
	self.arguments = {...}
	self.totalArguments = #self.arguments
	self.event:Fire(self.arguments)

	self.arguments = {}
	self.totalArguments = 0
end

function signal:Connect(func)
	if typeof(func) ~= "function" then 
		error(("Tried to connect function with %s"):format(typeof(func)))
	end
	self.event:Connect(func(unpack(self.arguments, 1, self.totalArguments)))
	return self.event
end


function signal:Wait()
	self.event:Wait()
end

function signal:Destroy()
	if self.event then 
		self.event:Destroy()
		self.event = nil 
	end
	self.arguments = {}
	self.totalArguments = 0
end

return signal 
