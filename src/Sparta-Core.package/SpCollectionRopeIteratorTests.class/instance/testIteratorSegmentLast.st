tests
testIteratorSegmentLast
	| rope iterator segment |

	rope := SpCollectionRope collection: #(1 2 0).
	iterator := rope iterator: 1 to: rope size.

	self assert: iterator position equals: 1.

	segment := iterator nextSegment: [ :each | each = 0 ].
		
	self assert: segment size equals: 2.
	self assert: (segment at: 1) equals: 1.
	self assert: (segment at: 2) equals: 2.

	self assert: iterator hasNext not.
	self assert: iterator position equals: 4.