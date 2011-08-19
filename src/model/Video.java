package model;

public class Video 
{

	String videoFileName;
	String videoFileLocation;
	String tags;
	
	public String getVideoFileName() {
		return videoFileName;
	}
	public void setVideoFileName(String videoFileName) {
		this.videoFileName = videoFileName;
	}
	public String getVideoFileLocation() {
		return videoFileLocation;
	}
	public void setVideoFileLocation(String videoFileLocation) {
		this.videoFileLocation = videoFileLocation;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
}
