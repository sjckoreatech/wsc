package koreatech.cse.domain.dust;

/**
 * Created by youkang on 2016-12-07.
 */
public class Dust
{
    private RealtimeCityAir RealtimeCityAir;

    public RealtimeCityAir getRealtimeCityAir ()
    {
        return RealtimeCityAir;
    }

    public void setRealtimeCityAir (RealtimeCityAir RealtimeCityAir)
    {
        this.RealtimeCityAir = RealtimeCityAir;
    }

    @Override
    public String toString()
    {
        return "ClassPojo [RealtimeCityAir = "+RealtimeCityAir+"]";
    }
}