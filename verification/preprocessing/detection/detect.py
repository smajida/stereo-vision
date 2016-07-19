import cv2


def run(environment):
	print "\t- " + environment.capture
	face_cascade = cv2.CascadeClassifier(environment.haar_xml)
	img = cv2.imread(environment.capture)
	faces = face_cascade.detectMultiScale(img, 1.3, 5)
	i = 0
	length = faces.__len__()
	if length <= 0:
		raise ReferenceError("A face could not be detected. Please try again")
	print "\t- %s" % (faces)
	for (x, y, w, h) in faces:
		i += 1
		crop_img = img[y:y+h, x:x+w]
		cv2.imwrite(environment.output, crop_img)