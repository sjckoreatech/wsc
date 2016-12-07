package koreatech.cse.domain.park;

/**
 * Created by pjunbum on 2016-12-05.
 */

public class Row
{
    private String P_PARK;

    private String P_IMG;

    private String G_LONGITUDE;

    private String P_DIVISION;

    private String G_LATITUDE;

    private String P_ZONE;

    private String LONGITUDE;

    private String P_ADDR;

    private String P_IDX;

    public Row(String p_PARK, String p_IMG, String g_LONGITUDE, String p_DIVISION, String g_LATITUDE, String p_ZONE, String LONGITUDE, String p_ADDR, String p_IDX, String p_LIST_CONTENT, String p_ADMINTEL, String LATITUDE) {
        P_PARK = p_PARK;
        P_IMG = p_IMG;
        G_LONGITUDE = g_LONGITUDE;
        P_DIVISION = p_DIVISION;
        G_LATITUDE = g_LATITUDE;
        P_ZONE = p_ZONE;
        this.LONGITUDE = LONGITUDE;
        P_ADDR = p_ADDR;
        P_IDX = p_IDX;
        P_LIST_CONTENT = p_LIST_CONTENT;
        P_ADMINTEL = p_ADMINTEL;
        this.LATITUDE = LATITUDE;
    }

    private String P_LIST_CONTENT;

    private String P_ADMINTEL;

    private String LATITUDE;

    public String getP_PARK ()
    {
        return P_PARK;
    }

    public void setP_PARK (String P_PARK)
    {
        this.P_PARK = P_PARK;
    }

    public String getP_IMG ()
    {
        return P_IMG;
    }

    public void setP_IMG (String P_IMG)
    {
        this.P_IMG = P_IMG;
    }

    public String getG_LONGITUDE ()
    {
        return G_LONGITUDE;
    }

    public void setG_LONGITUDE (String G_LONGITUDE)
    {
        this.G_LONGITUDE = G_LONGITUDE;
    }

    public String getP_DIVISION ()
    {
        return P_DIVISION;
    }

    public void setP_DIVISION (String P_DIVISION)
    {
        this.P_DIVISION = P_DIVISION;
    }

    public String getG_LATITUDE ()
    {
        return G_LATITUDE;
    }

    public void setG_LATITUDE (String G_LATITUDE)
    {
        this.G_LATITUDE = G_LATITUDE;
    }

    public String getP_ZONE ()
    {
        return P_ZONE;
    }

    public void setP_ZONE (String P_ZONE)
    {
        this.P_ZONE = P_ZONE;
    }

    public String getLONGITUDE ()
    {
        return LONGITUDE;
    }

    public void setLONGITUDE (String LONGITUDE)
    {
        this.LONGITUDE = LONGITUDE;
    }

    public String getP_ADDR ()
    {
        return P_ADDR;
    }

    public void setP_ADDR (String P_ADDR)
    {
        this.P_ADDR = P_ADDR;
    }

    public String getP_IDX ()
    {
        return P_IDX;
    }

    public void setP_IDX (String P_IDX)
    {
        this.P_IDX = P_IDX;
    }

    public String getP_LIST_CONTENT ()
    {
        return P_LIST_CONTENT;
    }

    public void setP_LIST_CONTENT (String P_LIST_CONTENT)
    {
        this.P_LIST_CONTENT = P_LIST_CONTENT;
    }

    public String getP_ADMINTEL ()
    {
        return P_ADMINTEL;
    }

    public void setP_ADMINTEL (String P_ADMINTEL)
    {
        this.P_ADMINTEL = P_ADMINTEL;
    }

    public String getLATITUDE ()
    {
        return LATITUDE;
    }

    public void setLATITUDE (String LATITUDE)
    {
        this.LATITUDE = LATITUDE;
    }

    @Override
    public String toString()
    {
        return "ClassPojo [P_PARK = "+P_PARK+", P_IMG = "+P_IMG+", G_LONGITUDE = "+G_LONGITUDE+", P_DIVISION = "+P_DIVISION+", G_LATITUDE = "+G_LATITUDE+", P_ZONE = "+P_ZONE+", LONGITUDE = "+LONGITUDE+", P_ADDR = "+P_ADDR+", P_IDX = "+P_IDX+", P_LIST_CONTENT = "+P_LIST_CONTENT+", P_ADMINTEL = "+P_ADMINTEL+", LATITUDE = "+LATITUDE+"]";
    }
}