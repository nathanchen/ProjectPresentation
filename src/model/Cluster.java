package model;

import java.util.List;

public class Cluster 
{
	String thumbnailLoc;
	List<String> videos;
	List<String> thumbVideoLoc;
	
	public String getThumbnailLoc() {
		return thumbnailLoc;
	}
	public void setThumbnailLoc(String thumbnailLoc) {
		this.thumbnailLoc = thumbnailLoc;
	}
	public List<String> getVideos() {
		return videos;
	}
	public void setVideos(List<String> videos) {
		this.videos = videos;
	}
	public List<String> getThumbVideoLoc() {
		return thumbVideoLoc;
	}
	public void setThumbVideoLoc(List<String> thumbVideoLoc) {
		this.thumbVideoLoc = thumbVideoLoc;
	}
	
}
