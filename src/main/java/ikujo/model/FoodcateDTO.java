package ikujo.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class FoodcateDTO {
	private int foodid;
	private String foodnm;
	private String label;
	private int kcal;
	private int carbohydrate;
	private int protein;
	private int fat;

}
