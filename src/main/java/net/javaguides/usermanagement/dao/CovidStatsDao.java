package net.javaguides.usermanagement.dao;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.JSONArray;
import org.json.JSONObject;

import net.javaguides.usermanagement.model.CovidStats;

public class CovidStatsDao {

	public CovidStatsDao() {

	}

	public CovidStats getDetails() throws Exception {
		CovidStats data = new CovidStats();

		String url = "https://api.covid19india.org/data.json";
		URL obj = new URL(url);
		try {
			HttpURLConnection con = (HttpURLConnection) obj.openConnection();
			// optional default is GET
			con.setRequestMethod("GET");
			// add request header
			con.setRequestProperty("User-Agent", "Mozilla/5.0");
			int responseCode = con.getResponseCode();
			System.out.println("\nSending 'GET' request to URL : " + url);
			System.out.println("Response Code : " + responseCode);
			BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
			String inputLine;
			StringBuffer response = new StringBuffer();
			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			}
			in.close();
			// Read JSON response and print
			JSONObject myResponse = new JSONObject(response.toString());
			JSONArray myResponseKarnataka = new JSONArray(myResponse.getJSONArray("statewise").toString());
			JSONObject finalresponse = new JSONObject(myResponseKarnataka.get(16).toString());
			System.out.println(finalresponse);
			data.setActive(finalresponse.getString("active"));
			data.setDeaths(finalresponse.getString("deaths"));
			data.setConfirmed(finalresponse.getString("confirmed"));
			data.setRecovered(finalresponse.getString("recovered"));
			System.out.println(data.getActive());
		} catch (Exception e) {
			e.printStackTrace();
			data.setActive("0");
			data.setDeaths("0");
			data.setConfirmed("0");
			data.setRecovered("0");
		}
		return data;
	}

//	public static void main(String[] args) {
//		try {
//			CovidStatsDao.getDetails();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//
//	public static void call_me() throws Exception {
//		String url = "https://api.covid19india.org/data.json";
//		URL obj = new URL(url);
//		HttpURLConnection con = (HttpURLConnection) obj.openConnection();
//		// optional default is GET
//		con.setRequestMethod("GET");
//		// add request header
//		con.setRequestProperty("User-Agent", "Mozilla/5.0");
//		int responseCode = con.getResponseCode();
//		System.out.println("\nSending 'GET' request to URL : " + url);
//		System.out.println("Response Code : " + responseCode);
//		BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
//		String inputLine;
//		StringBuffer response = new StringBuffer();
//		while ((inputLine = in.readLine()) != null) {
//			response.append(inputLine);
//		}
//		in.close();
//		// Read JSON response and print
//		JSONObject myResponse = new JSONObject(response.toString());
//		JSONArray myResponseKarnataka = new JSONArray(myResponse.getJSONArray("statewise").toString());
//		JSONObject finalresponse = new JSONObject(myResponseKarnataka.get(16).toString());
//		System.out.println(finalresponse);
//	}

}