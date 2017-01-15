myF={
	"metadata": {
		"version": 4.4,
		"type": "Object",
		"generator": "Object3D.toJSON"
	},
	"geometries": [
		{
			"uuid": "E80D9EC5-D722-4812-8226-5F355EAC9B96",
			"type": "PlaneGeometry",
			"width": 1000,
			"height": 1000,
			"widthSegments": 1,
			"heightSegments": 1
		}],
	"materials": [
		{
			"uuid": "3A9449D2-62DB-4BB4-ABBD-6F3F9D46DE1A",
			"type": "MeshStandardMaterial",
			"color": 5465019,
			"roughness": 1,
			"metalness": 0,
			"emissive": 0
		},
		{
			"uuid": "F5361474-F5F1-412F-8D99-3699B868092D",
			"type": "SpriteMaterial",
			"color": 16777215
		}],
	"object": {
		"uuid": "3741222A-BD8F-401C-A5D2-5A907E891896",
		"type": "Scene",
		"name": "Scene",
		"matrix": [1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1],
		"children": [
			{
				"uuid": "44F2455D-B240-4A8A-A2CE-DFD832A35669",
				"type": "Mesh",
				"name": "Ground",
				"matrix": [1,0,0,0,0,0.0007959111826494336,-0.9999997019767761,0,0,0.9999997019767761,0.0007959111826494336,0,0,-0.5,0,1],
				"geometry": "E80D9EC5-D722-4812-8226-5F355EAC9B96",
				"material": "3A9449D2-62DB-4BB4-ABBD-6F3F9D46DE1A"
			},
			{
				"uuid": "0A3CB873-07E6-4EEB-830B-68192504111B",
				"type": "Sprite",
				"name": "Particle",
				"matrix": [0.4000000059604645,0,0,0,0,0.4000000059604645,0,0,0,0,0.4000000059604645,0,0,0,0,1],
				"material": "F5361474-F5F1-412F-8D99-3699B868092D"
			},
			{
				"uuid": "40E5CDA4-0E39-4265-9293-3E9EC3207F61",
				"type": "PointLight",
				"name": "PointLight",
				"matrix": [1,0,0,0,0,1,0,0,0,0,1,0,0,11.828879356384277,0,1],
				"color": 16777215,
				"intensity": 1,
				"distance": 0,
				"decay": 1
			}]
	}
}