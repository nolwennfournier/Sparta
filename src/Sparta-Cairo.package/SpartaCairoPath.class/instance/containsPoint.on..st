geometry - testing
containsPoint: aPoint on: aSpartaCanvas
	"Return true if a given point lies within this path as if it would be filled"
	<return: #Boolean>

	^ self primInFillX: aPoint x Y: aPoint y on: aSpartaCanvas