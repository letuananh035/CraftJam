#macro FONT_CHARS "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890.,!?'-+/:)("
#macro RIGHT 0
#macro UP 1
#macro LEFT 2
#macro DOWN 3
#macro FLOOR -5
#macro WALL -6
#macro VOID -7
#macro ENEMY -8
#macro INTERACT -9
#macro PICKUP -10
#macro I "Instances"
#macro FORMAT_TEXT 0
#macro ACTIVATE 0
#macro G global
#macro DARKNESS_DEFAULT 0.65
#macro SEC game_get_speed(gamespeed_fps)
#macro MX mouse_x
#macro MY mouse_y
#macro CELL_SIZE 32
#macro W display_get_gui_width()
#macro H display_get_gui_height()

//OLD STUPID RED 196, 45, 60)



#macro C_GUM  make_color_rgb(248, 16, 88)
#macro C_RED  make_color_rgb(251, 19, 139)
#macro C_CAPE  make_color_rgb(168, 8, 51)
#macro C_DARK  make_color_rgb(12,5,35)

#macro C_LIME   make_color_rgb(5, 245 , 5 )
#macro C_YELLOW  make_color_rgb(255, 253, 137)
#macro C_PURPLE  make_color_rgb(35, 12,  72)
#macro C_AQUA   make_color_rgb(127, 255, 177)
#macro C_FUCHISIA   make_color_rgb(255,53,253)
#macro C_FIRE  make_color_rgb(255,255,20)
#macro C_ORANGE  make_color_rgb(255,180,120)
#macro C_RED_ORANGE  make_color_rgb(250,89,120)

#macro C_BLUE  make_color_rgb(27, 183, 214 )
#macro C_LAVENDER  make_color_rgb(157, 168, 224)

#macro C_PERFECT_SCORE C_GUM;
#macro C_MEDIUM_SCORE C_YELLOW;
#macro C_BAD_SCORE C_PURPLE;


#macro NORTH 1
#macro WEST 2
#macro EAST 4
#macro SOUTH 8

#macro CAM view_camera[0]


#macro _L camera_get_view_x(view_camera[0])
#macro _T camera_get_view_y(view_camera[0])
#macro _R camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])
#macro _B camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])

#macro ORE_COUNT 0
#macro ORE_SCALE 1
#macro ORE_SCALE_TIMER 2
#macro ORE_SCALE_TIME 3
#macro ORE_FLASH_TIMER 3
#macro ORE_FLASH_COLOR 4
#macro ORE_X_OFFSET 5
#macro ORE_TITLE 6
