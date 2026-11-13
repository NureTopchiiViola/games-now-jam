
enum CardID {
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
	CardID.OneCoin :
		[0, 1, "Coin", false, "Coin"],
	CardID.OneDamage :
		[0, 1, "Damage", false, "Damage"],
	CardID.TwoCoin :
		[3, 2, "Coins", false, "Coin"],
	CardID.ThreeCoin :
		[4, 3, "Coins", false, "Coin"],
	CardID.FourCoin :
		[6, 4, "Coins", false, "Coin"],
	CardID.LowDamage :
		[2, 3, "Damage", false, "Damage"],
	CardID.MidDamage :
		[3, 5, "Damage", false, "Damage"],
	CardID.HighDamage :
		[5, 10, "Damage", false, "Damage"],
	CardID.DoubleAttack :
		[3, 0, "Double the next attack", false, "Effect"],
	CardID.DeleteCard :
		[5, 0, "Destroy this card and the one behind it", true, "Effect"],
	CardID.Heal :
		[3, 5, "Destroy this card and heal 5", true, "Effect"],
	CardID.DrawCard :
		[2, 1, "Draw 1 card", false, "Effect"],
	CardID.RefreshShop :
		[4, 1, "Destroy this card and refresh shop", true, "Effect"],
	CardID.Rewind :
		[5, 1, "Destroy this card and put the top card back in hand", true, "Effect"],
}
