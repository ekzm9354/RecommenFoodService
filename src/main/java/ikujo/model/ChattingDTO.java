package ikujo.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class ChattingDTO {
	private Date c_date;
//	받는 사람
	@NonNull private String toName;
//	보내는 사람
	@NonNull private String fromName;
	@NonNull private String messeges;
	
}
