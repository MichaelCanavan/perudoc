var myImage=document.getElementByID("myPhotos");

var imageArray=["images/MachuPicchu2.jpg", "images/Cusco2.jpg",
"images/SacredValley2.jpg"];

var imageIndex=0;

function changeImage() {
	myPhotos.setAttribute("src", imageArray [imageIndex]);
	imageIndex++;
	if (imageIndex>=imageArray.length) {
		imageIndex=0;
	}
}

var intervalHandle = setInterval(changeImage,5000);

