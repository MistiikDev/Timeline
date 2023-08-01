local Lerp = {}

function Lerp.IntLerp(a, b, t)
	return a + (b - a) * t
end

function Lerp.VectorLerp(a: Vector2 | Vector3, b: Vector2 | Vector3 ,t)
	return a:Lerp(b, t)
end

function Lerp.CFrameLerp(a: CFrame, b: CFrame, t) 
	return a:Lerp(b, t)
end

return Lerp
