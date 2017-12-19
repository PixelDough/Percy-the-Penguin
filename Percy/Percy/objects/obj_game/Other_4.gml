if room == MainMenu or room == GameOver {
	audio_stop_all();
	if room == MainMenu {
		reset_game();
	}
}
if room == Stage15 {
	music(snd_boss);
}
if room == Win or room == BONUS {
	music(snd_theme);
	music(snd_bonus);
}
