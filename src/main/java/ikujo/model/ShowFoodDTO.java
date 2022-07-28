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
public class ShowFoodDTO {
	
	private Timestamp udate;
	private BigDecimal foodId;
	@NonNull private String foodNm;
	private String label;
	private BigDecimal kcal;
	private BigDecimal carbohydrate;
	private BigDecimal protein;
	private BigDecimal fat;
	private BigDecimal sugar;
	private BigDecimal ca;
	private BigDecimal fe;
	private BigDecimal mg;
	private BigDecimal na;
	private BigDecimal k;
	private BigDecimal vitaminB;
	private BigDecimal vitaminC;
	private String img;

}