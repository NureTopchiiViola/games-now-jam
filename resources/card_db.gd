
enum {
	OneCoin,
	OneDamage,
	TwoCoin,
	ThreeCoin,
	FourCoin,
	LowDamage,
	MidDamage,
	HighDamage,
	DoubleAttack,
	DeleteCard,
	Heal,
	DrawCard,
	RefreshShop,
	Rewind
	}
#Info = [Cost, Value, Description, Consumable, Type]
const DATA = {
	OneCoin :
		[0, 1, "Coin", false, "Coin"],
	OneDamage :
		[0, 1, "Damage", false, "Damage"],
	TwoCoin :
		[3, 2, "Coins", false, "Coin"],
	ThreeCoin :
		[4, 3, "Coins", false, "Coin"],
	FourCoin :
		[6, 4, "Coins", false, "Coin"],
	LowDamage :
		[2, 3, "Damage", false, "Damage"],
	MidDamage :
		[3, 5, "Damage", false, "Damage"],
	HighDamage :
		[5, 10, "Damage", false, "Damage"],
	DoubleAttack :
		[3, 0, "Double the next attack", false, "Effect"],
	DeleteCard :
		[5, 0, "Destroy this card and the one behind it", true, "Effect"],
	Heal :
		[3, 5, "Destroy this card and heal 5", true, "Effect"],
	DrawCard :
		[2, 1, "Draw 1 card", false, "Effect"],
	RefreshShop :
		[4, 1, "Destroy this card and refresh shop", true, "Effect"],
	Rewind :
		[5, 1, "Destroy this card and put the top card back in hand", true, "Effect"],
}
