
package koreatech.cse.domain.culture;

import java.util.HashMap;
import java.util.Map;
import com.fasterxml.jackson.annotation.JsonAnyGetter;
import com.fasterxml.jackson.annotation.JsonAnySetter;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder({
    "H_KOR_GU",
    "ADD_KOR_ROAD",
    "CATE4_NAME",
    "H_KOR_CITY",
    "NM_DP",
    "CATE3_NAME",
    "ADD_KOR",
    "NAME_KOR",
    "CATE2_NAME",
    "MAIN_KEY",
    "H_KOR_DONG",
    "CATE1_NAME"
})
public class DESCRIPTION {

    @JsonProperty("H_KOR_GU")
    private String hKORGU;
    @JsonProperty("ADD_KOR_ROAD")
    private String aDDKORROAD;
    @JsonProperty("CATE4_NAME")
    private String cATE4NAME;
    @JsonProperty("H_KOR_CITY")
    private String hKORCITY;
    @JsonProperty("NM_DP")
    private String nMDP;
    @JsonProperty("CATE3_NAME")
    private String cATE3NAME;
    @JsonProperty("ADD_KOR")
    private String aDDKOR;
    @JsonProperty("NAME_KOR")
    private String nAMEKOR;
    @JsonProperty("CATE2_NAME")
    private String cATE2NAME;
    @JsonProperty("MAIN_KEY")
    private String mAINKEY;
    @JsonProperty("H_KOR_DONG")
    private String hKORDONG;
    @JsonProperty("CATE1_NAME")
    private String cATE1NAME;
    @JsonIgnore
    private Map<String, Object> additionalProperties = new HashMap<String, Object>();

    /**
     * 
     * @return
     *     The hKORGU
     */
    @JsonProperty("H_KOR_GU")
    public String getHKORGU() {
        return hKORGU;
    }

    /**
     * 
     * @param hKORGU
     *     The H_KOR_GU
     */
    @JsonProperty("H_KOR_GU")
    public void setHKORGU(String hKORGU) {
        this.hKORGU = hKORGU;
    }

    /**
     * 
     * @return
     *     The aDDKORROAD
     */
    @JsonProperty("ADD_KOR_ROAD")
    public String getADDKORROAD() {
        return aDDKORROAD;
    }

    /**
     * 
     * @param aDDKORROAD
     *     The ADD_KOR_ROAD
     */
    @JsonProperty("ADD_KOR_ROAD")
    public void setADDKORROAD(String aDDKORROAD) {
        this.aDDKORROAD = aDDKORROAD;
    }

    /**
     * 
     * @return
     *     The cATE4NAME
     */
    @JsonProperty("CATE4_NAME")
    public String getCATE4NAME() {
        return cATE4NAME;
    }

    /**
     * 
     * @param cATE4NAME
     *     The CATE4_NAME
     */
    @JsonProperty("CATE4_NAME")
    public void setCATE4NAME(String cATE4NAME) {
        this.cATE4NAME = cATE4NAME;
    }

    /**
     * 
     * @return
     *     The hKORCITY
     */
    @JsonProperty("H_KOR_CITY")
    public String getHKORCITY() {
        return hKORCITY;
    }

    /**
     * 
     * @param hKORCITY
     *     The H_KOR_CITY
     */
    @JsonProperty("H_KOR_CITY")
    public void setHKORCITY(String hKORCITY) {
        this.hKORCITY = hKORCITY;
    }

    /**
     * 
     * @return
     *     The nMDP
     */
    @JsonProperty("NM_DP")
    public String getNMDP() {
        return nMDP;
    }

    /**
     * 
     * @param nMDP
     *     The NM_DP
     */
    @JsonProperty("NM_DP")
    public void setNMDP(String nMDP) {
        this.nMDP = nMDP;
    }

    /**
     * 
     * @return
     *     The cATE3NAME
     */
    @JsonProperty("CATE3_NAME")
    public String getCATE3NAME() {
        return cATE3NAME;
    }

    /**
     * 
     * @param cATE3NAME
     *     The CATE3_NAME
     */
    @JsonProperty("CATE3_NAME")
    public void setCATE3NAME(String cATE3NAME) {
        this.cATE3NAME = cATE3NAME;
    }

    /**
     * 
     * @return
     *     The aDDKOR
     */
    @JsonProperty("ADD_KOR")
    public String getADDKOR() {
        return aDDKOR;
    }

    /**
     * 
     * @param aDDKOR
     *     The ADD_KOR
     */
    @JsonProperty("ADD_KOR")
    public void setADDKOR(String aDDKOR) {
        this.aDDKOR = aDDKOR;
    }

    /**
     * 
     * @return
     *     The nAMEKOR
     */
    @JsonProperty("NAME_KOR")
    public String getNAMEKOR() {
        return nAMEKOR;
    }

    /**
     * 
     * @param nAMEKOR
     *     The NAME_KOR
     */
    @JsonProperty("NAME_KOR")
    public void setNAMEKOR(String nAMEKOR) {
        this.nAMEKOR = nAMEKOR;
    }

    /**
     * 
     * @return
     *     The cATE2NAME
     */
    @JsonProperty("CATE2_NAME")
    public String getCATE2NAME() {
        return cATE2NAME;
    }

    /**
     * 
     * @param cATE2NAME
     *     The CATE2_NAME
     */
    @JsonProperty("CATE2_NAME")
    public void setCATE2NAME(String cATE2NAME) {
        this.cATE2NAME = cATE2NAME;
    }

    /**
     * 
     * @return
     *     The mAINKEY
     */
    @JsonProperty("MAIN_KEY")
    public String getMAINKEY() {
        return mAINKEY;
    }

    /**
     * 
     * @param mAINKEY
     *     The MAIN_KEY
     */
    @JsonProperty("MAIN_KEY")
    public void setMAINKEY(String mAINKEY) {
        this.mAINKEY = mAINKEY;
    }

    /**
     * 
     * @return
     *     The hKORDONG
     */
    @JsonProperty("H_KOR_DONG")
    public String getHKORDONG() {
        return hKORDONG;
    }

    /**
     * 
     * @param hKORDONG
     *     The H_KOR_DONG
     */
    @JsonProperty("H_KOR_DONG")
    public void setHKORDONG(String hKORDONG) {
        this.hKORDONG = hKORDONG;
    }

    /**
     * 
     * @return
     *     The cATE1NAME
     */
    @JsonProperty("CATE1_NAME")
    public String getCATE1NAME() {
        return cATE1NAME;
    }

    /**
     * 
     * @param cATE1NAME
     *     The CATE1_NAME
     */
    @JsonProperty("CATE1_NAME")
    public void setCATE1NAME(String cATE1NAME) {
        this.cATE1NAME = cATE1NAME;
    }

    @JsonAnyGetter
    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    @JsonAnySetter
    public void setAdditionalProperty(String name, Object value) {
        this.additionalProperties.put(name, value);
    }

}
