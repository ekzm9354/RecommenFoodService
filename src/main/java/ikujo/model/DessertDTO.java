package ikujo.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class DessertDTO {

	@NonNull private int img;
	@NonNull
	private int dessertid;
	private String dname;
	private String label;

}
