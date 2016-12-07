
package koreatech.cse.domain.culture;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.fasterxml.jackson.annotation.JsonAnyGetter;
import com.fasterxml.jackson.annotation.JsonAnySetter;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder({
    "DESCRIPTION",
    "DATA"
})
public class Culture {

    @JsonProperty("DESCRIPTION")
    private DESCRIPTION dESCRIPTION;
    @JsonProperty("DATA")
    private List<DATum> dATA = null;
    @JsonIgnore
    private Map<String, Object> additionalProperties = new HashMap<String, Object>();

    /**
     * 
     * @return
     *     The dESCRIPTION
     */
    @JsonProperty("DESCRIPTION")
    public DESCRIPTION getDESCRIPTION() {
        return dESCRIPTION;
    }

    /**
     * 
     * @param dESCRIPTION
     *     The DESCRIPTION
     */
    @JsonProperty("DESCRIPTION")
    public void setDESCRIPTION(DESCRIPTION dESCRIPTION) {
        this.dESCRIPTION = dESCRIPTION;
    }

    /**
     * 
     * @return
     *     The dATA
     */
    @JsonProperty("DATA")
    public List<DATum> getDATA() {
        return dATA;
    }

    /**
     * 
     * @param dATA
     *     The DATA
     */
    @JsonProperty("DATA")
    public void setDATA(List<DATum> dATA) {
        this.dATA = dATA;
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
