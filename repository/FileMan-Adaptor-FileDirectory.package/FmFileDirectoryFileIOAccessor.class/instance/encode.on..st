utilities
encode: encoderName on: externalStream 
	encoderName ifNil: [^self]. "UTF-8 will be used"
	externalStream
		converter: (TextConverter newForEncoding: encoderName)