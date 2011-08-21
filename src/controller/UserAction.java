package controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

import model.Cluster;
import model.Demo;
import model.Tag;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport implements SessionAware 
{



	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<Demo> uri;
	private String fileLoc;
	private List<Cluster> clusters;
	private List<Tag> tags;
	private Map session;
	private Demo d;
	

	public Demo getD() {
		return d;
	}

	public void setD(Demo d) {
		this.d = d;
	}
	
	public List<Demo> getUri() {
		return uri;
	}

	public void setUri(List<Demo> uri) {
		this.uri = uri;
	}

	public String getFileLoc() {
		return fileLoc;
	}

	public void setFileLoc(String fileLoc) {
		this.fileLoc = fileLoc;
	}
	
	public List<Cluster> getClusters() {
		return clusters;
	}

	public void setClusters(List<Cluster> clusters) {
		this.clusters = clusters;
	}

	public List<Tag> getTags() {
		return tags;
	}

	public void setTags(List<Tag> tags) {
		this.tags = tags;
	}
	
	
	
	@Override
	public void setSession(Map value) 
	{
		session = value;
	}
	
	public String listDemos()
	{
		/*
		 * display the available demos list
		 * 
		 * */
		d = new Demo();
		d.setFileLoc("/Users/natechen/Desktop/keyframe/globalFeatures");
		d.setInfo("info");
		d.setNumberOfVideos(1104);
		d.setTitle("Earthquake");
		uri.add(d);
		return SUCCESS;
	}
	
	public String showHow()
	{
		return SUCCESS;
	}
	
	/*
	 * fileLoc stores all results
	 * 
	 * */
	
	public String display()
	{
		fileLoc = "/Users/natechen/Desktop/keyframe/globalFeatures/";
		try
		{
			File dir = new File(fileLoc);
			for(String str : dir.list())
			{
				if(str.endsWith("tags.txt"))
				{
					
				}
				else if(str.endsWith("originalFiles.txt"))
				{
					
				}
				else if(str.endsWith("clusterDis.txt"))
				{
					File clusterFile = new File(fileLoc + str);
					Scanner scn = new Scanner(clusterFile);
					Cluster cl = null;
					List<String> videos = null;
					List<String> thumbVideoLoc = null;
					clusters = new ArrayList<Cluster>();
					tags = new ArrayList<Tag>();
					/*
					 * This is cluster n
					 * Tags are ClusterLoc info
					 * thumbVideoLoc videoLoc
					 * thumbVideoLoc videoLoc
					 * thumbVideoLoc videoLoc
					 * END
					 * 
					 * */
					while(scn.hasNext())
					{
						String line = scn.nextLine();
						if(line.contains("This is cluster"))
						{
							cl = new Cluster();
							videos = new ArrayList<String>();
							thumbVideoLoc = new ArrayList<String>();
						}
						else if(line.equals("END"))
						{
							cl.setThumbVideoLoc(thumbVideoLoc);
							cl.setVideos(videos);
							clusters.add(cl);
						}
						else if(line.contains("Tags are"))
						{
							String rest = line.substring(9).trim();
//							String[] info = rest.split(" ");
							
							Tag t = new Tag();
							try
							{
								t.setClusterLoc(rest);
								t.setInfo(rest);
								tags.add(t);
							}
							catch(Exception e)
							{
								System.out.println(rest);
								e.printStackTrace();
							}
							
						}
						else
						{
//							String[] arr = line.split(" ");
							try
							{
								thumbVideoLoc.add(line.trim());
								videos.add(line.trim());
							}
							catch(Exception e)
							{
								System.err.println(line);
								e.printStackTrace();
							}
							
						}
					}
				}
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return SUCCESS;
	}
}
