package kr.lotto.model;

import kr.lotto.lib.StrLib;
import lombok.Data;

import java.util.HashMap;
import java.util.Map;

/**
 * 각 Sv 의 검색 객체의 상위 객체
 *
 */
@Data
public class SearchData
{
	/**
	 * 시작일
	 */
	private String startDate;

	/**
	 * 종료일
	 */
	private String endDate;

	/**
	 * 정렬값
	 */
	private String orderVal;

	/**
	 * 정렬항목
	 */
	private String orderAsc;

	/**
	 * 검색 조건을 맵으로 만든다.
	 * @return 검색맵
	 */
	public Map<String, Object> makeMap ()
	{
		Map<String, Object> mapData = new HashMap<> ();

		if (!StrLib.isEmptyStr (startDate))
			mapData.put ("startDate", startDate);

		if (!StrLib.isEmptyStr (endDate))
			mapData.put ("endDate", endDate);

		if (!StrLib.isEmptyStr (orderVal))
			mapData.put ("orderVal", orderVal);

		if (!StrLib.isEmptyStr (orderAsc))
			mapData.put ("orderAsc", orderAsc);

		return mapData;
	}
}
