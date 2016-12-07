package koreatech.cse.domain.dust;

/**
 * Created by youkang on 2016-12-07.
 */
public class Row
{
    private String PM25;

    private String PM10;

    private String SO2;

    private String IDEX_MVL;

    private String NO2;

    private String IDEX_NM;

    private String MSRDT;

    private String MSRRGN_NM;

    private String CO;

    private String O3;

    private String ARPLT_MAIN;

    private String MSRSTE_NM;

    public String getPM25 ()
    {
        return PM25;
    }

    public void setPM25 (String PM25)
    {
        this.PM25 = PM25;
    }

    public String getPM10 ()
    {
        return PM10;
    }

    public void setPM10 (String PM10)
    {
        this.PM10 = PM10;
    }

    public String getSO2 ()
    {
        return SO2;
    }

    public void setSO2 (String SO2)
    {
        this.SO2 = SO2;
    }

    public String getIDEX_MVL ()
    {
        return IDEX_MVL;
    }

    public void setIDEX_MVL (String IDEX_MVL)
    {
        this.IDEX_MVL = IDEX_MVL;
    }

    public String getNO2 ()
    {
        return NO2;
    }

    public void setNO2 (String NO2)
    {
        this.NO2 = NO2;
    }

    public String getIDEX_NM ()
    {
        return IDEX_NM;
    }

    public void setIDEX_NM (String IDEX_NM)
    {
        this.IDEX_NM = IDEX_NM;
    }

    public String getMSRDT ()
    {
        return MSRDT;
    }

    public void setMSRDT (String MSRDT)
    {
        this.MSRDT = MSRDT;
    }

    public String getMSRRGN_NM ()
    {
        return MSRRGN_NM;
    }

    public void setMSRRGN_NM (String MSRRGN_NM)
    {
        this.MSRRGN_NM = MSRRGN_NM;
    }

    public String getCO ()
    {
        return CO;
    }

    public void setCO (String CO)
    {
        this.CO = CO;
    }

    public String getO3 ()
    {
        return O3;
    }

    public void setO3 (String O3)
    {
        this.O3 = O3;
    }

    public String getARPLT_MAIN ()
    {
        return ARPLT_MAIN;
    }

    public void setARPLT_MAIN (String ARPLT_MAIN)
    {
        this.ARPLT_MAIN = ARPLT_MAIN;
    }

    public String getMSRSTE_NM ()
    {
        return MSRSTE_NM;
    }

    public void setMSRSTE_NM (String MSRSTE_NM)
    {
        this.MSRSTE_NM = MSRSTE_NM;
    }

    @Override
    public String toString()
    {
        return "ClassPojo [PM25 = "+PM25+", PM10 = "+PM10+", SO2 = "+SO2+", IDEX_MVL = "+IDEX_MVL+", NO2 = "+NO2+", IDEX_NM = "+IDEX_NM+", MSRDT = "+MSRDT+", MSRRGN_NM = "+MSRRGN_NM+", CO = "+CO+", O3 = "+O3+", ARPLT_MAIN = "+ARPLT_MAIN+", MSRSTE_NM = "+MSRSTE_NM+"]";
    }
}