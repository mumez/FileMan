private
contentsOf: aStream by: ignore
	| str |
	str := GZipReadStream on: aStream.
	^super contentsOf: str by: nil