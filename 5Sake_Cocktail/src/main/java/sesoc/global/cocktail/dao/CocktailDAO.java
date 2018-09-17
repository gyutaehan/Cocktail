package sesoc.global.cocktail.dao;

import java.util.List;

import sesoc.global.cocktail.vo.Cocktail;
import sesoc.global.cocktail.vo.User;
import sesoc.global.cocktail.vo.UserCocktail;

public interface CocktailDAO {

	public List<Cocktail> getCocktailList();

	public Cocktail selectCocktail(String cocktailname);

	public List<Cocktail> getCocktailByColor(String colorName);

	public List<UserCocktail> selectUserCocktail(User vo);

<<<<<<< HEAD

=======
	public List<Cocktail> getRecommandCocktailList();

	public int recommandCocktail(String cocktailSeq);
>>>>>>> branch 'master' of https://github.com/trapkka997/Cocktail

}
