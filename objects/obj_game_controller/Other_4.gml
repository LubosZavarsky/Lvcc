if room == rm_intro_0 {

	audio_stop_all();

}

if room == rm_intro_0 || room == rm_intro_1 || room == rm_intro_2  {

	if (!audio_is_playing(snd_msc_intro)) audio_play_sound(snd_msc_intro, 1, true);

}

if room == rm_byt_3 {
	
	audio_stop_all();
	if (!audio_is_playing(snd_msc_byt)) audio_play_sound(snd_msc_byt, 2, true);
	if (!audio_is_playing(snd_byt_tv)) audio_play_sound(snd_byt_tv, 1, true);

}

if room == rm_kaviaren_4 || room == rm_kaviaren_end_12 {
	
	audio_stop_all();
	if (!audio_is_playing(snd_msc_kaviaren)) audio_play_sound(snd_msc_kaviaren, 2, true);
	if (!audio_is_playing(snd_kaviaren)) audio_play_sound(snd_kaviaren, 1, true);

}

if room == rm_zalubeni_5 {

	if (audio_is_playing(snd_kaviaren)) audio_stop_sound(snd_kaviaren);

}

if room == rm_byt_pande_6 {
	
	audio_stop_all();
	if (!audio_is_playing(snd_msc_byt_corona)) audio_play_sound(snd_msc_byt_corona, 2, true);
	
}

if room == rm_les_prvy_9 {
	
	audio_stop_all();
	if (!audio_is_playing(snd_vtaky)) audio_play_sound(snd_vtaky, 2, true);
	
}

if room == rm_les_druhy_10 { 
	
	if (!audio_is_playing(snd_msc_les)) audio_play_sound(snd_msc_les, 2, true);
	
} 

if room == rm_nemocnica_11 || room == rm_smrt_17  {
		
	audio_stop_all();
	if (!audio_is_playing(snd_sine)) audio_play_sound(snd_sine, 2, true);
	
}


if room == rm_koniec_23 {

	audio_stop_all();
	if (!audio_is_playing(snd_end)) audio_play_sound(snd_end, 2, true);

}


