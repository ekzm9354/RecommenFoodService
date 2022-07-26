package ikujo.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class FoodDTO {

	private BigDecimal indexu;
	private Timestamp udate;
	@NonNull private String userid;
	private String userpw;
	@NonNull private String userNm;
	@NonNull private String foodNm;

}
