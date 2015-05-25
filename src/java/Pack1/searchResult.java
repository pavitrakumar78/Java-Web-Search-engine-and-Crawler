/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Pack1;

/**
 *
 * @author pavitrakumar
 */
public class searchResult {

    private String URL;
    private String Title;
    private String Domain;

    public void setURL(String s){
        this.URL = s;
    }
    public void setTitle(String s){
        this.Title = s;
    }
    public void setDomain(String s){
        this.Domain = s;
    }
    public String getURL(){
        return this.URL;
    }
    public String getTitle(){
        return this.Title;
    }
    public String getDomain(){
        return this.Domain;
    }
    

}
