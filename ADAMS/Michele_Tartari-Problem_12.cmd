!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = meter  &
   angle = deg  &
   force = newton  &
   mass = kg  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body313
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = on  &
   grid_visibility = off  &
   size_of_icons = 0.2  &
   spacing_for_grid = 1.0
!
!------------------------------ Adams View Model ------------------------------!
!
!
model create  &
   model_name = DMS_Project
!
model attributes  &
   model_name = .DMS_Project  &
   size_of_icons = 0.2
!
view erase
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .DMS_Project.steel  &
   adams_id = 1  &
   density = 7801.0  &
   youngs_modulus = 2.07E+11  &
   poissons_ratio = 0.29
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .DMS_Project.ground.O  &
   adams_id = 1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .DMS_Project.ground.O  &
   size_of_icons = 0.2
!
marker create  &
   marker_name = .DMS_Project.ground.H  &
   adams_id = 2  &
   location = 0.4, -0.2, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .DMS_Project.ground.H  &
   size_of_icons = 0.2
!
marker create  &
   marker_name = .DMS_Project.ground.N  &
   adams_id = 3  &
   location = 0.1, -0.8, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .DMS_Project.ground.N  &
   size_of_icons = 0.2
!
marker create  &
   marker_name = .DMS_Project.ground.M  &
   adams_id = 4  &
   location = 1.9, -1.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .DMS_Project.ground.M  &
   size_of_icons = 0.2
!
marker create  &
   marker_name = .DMS_Project.ground.G  &
   adams_id = 5  &
   location = 1.6, 0.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.ground.D  &
   adams_id = 6  &
   location = 2.2, -0.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.ground.C  &
   adams_id = 7  &
   location = 2.5, -1.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.ground.B  &
   adams_id = 8  &
   location = 2.9, -1.1, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.ground.A  &
   adams_id = 9  &
   location = 2.9, -1.9, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.ground.K  &
   adams_id = 10  &
   location = 3.4, -1.9, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.ground.MARKER_36  &
   adams_id = 36  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.ground.MARKER_37  &
   adams_id = 37  &
   location = 0.4, -0.2, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.ground.MARKER_38  &
   adams_id = 38  &
   location = 0.1, -0.8, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.ground.MARKER_39  &
   adams_id = 39  &
   location = -0.4, -0.8, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.ground.MARKER_40  &
   adams_id = 40  &
   location = -0.4, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.ground.MARKER_41  &
   adams_id = 41  &
   location = 0.4, -0.2, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.ground.MARKER_43  &
   adams_id = 43  &
   location = 0.1, -0.8, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.ground.MARKER_45  &
   adams_id = 45  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .DMS_Project.ground  &
   material_type = .DMS_Project.steel
!
! ****** Graphics for current part ******
!
geometry create shape plate  &
   plate_name = .DMS_Project.ground.Base  &
   marker_name = .DMS_Project.ground.MARKER_36,  &
                 .DMS_Project.ground.MARKER_37,  &
                 .DMS_Project.ground.MARKER_38,  &
                 .DMS_Project.ground.MARKER_39, .DMS_Project.ground.MARKER_40  &
   width = 5.0E-02  &
   radius = 0.1
!
part attributes  &
   part_name = .DMS_Project.ground  &
   color = GREEN  &
   name_visibility = off  &
   size_of_icons = 0.2
!
!---------------------------------- Prism_1L ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.ground
!
part create rigid_body name_and_position  &
   part_name = .DMS_Project.Prism_1L  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.Prism_1L
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .DMS_Project.Prism_1L.MARKER_16  &
   adams_id = 16  &
   location = 0.4, -0.2, 0.0  &
   orientation = 26.5650511771d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Prism_1L.MARKER_17  &
   adams_id = 17  &
   location = 1.1155417528, 0.1577708764, 0.0  &
   orientation = 26.5650511771d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Prism_1L.cm  &
   adams_id = 63  &
   location = 0.7577708764, -2.11145618E-02, 0.0  &
   orientation = 296.5650511771d, 90.0000000113d, 90.0000000466d
!
marker create  &
   marker_name = .DMS_Project.Prism_1L.MARKER_42  &
   adams_id = 42  &
   location = 0.4, -0.2, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Prism_1L.H7  &
   adams_id = 59  &
   location = 0.4, -0.2, 0.0  &
   orientation = 116.5650511771d, 90.0d, 180.0d
!
marker create  &
   marker_name = .DMS_Project.Prism_1L.MARKER_73  &
   adams_id = 73  &
   location = 0.4, -0.2, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .DMS_Project.Prism_1L  &
   material_type = .DMS_Project.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .DMS_Project.Prism_1L.LINK_2  &
   i_marker = .DMS_Project.Prism_1L.MARKER_16  &
   j_marker = .DMS_Project.Prism_1L.MARKER_17  &
   width = 0.2  &
   depth = 6.7082039325E-02
!
part attributes  &
   part_name = .DMS_Project.Prism_1L  &
   color = SILVER  &
   name_visibility = off
!
!---------------------------------- Prism_1S ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.ground
!
part create rigid_body name_and_position  &
   part_name = .DMS_Project.Prism_1S  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.Prism_1S
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .DMS_Project.Prism_1S.MARKER_18  &
   adams_id = 18  &
   location = 1.6, 0.4, 0.0  &
   orientation = 206.5650511771d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Prism_1S.MARKER_19  &
   adams_id = 19  &
   location = 0.705572809, -4.72135955E-02, 0.0  &
   orientation = 206.5650511771d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Prism_1S.cm  &
   adams_id = 64  &
   location = 1.1527864045, 0.1763932022, 0.0  &
   orientation = 116.5650511771d, 90.0000000127d, 359.9999998418d
!
marker create  &
   marker_name = .DMS_Project.Prism_1S.G8  &
   adams_id = 48  &
   location = 1.6, 0.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Prism_1S.MARKER_60  &
   adams_id = 60  &
   location = 0.4, -0.2, 0.0  &
   orientation = 116.5650511771d, 90.0d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .DMS_Project.Prism_1S  &
   material_type = .DMS_Project.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .DMS_Project.Prism_1S.LINK_3  &
   i_marker = .DMS_Project.Prism_1S.MARKER_18  &
   j_marker = .DMS_Project.Prism_1S.MARKER_19  &
   width = 5.0E-02  &
   depth = 6.7082039325E-02
!
part attributes  &
   part_name = .DMS_Project.Prism_1S  &
   color = WHITE  &
   name_visibility = off
!
!---------------------------------- Prism_2S ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.ground
!
part create rigid_body name_and_position  &
   part_name = .DMS_Project.Prism_2S  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.Prism_2S
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .DMS_Project.Prism_2S.MARKER_20  &
   adams_id = 20  &
   location = 1.9, -1.4, 0.0  &
   orientation = 161.5650511771d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Prism_2S.MARKER_21  &
   adams_id = 21  &
   location = 0.4769750529, -0.925658351, 0.0  &
   orientation = 161.5650511771d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Prism_2S.cm  &
   adams_id = 65  &
   location = 1.1884875265, -1.1628291755, 0.0  &
   orientation = 71.5650511771d, 90.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Prism_2S.M6  &
   adams_id = 58  &
   location = 1.9, -1.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Prism_2S.MARKER_62  &
   adams_id = 62  &
   location = 0.1, -0.8, 0.0  &
   orientation = 71.5650511771d, 90.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .DMS_Project.Prism_2S  &
   material_type = .DMS_Project.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .DMS_Project.Prism_2S.LINK_4  &
   i_marker = .DMS_Project.Prism_2S.MARKER_20  &
   j_marker = .DMS_Project.Prism_2S.MARKER_21  &
   width = 5.0E-02  &
   depth = 9.4868329805E-02
!
part attributes  &
   part_name = .DMS_Project.Prism_2S  &
   color = WHITE  &
   name_visibility = off
!
!---------------------------------- Prism_2L ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.ground
!
part create rigid_body name_and_position  &
   part_name = .DMS_Project.Prism_2L  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.Prism_2L
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .DMS_Project.Prism_2L.MARKER_22  &
   adams_id = 22  &
   location = 0.1, -0.8, 0.0  &
   orientation = 341.5650511771d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Prism_2L.MARKER_23  &
   adams_id = 23  &
   location = 1.0486832981, -1.116227766, 0.0  &
   orientation = 341.5650511771d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Prism_2L.cm  &
   adams_id = 66  &
   location = 0.574341649, -0.958113883, 0.0  &
   orientation = 251.5650511771d, 90.00000003d, 90.000000166d
!
marker create  &
   marker_name = .DMS_Project.Prism_2L.MARKER_44  &
   adams_id = 44  &
   location = 0.1, -0.8, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Prism_2L.N5  &
   adams_id = 61  &
   location = 0.1, -0.8, 0.0  &
   orientation = 71.5650511771d, 90.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Prism_2L.MARKER_71  &
   adams_id = 71  &
   location = 0.1, -0.8, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .DMS_Project.Prism_2L  &
   material_type = .DMS_Project.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .DMS_Project.Prism_2L.LINK_5  &
   i_marker = .DMS_Project.Prism_2L.MARKER_22  &
   j_marker = .DMS_Project.Prism_2L.MARKER_23  &
   width = 0.2  &
   depth = 9.4868329805E-02
!
part attributes  &
   part_name = .DMS_Project.Prism_2L  &
   color = SILVER  &
   name_visibility = off
!
!--------------------------------- Triangle1 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.ground
!
part create rigid_body name_and_position  &
   part_name = .DMS_Project.Triangle1  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.Triangle1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .DMS_Project.Triangle1.MARKER_24  &
   adams_id = 24  &
   location = 1.6, 0.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Triangle1.MARKER_25  &
   adams_id = 25  &
   location = 2.2, -0.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Triangle1.MARKER_26  &
   adams_id = 26  &
   location = 2.5, -1.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Triangle1.cm  &
   adams_id = 67  &
   location = 2.0967837945, -0.4708315132, 0.0  &
   orientation = 206.4924513546d, 90.0d, 90.0d
!
marker create  &
   marker_name = .DMS_Project.Triangle1.G2  &
   adams_id = 47  &
   location = 1.6, 0.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Triangle1.D2  &
   adams_id = 49  &
   location = 2.2, -0.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Triangle1.C2  &
   adams_id = 51  &
   location = 2.5, -1.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Triangle1.MARKER_74  &
   adams_id = 74  &
   location = 1.6, 0.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .DMS_Project.Triangle1  &
   material_type = .DMS_Project.steel
!
! ****** Graphics for current part ******
!
geometry create shape plate  &
   plate_name = .DMS_Project.Triangle1.PLATE_6  &
   marker_name = .DMS_Project.Triangle1.MARKER_24,  &
                 .DMS_Project.Triangle1.MARKER_25,  &
                 .DMS_Project.Triangle1.MARKER_26  &
   width = 5.0E-02  &
   radius = 2.0E-02
!
part attributes  &
   part_name = .DMS_Project.Triangle1  &
   color = PEACH  &
   name_visibility = off
!
!--------------------------------- Triangle2 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.ground
!
part create rigid_body name_and_position  &
   part_name = .DMS_Project.Triangle2  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.Triangle2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .DMS_Project.Triangle2.K3  &
   adams_id = 27  &
   location = 3.4, -1.9, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Triangle2.MARKER_28  &
   adams_id = 28  &
   location = 2.9, -1.9, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Triangle2.MARKER_29  &
   adams_id = 29  &
   location = 2.9, -1.1, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Triangle2.cm  &
   adams_id = 68  &
   location = 3.0656204361, -1.6249612702, 0.0  &
   orientation = 202.9074445978d, 90.0d, 90.0d
!
marker create  &
   marker_name = .DMS_Project.Triangle2.B3  &
   adams_id = 54  &
   location = 2.9, -1.1, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Triangle2.A3  &
   adams_id = 56  &
   location = 2.9, -1.9, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .DMS_Project.Triangle2  &
   material_type = .DMS_Project.steel
!
! ****** Graphics for current part ******
!
geometry create shape plate  &
   plate_name = .DMS_Project.Triangle2.PLATE_7  &
   marker_name = .DMS_Project.Triangle2.K3, .DMS_Project.Triangle2.MARKER_28,  &
                 .DMS_Project.Triangle2.MARKER_29  &
   width = 5.0E-02  &
   radius = 2.0E-02
!
part attributes  &
   part_name = .DMS_Project.Triangle2  &
   color = MAIZE  &
   name_visibility = off
!
!----------------------------------- Plate ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.ground
!
part create rigid_body name_and_position  &
   part_name = .DMS_Project.Plate  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.Plate
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .DMS_Project.Plate.MARKER_30  &
   adams_id = 30  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Plate.MARKER_31  &
   adams_id = 31  &
   location = 1.9, -1.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Plate.MARKER_32  &
   adams_id = 32  &
   location = 2.9, -1.9, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Plate.MARKER_33  &
   adams_id = 33  &
   location = 2.2, -0.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Plate.cm  &
   adams_id = 69  &
   location = 1.6781489531, -0.8086350341, 0.0  &
   orientation = 237.9914935203d, 90.0d, 90.0d
!
marker create  &
   marker_name = .DMS_Project.Plate.O1  &
   adams_id = 46  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Plate.D1  &
   adams_id = 50  &
   location = 2.2, -0.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Plate.A1  &
   adams_id = 55  &
   location = 2.9, -1.9, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Plate.M1  &
   adams_id = 57  &
   location = 1.9, -1.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Plate.MARKER_72  &
   adams_id = 72  &
   location = 1.9, -1.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .DMS_Project.Plate  &
   material_type = .DMS_Project.steel
!
! ****** Graphics for current part ******
!
geometry create shape plate  &
   plate_name = .DMS_Project.Plate.PLATE_8  &
   marker_name = .DMS_Project.Plate.MARKER_30, .DMS_Project.Plate.MARKER_31,  &
                 .DMS_Project.Plate.MARKER_32, .DMS_Project.Plate.MARKER_33  &
   width = 5.0E-02  &
   radius = 2.0E-02
!
part attributes  &
   part_name = .DMS_Project.Plate  &
   color = SKYBLUE  &
   name_visibility = off
!
!------------------------------------ Link ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.ground
!
part create rigid_body name_and_position  &
   part_name = .DMS_Project.Link  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.Link
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .DMS_Project.Link.MARKER_34  &
   adams_id = 34  &
   location = 2.5, -1.4, 0.0  &
   orientation = 36.8698976458d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Link.MARKER_35  &
   adams_id = 35  &
   location = 2.9, -1.1, 0.0  &
   orientation = 36.8698976458d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Link.cm  &
   adams_id = 70  &
   location = 2.7, -1.25, 0.0  &
   orientation = 306.8698976458d, 90.0000000121d, 90.000000122d
!
marker create  &
   marker_name = .DMS_Project.Link.C4  &
   adams_id = 52  &
   location = 2.5, -1.4, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .DMS_Project.Link.B4  &
   adams_id = 53  &
   location = 2.9, -1.1, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .DMS_Project.Link  &
   material_type = .DMS_Project.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .DMS_Project.Link.LINK_9  &
   i_marker = .DMS_Project.Link.MARKER_34  &
   j_marker = .DMS_Project.Link.MARKER_35  &
   width = 5.0E-02  &
   depth = 2.5E-02
!
part attributes  &
   part_name = .DMS_Project.Link  &
   color = WHITE  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .DMS_Project.JOINT_1  &
   adams_id = 1  &
   i_marker_name = .DMS_Project.ground.MARKER_41  &
   j_marker_name = .DMS_Project.Prism_1L.MARKER_42
!
constraint attributes  &
   constraint_name = .DMS_Project.JOINT_1  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .DMS_Project.JOINT_2  &
   adams_id = 2  &
   i_marker_name = .DMS_Project.ground.MARKER_43  &
   j_marker_name = .DMS_Project.Prism_2L.MARKER_44
!
constraint attributes  &
   constraint_name = .DMS_Project.JOINT_2  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .DMS_Project.JOINT_3  &
   adams_id = 3  &
   i_marker_name = .DMS_Project.ground.MARKER_45  &
   j_marker_name = .DMS_Project.Plate.O1
!
constraint attributes  &
   constraint_name = .DMS_Project.JOINT_3  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .DMS_Project.JOINT_4  &
   adams_id = 4  &
   i_marker_name = .DMS_Project.Triangle1.G2  &
   j_marker_name = .DMS_Project.Prism_1S.G8
!
constraint attributes  &
   constraint_name = .DMS_Project.JOINT_4  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .DMS_Project.JOINT_5  &
   adams_id = 5  &
   i_marker_name = .DMS_Project.Triangle1.D2  &
   j_marker_name = .DMS_Project.Plate.D1
!
constraint attributes  &
   constraint_name = .DMS_Project.JOINT_5  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .DMS_Project.JOINT_6  &
   adams_id = 6  &
   i_marker_name = .DMS_Project.Triangle1.C2  &
   j_marker_name = .DMS_Project.Link.C4
!
constraint attributes  &
   constraint_name = .DMS_Project.JOINT_6  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .DMS_Project.JOINT_7  &
   adams_id = 7  &
   i_marker_name = .DMS_Project.Link.B4  &
   j_marker_name = .DMS_Project.Triangle2.B3
!
constraint attributes  &
   constraint_name = .DMS_Project.JOINT_7  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .DMS_Project.JOINT_8  &
   adams_id = 8  &
   i_marker_name = .DMS_Project.Plate.A1  &
   j_marker_name = .DMS_Project.Triangle2.A3
!
constraint attributes  &
   constraint_name = .DMS_Project.JOINT_8  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .DMS_Project.JOINT_9  &
   adams_id = 9  &
   i_marker_name = .DMS_Project.Plate.M1  &
   j_marker_name = .DMS_Project.Prism_2S.M6
!
constraint attributes  &
   constraint_name = .DMS_Project.JOINT_9  &
   name_visibility = off
!
constraint create joint translational  &
   joint_name = .DMS_Project.JOINT_10  &
   adams_id = 10  &
   i_marker_name = .DMS_Project.Prism_1L.H7  &
   j_marker_name = .DMS_Project.Prism_1S.MARKER_60
!
constraint attributes  &
   constraint_name = .DMS_Project.JOINT_10  &
   name_visibility = off
!
constraint create joint translational  &
   joint_name = .DMS_Project.JOINT_11  &
   adams_id = 11  &
   i_marker_name = .DMS_Project.Prism_2L.N5  &
   j_marker_name = .DMS_Project.Prism_2S.MARKER_62
!
constraint attributes  &
   constraint_name = .DMS_Project.JOINT_11  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .DMS_Project.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select initial_static=no duration=5.0 step_size=1.0E-02 model_name=.DMS_Project"
!
!---------------------------------- Motions -----------------------------------!
!
!
constraint create motion_generator  &
   motion_name = .DMS_Project.MOTION_1  &
   adams_id = 1  &
   type_of_freedom = translational  &
   joint_name = .DMS_Project.JOINT_10  &
   function = ""
!
constraint attributes  &
   constraint_name = .DMS_Project.MOTION_1  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .DMS_Project.MOTION_2  &
   adams_id = 2  &
   type_of_freedom = translational  &
   joint_name = .DMS_Project.JOINT_11  &
   function = ""
!
constraint attributes  &
   constraint_name = .DMS_Project.MOTION_2  &
   name_visibility = off
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = gravity  &
   x_component_gravity = 0.0  &
   y_component_gravity = -9.80665  &
   z_component_gravity = 0.0
!
force attributes  &
   force_name = .DMS_Project.gravity  &
   active = off  &
   size_of_icons = 0.2
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------------- Measures ----------------------------------!
!
!
measure create pt2pt  &
   measure_name = .DMS_Project.NM  &
   from_point = .DMS_Project.Prism_2L.MARKER_71  &
   to_point = .DMS_Project.Plate.MARKER_72  &
   characteristic = translational_displacement  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .DMS_Project.NM  &
   color = WHITE
!
measure create pt2pt  &
   measure_name = .DMS_Project.HG  &
   from_point = .DMS_Project.Prism_1L.MARKER_73  &
   to_point = .DMS_Project.Triangle1.MARKER_74  &
   characteristic = translational_displacement  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .DMS_Project.HG  &
   color = WHITE
!
!---------------------------- Function definitions ----------------------------!
!
!
constraint modify motion_generator  &
   motion_name = .DMS_Project.MOTION_1  &
   function = "-0.3*sin(5*time)"
!
constraint modify motion_generator  &
   motion_name = .DMS_Project.MOTION_2  &
   function = "0.25*sin(2*time)"
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
geometry modify shape plate  &
   plate_name = .DMS_Project.ground.Base  &
   width = (5.0cm)  &
   radius = (10.0cm)
!
marker modify  &
   marker_name = .DMS_Project.Prism_1L.MARKER_17  &
   location =   &
      (LOC_RELATIVE_TO({0.8m, 0.0, 0.0}, .DMS_Project.Prism_1L.MARKER_16))  &
   relative_to = .DMS_Project.Prism_1L
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.ground
!
geometry modify shape link  &
   link_name = .DMS_Project.Prism_1L.LINK_2  &
   width = (20.0cm)  &
   depth = (6.7082039325E-02meter)
!
marker modify  &
   marker_name = .DMS_Project.Prism_1S.MARKER_19  &
   location =   &
      (LOC_RELATIVE_TO({1m, 0.0, 0.0}, .DMS_Project.Prism_1S.MARKER_18))  &
   relative_to = .DMS_Project.Prism_1S
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.ground
!
geometry modify shape link  &
   link_name = .DMS_Project.Prism_1S.LINK_3  &
   width = (5.0cm)  &
   depth = (6.7082039325E-02meter)
!
marker modify  &
   marker_name = .DMS_Project.Prism_2S.MARKER_21  &
   location =   &
      (LOC_RELATIVE_TO({1.5m, 0.0, 0.0}, .DMS_Project.Prism_2S.MARKER_20))  &
   relative_to = .DMS_Project.Prism_2S
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.ground
!
geometry modify shape link  &
   link_name = .DMS_Project.Prism_2S.LINK_4  &
   width = (5.0cm)  &
   depth = (9.4868329805E-02meter)
!
marker modify  &
   marker_name = .DMS_Project.Prism_2L.MARKER_23  &
   location =   &
      (LOC_RELATIVE_TO({1m, 0.0, 0.0}, .DMS_Project.Prism_2L.MARKER_22))  &
   relative_to = .DMS_Project.Prism_2L
!
defaults coordinate_system  &
   default_coordinate_system = .DMS_Project.ground
!
geometry modify shape link  &
   link_name = .DMS_Project.Prism_2L.LINK_5  &
   width = (20.0cm)  &
   depth = (9.4868329805E-02meter)
!
geometry modify shape plate  &
   plate_name = .DMS_Project.Triangle1.PLATE_6  &
   width = (5.0cm)  &
   radius = (2.0cm)
!
geometry modify shape plate  &
   plate_name = .DMS_Project.Triangle2.PLATE_7  &
   width = (5.0cm)  &
   radius = (2.0cm)
!
geometry modify shape plate  &
   plate_name = .DMS_Project.Plate.PLATE_8  &
   width = (5.0cm)  &
   radius = (2.0cm)
!
geometry modify shape link  &
   link_name = .DMS_Project.Link.LINK_9  &
   width = (5.0cm)  &
   depth = (2.5E-02meter)
!
material modify  &
   material_name = .DMS_Project.steel  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+11(Newton/meter**2))
!
model display  &
   model_name = DMS_Project
