package koreatech.cse.domain.park;

public class Park
{
    private SearchParkInformationByAddressService SearchParkInformationByAddressService;

    public SearchParkInformationByAddressService getSearchParkInformationByAddressService ()
    {
        return SearchParkInformationByAddressService;
    }

    public void setSearchParkInformationByAddressService (SearchParkInformationByAddressService SearchParkInformationByAddressService)
    {
        this.SearchParkInformationByAddressService = SearchParkInformationByAddressService;
    }

    @Override
    public String toString()
    {
        return "ClassPojo [SearchParkInformationByAddressService = "+SearchParkInformationByAddressService+"]";
    }
}