package kr.lotto.model.member;

import kr.lotto.lib.StrLib;
import kr.lotto.model.SearchData;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Map;

/**
 * 회원 검색을 위한 클래스
 */
@EqualsAndHashCode (callSuper = true)
@Data
public class MemberSearchData extends SearchData
{
    /**
     * Name
     */
    private String name;

    /**
     * 회원 아이디
     */
    private String memberId;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    @Override
    public Map<String, Object> makeMap ()
    {
		Map<String, Object> mapData = super.makeMap ();

		if (StrLib.isExistStr (name))
            mapData.put ("name", name);

        if (StrLib.isExistStr (memberId))
            mapData.put ("memberId", memberId);

        return mapData;
    }
}
