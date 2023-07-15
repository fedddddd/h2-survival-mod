main()
{
    level._id_A9C5 = "mp_crash"; // default lightset
    level.default_vision = "mp_crash"; // default vision
    level.lvl_visionset = level.default_vision;
	level.wave_table = "sp/so_survival/tier_1.csv"; // enables wave definition override
	level.loadout_table = "sp/so_survival/tier_1.csv"; // enables player load out override

    level.so_compass_zoom = "close";

    level.ac130_orbit_radius = 10000;
    level.ac130_orbit_height = 6000;

    executecommand("r_tonemaphighlightrange 20");

	maps\_so_survival::survival_preload();
    maps\mp\mp_crash::main();
    maps\_load::main();
	maps\_so_survival::survival_postload();
	maps\_so_survival::survival_init();

    level._id_B981._id_B23A = 30; // remotemissile view ang
}
