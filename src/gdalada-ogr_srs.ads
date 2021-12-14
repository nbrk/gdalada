pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Gdalada.OGR; use Gdalada.OGR;

package Gdalada.OGR_SRS is

   SRS_WKT_WGS84_LAT_LONG : aliased constant String := "GEOGCS[""WGS 84"",DATUM[""WGS_1984"",SPHEROID[""WGS 84"",6378137,298.257223563,AUTHORITY[""EPSG"",""7030""]],AUTHORITY[""EPSG"",""6326""]],PRIMEM[""Greenwich"",0,AUTHORITY[""EPSG"",""8901""]],UNIT[""degree"",0.0174532925199433,AUTHORITY[""EPSG"",""9122""]],AXIS[""Latitude"",NORTH],AXIS[""Longitude"",EAST],AUTHORITY[""EPSG"",""4326""]]" & ASCII.NUL;  --  ../ogr_srs_api.h:71

   SRS_PT_ALBERS_CONIC_EQUAL_AREA : aliased constant String := "Albers_Conic_Equal_Area" & ASCII.NUL;  --  ../ogr_srs_api.h:78

   SRS_PT_AZIMUTHAL_EQUIDISTANT : aliased constant String := "Azimuthal_Equidistant" & ASCII.NUL;  --  ../ogr_srs_api.h:81

   SRS_PT_CASSINI_SOLDNER : aliased constant String := "Cassini_Soldner" & ASCII.NUL;  --  ../ogr_srs_api.h:83

   SRS_PT_CYLINDRICAL_EQUAL_AREA : aliased constant String := "Cylindrical_Equal_Area" & ASCII.NUL;  --  ../ogr_srs_api.h:85

   SRS_PT_BONNE           : aliased constant String := "Bonne" & ASCII.NUL;  --  ../ogr_srs_api.h:87

   SRS_PT_ECKERT_I        : aliased constant String := "Eckert_I" & ASCII.NUL;  --  ../ogr_srs_api.h:89

   SRS_PT_ECKERT_II       : aliased constant String := "Eckert_II" & ASCII.NUL;  --  ../ogr_srs_api.h:91

   SRS_PT_ECKERT_III      : aliased constant String := "Eckert_III" & ASCII.NUL;  --  ../ogr_srs_api.h:93

   SRS_PT_ECKERT_IV       : aliased constant String := "Eckert_IV" & ASCII.NUL;  --  ../ogr_srs_api.h:95

   SRS_PT_ECKERT_V        : aliased constant String := "Eckert_V" & ASCII.NUL;  --  ../ogr_srs_api.h:97

   SRS_PT_ECKERT_VI       : aliased constant String := "Eckert_VI" & ASCII.NUL;  --  ../ogr_srs_api.h:99

   SRS_PT_EQUIDISTANT_CONIC : aliased constant String := "Equidistant_Conic" & ASCII.NUL;  --  ../ogr_srs_api.h:101

   SRS_PT_EQUIRECTANGULAR : aliased constant String := "Equirectangular" & ASCII.NUL;  --  ../ogr_srs_api.h:104

   SRS_PT_GALL_STEREOGRAPHIC : aliased constant String := "Gall_Stereographic" & ASCII.NUL;  --  ../ogr_srs_api.h:106

   SRS_PT_GAUSSSCHREIBERTMERCATOR : aliased constant String := "Gauss_Schreiber_Transverse_Mercator" & ASCII.NUL;  --  ../ogr_srs_api.h:109

   SRS_PT_GEOSTATIONARY_SATELLITE : aliased constant String := "Geostationary_Satellite" & ASCII.NUL;  --  ../ogr_srs_api.h:112

   SRS_PT_GOODE_HOMOLOSINE : aliased constant String := "Goode_Homolosine" & ASCII.NUL;  --  ../ogr_srs_api.h:115

   SRS_PT_IGH             : aliased constant String := "Interrupted_Goode_Homolosine" & ASCII.NUL;  --  ../ogr_srs_api.h:117

   SRS_PT_GNOMONIC        : aliased constant String := "Gnomonic" & ASCII.NUL;  --  ../ogr_srs_api.h:119

   SRS_PT_HOTINE_OBLIQUE_MERCATOR_AZIMUTH_CENTER : aliased constant String := "Hotine_Oblique_Mercator_Azimuth_Center" & ASCII.NUL;  --  ../ogr_srs_api.h:121

   SRS_PT_HOTINE_OBLIQUE_MERCATOR : aliased constant String := "Hotine_Oblique_Mercator" & ASCII.NUL;  --  ../ogr_srs_api.h:124

   SRS_PT_HOTINE_OBLIQUE_MERCATOR_TWO_POINT_NATURAL_ORIGIN : aliased constant String := "Hotine_Oblique_Mercator_Two_Point_Natural_Origin" & ASCII.NUL;  --  ../ogr_srs_api.h:127

   SRS_PT_LABORDE_OBLIQUE_MERCATOR : aliased constant String := "Laborde_Oblique_Mercator" & ASCII.NUL;  --  ../ogr_srs_api.h:130

   SRS_PT_LAMBERT_CONFORMAL_CONIC_1SP : aliased constant String := "Lambert_Conformal_Conic_1SP" & ASCII.NUL;  --  ../ogr_srs_api.h:133

   SRS_PT_LAMBERT_CONFORMAL_CONIC_2SP : aliased constant String := "Lambert_Conformal_Conic_2SP" & ASCII.NUL;  --  ../ogr_srs_api.h:136

   SRS_PT_LAMBERT_CONFORMAL_CONIC_2SP_BELGIUM : aliased constant String := "Lambert_Conformal_Conic_2SP_Belgium" & ASCII.NUL;  --  ../ogr_srs_api.h:139

   SRS_PT_LAMBERT_AZIMUTHAL_EQUAL_AREA : aliased constant String := "Lambert_Azimuthal_Equal_Area" & ASCII.NUL;  --  ../ogr_srs_api.h:142

   SRS_PT_MERCATOR_1SP    : aliased constant String := "Mercator_1SP" & ASCII.NUL;  --  ../ogr_srs_api.h:145

   SRS_PT_MERCATOR_2SP    : aliased constant String := "Mercator_2SP" & ASCII.NUL;  --  ../ogr_srs_api.h:147

   SRS_PT_MERCATOR_AUXILIARY_SPHERE : aliased constant String := "Mercator_Auxiliary_Sphere" & ASCII.NUL;  --  ../ogr_srs_api.h:149

   SRS_PT_MILLER_CYLINDRICAL : aliased constant String := "Miller_Cylindrical" & ASCII.NUL;  --  ../ogr_srs_api.h:152

   SRS_PT_MOLLWEIDE       : aliased constant String := "Mollweide" & ASCII.NUL;  --  ../ogr_srs_api.h:154

   SRS_PT_NEW_ZEALAND_MAP_GRID : aliased constant String := "New_Zealand_Map_Grid" & ASCII.NUL;  --  ../ogr_srs_api.h:156

   SRS_PT_OBLIQUE_STEREOGRAPHIC : aliased constant String := "Oblique_Stereographic" & ASCII.NUL;  --  ../ogr_srs_api.h:159

   SRS_PT_ORTHOGRAPHIC    : aliased constant String := "Orthographic" & ASCII.NUL;  --  ../ogr_srs_api.h:162

   SRS_PT_POLAR_STEREOGRAPHIC : aliased constant String := "Polar_Stereographic" & ASCII.NUL;  --  ../ogr_srs_api.h:164

   SRS_PT_POLYCONIC       : aliased constant String := "Polyconic" & ASCII.NUL;  --  ../ogr_srs_api.h:167

   SRS_PT_ROBINSON        : aliased constant String := "Robinson" & ASCII.NUL;  --  ../ogr_srs_api.h:169

   SRS_PT_SINUSOIDAL      : aliased constant String := "Sinusoidal" & ASCII.NUL;  --  ../ogr_srs_api.h:171

   SRS_PT_STEREOGRAPHIC   : aliased constant String := "Stereographic" & ASCII.NUL;  --  ../ogr_srs_api.h:173

   SRS_PT_SWISS_OBLIQUE_CYLINDRICAL : aliased constant String := "Swiss_Oblique_Cylindrical" & ASCII.NUL;  --  ../ogr_srs_api.h:175

   SRS_PT_TRANSVERSE_MERCATOR : aliased constant String := "Transverse_Mercator" & ASCII.NUL;  --  ../ogr_srs_api.h:178

   SRS_PT_TRANSVERSE_MERCATOR_SOUTH_ORIENTED : aliased constant String := "Transverse_Mercator_South_Orientated" & ASCII.NUL;  --  ../ogr_srs_api.h:181

   SRS_PT_TRANSVERSE_MERCATOR_MI_21 : aliased constant String := "Transverse_Mercator_MapInfo_21" & ASCII.NUL;  --  ../ogr_srs_api.h:186

   SRS_PT_TRANSVERSE_MERCATOR_MI_22 : aliased constant String := "Transverse_Mercator_MapInfo_22" & ASCII.NUL;  --  ../ogr_srs_api.h:189

   SRS_PT_TRANSVERSE_MERCATOR_MI_23 : aliased constant String := "Transverse_Mercator_MapInfo_23" & ASCII.NUL;  --  ../ogr_srs_api.h:192

   SRS_PT_TRANSVERSE_MERCATOR_MI_24 : aliased constant String := "Transverse_Mercator_MapInfo_24" & ASCII.NUL;  --  ../ogr_srs_api.h:195

   SRS_PT_TRANSVERSE_MERCATOR_MI_25 : aliased constant String := "Transverse_Mercator_MapInfo_25" & ASCII.NUL;  --  ../ogr_srs_api.h:198

   SRS_PT_TUNISIA_MINING_GRID : aliased constant String := "Tunisia_Mining_Grid" & ASCII.NUL;  --  ../ogr_srs_api.h:202

   SRS_PT_TWO_POINT_EQUIDISTANT : aliased constant String := "Two_Point_Equidistant" & ASCII.NUL;  --  ../ogr_srs_api.h:205

   SRS_PT_VANDERGRINTEN   : aliased constant String := "VanDerGrinten" & ASCII.NUL;  --  ../ogr_srs_api.h:208

   SRS_PT_KROVAK          : aliased constant String := "Krovak" & ASCII.NUL;  --  ../ogr_srs_api.h:210

   SRS_PT_IMW_POLYCONIC   : aliased constant String := "International_Map_of_the_World_Polyconic" & ASCII.NUL;  --  ../ogr_srs_api.h:212

   SRS_PT_WAGNER_I        : aliased constant String := "Wagner_I" & ASCII.NUL;  --  ../ogr_srs_api.h:214

   SRS_PT_WAGNER_II       : aliased constant String := "Wagner_II" & ASCII.NUL;  --  ../ogr_srs_api.h:216

   SRS_PT_WAGNER_III      : aliased constant String := "Wagner_III" & ASCII.NUL;  --  ../ogr_srs_api.h:218

   SRS_PT_WAGNER_IV       : aliased constant String := "Wagner_IV" & ASCII.NUL;  --  ../ogr_srs_api.h:220

   SRS_PT_WAGNER_V        : aliased constant String := "Wagner_V" & ASCII.NUL;  --  ../ogr_srs_api.h:222

   SRS_PT_WAGNER_VI       : aliased constant String := "Wagner_VI" & ASCII.NUL;  --  ../ogr_srs_api.h:224

   SRS_PT_WAGNER_VII      : aliased constant String := "Wagner_VII" & ASCII.NUL;  --  ../ogr_srs_api.h:226

   SRS_PT_QSC             : aliased constant String := "Quadrilateralized_Spherical_Cube" & ASCII.NUL;  --  ../ogr_srs_api.h:228

   SRS_PT_AITOFF          : aliased constant String := "Aitoff" & ASCII.NUL;  --  ../ogr_srs_api.h:230

   SRS_PT_WINKEL_I        : aliased constant String := "Winkel_I" & ASCII.NUL;  --  ../ogr_srs_api.h:232

   SRS_PT_WINKEL_II       : aliased constant String := "Winkel_II" & ASCII.NUL;  --  ../ogr_srs_api.h:234

   SRS_PT_WINKEL_TRIPEL   : aliased constant String := "Winkel_Tripel" & ASCII.NUL;  --  ../ogr_srs_api.h:236

   SRS_PT_CRASTER_PARABOLIC : aliased constant String := "Craster_Parabolic" & ASCII.NUL;  --  ../ogr_srs_api.h:238

   SRS_PT_LOXIMUTHAL      : aliased constant String := "Loximuthal" & ASCII.NUL;  --  ../ogr_srs_api.h:240

   SRS_PT_QUARTIC_AUTHALIC : aliased constant String := "Quartic_Authalic" & ASCII.NUL;  --  ../ogr_srs_api.h:242

   SRS_PT_SCH             : aliased constant String := "Spherical_Cross_Track_Height" & ASCII.NUL;  --  ../ogr_srs_api.h:244

   SRS_PP_CENTRAL_MERIDIAN : aliased constant String := "central_meridian" & ASCII.NUL;  --  ../ogr_srs_api.h:247

   SRS_PP_SCALE_FACTOR    : aliased constant String := "scale_factor" & ASCII.NUL;  --  ../ogr_srs_api.h:249

   SRS_PP_STANDARD_PARALLEL_1 : aliased constant String := "standard_parallel_1" & ASCII.NUL;  --  ../ogr_srs_api.h:251

   SRS_PP_STANDARD_PARALLEL_2 : aliased constant String := "standard_parallel_2" & ASCII.NUL;  --  ../ogr_srs_api.h:253

   SRS_PP_PSEUDO_STD_PARALLEL_1 : aliased constant String := "pseudo_standard_parallel_1" & ASCII.NUL;  --  ../ogr_srs_api.h:255

   SRS_PP_LONGITUDE_OF_CENTER : aliased constant String := "longitude_of_center" & ASCII.NUL;  --  ../ogr_srs_api.h:257

   SRS_PP_LATITUDE_OF_CENTER : aliased constant String := "latitude_of_center" & ASCII.NUL;  --  ../ogr_srs_api.h:259

   SRS_PP_LONGITUDE_OF_ORIGIN : aliased constant String := "longitude_of_origin" & ASCII.NUL;  --  ../ogr_srs_api.h:261

   SRS_PP_LATITUDE_OF_ORIGIN : aliased constant String := "latitude_of_origin" & ASCII.NUL;  --  ../ogr_srs_api.h:263

   SRS_PP_FALSE_EASTING   : aliased constant String := "false_easting" & ASCII.NUL;  --  ../ogr_srs_api.h:265

   SRS_PP_FALSE_NORTHING  : aliased constant String := "false_northing" & ASCII.NUL;  --  ../ogr_srs_api.h:267

   SRS_PP_AZIMUTH         : aliased constant String := "azimuth" & ASCII.NUL;  --  ../ogr_srs_api.h:269

   SRS_PP_LONGITUDE_OF_POINT_1 : aliased constant String := "longitude_of_point_1" & ASCII.NUL;  --  ../ogr_srs_api.h:271

   SRS_PP_LATITUDE_OF_POINT_1 : aliased constant String := "latitude_of_point_1" & ASCII.NUL;  --  ../ogr_srs_api.h:273

   SRS_PP_LONGITUDE_OF_POINT_2 : aliased constant String := "longitude_of_point_2" & ASCII.NUL;  --  ../ogr_srs_api.h:275

   SRS_PP_LATITUDE_OF_POINT_2 : aliased constant String := "latitude_of_point_2" & ASCII.NUL;  --  ../ogr_srs_api.h:277

   SRS_PP_LONGITUDE_OF_POINT_3 : aliased constant String := "longitude_of_point_3" & ASCII.NUL;  --  ../ogr_srs_api.h:279

   SRS_PP_LATITUDE_OF_POINT_3 : aliased constant String := "latitude_of_point_3" & ASCII.NUL;  --  ../ogr_srs_api.h:281

   SRS_PP_RECTIFIED_GRID_ANGLE : aliased constant String := "rectified_grid_angle" & ASCII.NUL;  --  ../ogr_srs_api.h:283

   SRS_PP_LANDSAT_NUMBER  : aliased constant String := "landsat_number" & ASCII.NUL;  --  ../ogr_srs_api.h:285

   SRS_PP_PATH_NUMBER     : aliased constant String := "path_number" & ASCII.NUL;  --  ../ogr_srs_api.h:287

   SRS_PP_PERSPECTIVE_POINT_HEIGHT : aliased constant String := "perspective_point_height" & ASCII.NUL;  --  ../ogr_srs_api.h:289

   SRS_PP_SATELLITE_HEIGHT : aliased constant String := "satellite_height" & ASCII.NUL;  --  ../ogr_srs_api.h:291

   SRS_PP_FIPSZONE        : aliased constant String := "fipszone" & ASCII.NUL;  --  ../ogr_srs_api.h:293

   SRS_PP_ZONE            : aliased constant String := "zone" & ASCII.NUL;  --  ../ogr_srs_api.h:295

   SRS_PP_LATITUDE_OF_1ST_POINT : aliased constant String := "Latitude_Of_1st_Point" & ASCII.NUL;  --  ../ogr_srs_api.h:297

   SRS_PP_LONGITUDE_OF_1ST_POINT : aliased constant String := "Longitude_Of_1st_Point" & ASCII.NUL;  --  ../ogr_srs_api.h:299

   SRS_PP_LATITUDE_OF_2ND_POINT : aliased constant String := "Latitude_Of_2nd_Point" & ASCII.NUL;  --  ../ogr_srs_api.h:301

   SRS_PP_LONGITUDE_OF_2ND_POINT : aliased constant String := "Longitude_Of_2nd_Point" & ASCII.NUL;  --  ../ogr_srs_api.h:303

   SRS_PP_PEG_POINT_LATITUDE : aliased constant String := "peg_point_latitude" & ASCII.NUL;  --  ../ogr_srs_api.h:305

   SRS_PP_PEG_POINT_LONGITUDE : aliased constant String := "peg_point_longitude" & ASCII.NUL;  --  ../ogr_srs_api.h:307

   SRS_PP_PEG_POINT_HEADING : aliased constant String := "peg_point_heading" & ASCII.NUL;  --  ../ogr_srs_api.h:309

   SRS_PP_PEG_POINT_HEIGHT : aliased constant String := "peg_point_height" & ASCII.NUL;  --  ../ogr_srs_api.h:311

   SRS_UL_METER           : aliased constant String := "Meter" & ASCII.NUL;  --  ../ogr_srs_api.h:314

   SRS_UL_FOOT            : aliased constant String := "Foot (International)" & ASCII.NUL;  --  ../ogr_srs_api.h:316

   SRS_UL_FOOT_CONV       : aliased constant String := "0.3048" & ASCII.NUL;  --  ../ogr_srs_api.h:318

   SRS_UL_US_FOOT         : aliased constant String := "Foot_US" & ASCII.NUL;  --  ../ogr_srs_api.h:320

   SRS_UL_US_FOOT_CONV    : aliased constant String := "0.3048006096012192" & ASCII.NUL;  --  ../ogr_srs_api.h:322

   SRS_UL_NAUTICAL_MILE   : aliased constant String := "Nautical Mile" & ASCII.NUL;  --  ../ogr_srs_api.h:324

   SRS_UL_NAUTICAL_MILE_CONV : aliased constant String := "1852.0" & ASCII.NUL;  --  ../ogr_srs_api.h:326

   SRS_UL_LINK            : aliased constant String := "Link" & ASCII.NUL;  --  ../ogr_srs_api.h:328

   SRS_UL_LINK_CONV       : aliased constant String := "0.20116684023368047" & ASCII.NUL;  --  ../ogr_srs_api.h:330

   SRS_UL_CHAIN           : aliased constant String := "Chain" & ASCII.NUL;  --  ../ogr_srs_api.h:332

   SRS_UL_CHAIN_CONV      : aliased constant String := "20.116684023368047" & ASCII.NUL;  --  ../ogr_srs_api.h:334

   SRS_UL_ROD             : aliased constant String := "Rod" & ASCII.NUL;  --  ../ogr_srs_api.h:336

   SRS_UL_ROD_CONV        : aliased constant String := "5.02921005842012" & ASCII.NUL;  --  ../ogr_srs_api.h:338

   SRS_UL_LINK_Clarke     : aliased constant String := "Link_Clarke" & ASCII.NUL;  --  ../ogr_srs_api.h:340

   SRS_UL_LINK_Clarke_CONV : aliased constant String := "0.2011661949" & ASCII.NUL;  --  ../ogr_srs_api.h:342

   SRS_UL_KILOMETER       : aliased constant String := "Kilometer" & ASCII.NUL;  --  ../ogr_srs_api.h:345

   SRS_UL_KILOMETER_CONV  : aliased constant String := "1000." & ASCII.NUL;  --  ../ogr_srs_api.h:347

   SRS_UL_DECIMETER       : aliased constant String := "Decimeter" & ASCII.NUL;  --  ../ogr_srs_api.h:349

   SRS_UL_DECIMETER_CONV  : aliased constant String := "0.1" & ASCII.NUL;  --  ../ogr_srs_api.h:351

   SRS_UL_CENTIMETER      : aliased constant String := "Centimeter" & ASCII.NUL;  --  ../ogr_srs_api.h:353

   SRS_UL_CENTIMETER_CONV : aliased constant String := "0.01" & ASCII.NUL;  --  ../ogr_srs_api.h:355

   SRS_UL_MILLIMETER      : aliased constant String := "Millimeter" & ASCII.NUL;  --  ../ogr_srs_api.h:357

   SRS_UL_MILLIMETER_CONV : aliased constant String := "0.001" & ASCII.NUL;  --  ../ogr_srs_api.h:359

   SRS_UL_INTL_NAUT_MILE  : aliased constant String := "Nautical_Mile_International" & ASCII.NUL;  --  ../ogr_srs_api.h:361

   SRS_UL_INTL_NAUT_MILE_CONV : aliased constant String := "1852.0" & ASCII.NUL;  --  ../ogr_srs_api.h:363

   SRS_UL_INTL_INCH       : aliased constant String := "Inch_International" & ASCII.NUL;  --  ../ogr_srs_api.h:365

   SRS_UL_INTL_INCH_CONV  : aliased constant String := "0.0254" & ASCII.NUL;  --  ../ogr_srs_api.h:367

   SRS_UL_INTL_FOOT       : aliased constant String := "Foot_International" & ASCII.NUL;  --  ../ogr_srs_api.h:369

   SRS_UL_INTL_FOOT_CONV  : aliased constant String := "0.3048" & ASCII.NUL;  --  ../ogr_srs_api.h:371

   SRS_UL_INTL_YARD       : aliased constant String := "Yard_International" & ASCII.NUL;  --  ../ogr_srs_api.h:373

   SRS_UL_INTL_YARD_CONV  : aliased constant String := "0.9144" & ASCII.NUL;  --  ../ogr_srs_api.h:375

   SRS_UL_INTL_STAT_MILE  : aliased constant String := "Statute_Mile_International" & ASCII.NUL;  --  ../ogr_srs_api.h:377

   SRS_UL_INTL_STAT_MILE_CONV : aliased constant String := "1609.344" & ASCII.NUL;  --  ../ogr_srs_api.h:379

   SRS_UL_INTL_FATHOM     : aliased constant String := "Fathom_International" & ASCII.NUL;  --  ../ogr_srs_api.h:381

   SRS_UL_INTL_FATHOM_CONV : aliased constant String := "1.8288" & ASCII.NUL;  --  ../ogr_srs_api.h:383

   SRS_UL_INTL_CHAIN      : aliased constant String := "Chain_International" & ASCII.NUL;  --  ../ogr_srs_api.h:385

   SRS_UL_INTL_CHAIN_CONV : aliased constant String := "20.1168" & ASCII.NUL;  --  ../ogr_srs_api.h:387

   SRS_UL_INTL_LINK       : aliased constant String := "Link_International" & ASCII.NUL;  --  ../ogr_srs_api.h:389

   SRS_UL_INTL_LINK_CONV  : aliased constant String := "0.201168" & ASCII.NUL;  --  ../ogr_srs_api.h:391

   SRS_UL_US_INCH         : aliased constant String := "Inch_US_Surveyor" & ASCII.NUL;  --  ../ogr_srs_api.h:393

   SRS_UL_US_INCH_CONV    : aliased constant String := "0.025400050800101603" & ASCII.NUL;  --  ../ogr_srs_api.h:395

   SRS_UL_US_YARD         : aliased constant String := "Yard_US_Surveyor" & ASCII.NUL;  --  ../ogr_srs_api.h:397

   SRS_UL_US_YARD_CONV    : aliased constant String := "0.914401828803658" & ASCII.NUL;  --  ../ogr_srs_api.h:399

   SRS_UL_US_CHAIN        : aliased constant String := "Chain_US_Surveyor" & ASCII.NUL;  --  ../ogr_srs_api.h:401

   SRS_UL_US_CHAIN_CONV   : aliased constant String := "20.11684023368047" & ASCII.NUL;  --  ../ogr_srs_api.h:403

   SRS_UL_US_STAT_MILE    : aliased constant String := "Statute_Mile_US_Surveyor" & ASCII.NUL;  --  ../ogr_srs_api.h:405

   SRS_UL_US_STAT_MILE_CONV : aliased constant String := "1609.347218694437" & ASCII.NUL;  --  ../ogr_srs_api.h:407

   SRS_UL_INDIAN_YARD     : aliased constant String := "Yard_Indian" & ASCII.NUL;  --  ../ogr_srs_api.h:409

   SRS_UL_INDIAN_YARD_CONV : aliased constant String := "0.91439523" & ASCII.NUL;  --  ../ogr_srs_api.h:411

   SRS_UL_INDIAN_FOOT     : aliased constant String := "Foot_Indian" & ASCII.NUL;  --  ../ogr_srs_api.h:413

   SRS_UL_INDIAN_FOOT_CONV : aliased constant String := "0.30479841" & ASCII.NUL;  --  ../ogr_srs_api.h:415

   SRS_UL_INDIAN_CHAIN    : aliased constant String := "Chain_Indian" & ASCII.NUL;  --  ../ogr_srs_api.h:417

   SRS_UL_INDIAN_CHAIN_CONV : aliased constant String := "20.11669506" & ASCII.NUL;  --  ../ogr_srs_api.h:419

   SRS_UA_DEGREE          : aliased constant String := "degree" & ASCII.NUL;  --  ../ogr_srs_api.h:422

   SRS_UA_DEGREE_CONV     : aliased constant String := "0.0174532925199433" & ASCII.NUL;  --  ../ogr_srs_api.h:424

   SRS_UA_RADIAN          : aliased constant String := "radian" & ASCII.NUL;  --  ../ogr_srs_api.h:426

   SRS_PM_GREENWICH       : aliased constant String := "Greenwich" & ASCII.NUL;  --  ../ogr_srs_api.h:429

   SRS_DN_NAD27           : aliased constant String := "North_American_Datum_1927" & ASCII.NUL;  --  ../ogr_srs_api.h:432

   SRS_DN_NAD83           : aliased constant String := "North_American_Datum_1983" & ASCII.NUL;  --  ../ogr_srs_api.h:434

   SRS_DN_WGS72           : aliased constant String := "WGS_1972" & ASCII.NUL;  --  ../ogr_srs_api.h:436

   SRS_DN_WGS84           : aliased constant String := "WGS_1984" & ASCII.NUL;  --  ../ogr_srs_api.h:438

   SRS_WGS84_SEMIMAJOR    : constant := 6378137.0;  --  ../ogr_srs_api.h:441

   SRS_WGS84_INVFLATTENING : constant := 298.257223563;  --  ../ogr_srs_api.h:443

   type OGRAxisOrientation is 
     (OAO_Other,
      OAO_North,
      OAO_South,
      OAO_East,
      OAO_West,
      OAO_Up,
      OAO_Down)
     with Convention => C;  -- ../ogr_srs_api.h:56

   function OSRAxisEnumToName (EOrientation : OGRAxisOrientation) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_srs_api.h:58
     with Import => True, 
     Convention => C, 
     External_Name => "OSRAxisEnumToName";

   Subtype OGRSpatialReferenceH is System.Address;  -- ../ogr_srs_api.h:459

   Subtype OGRCoordinateTransformationH is System.Address;  -- ../ogr_srs_api.h:461

   procedure OSRSetPROJSearchPaths (PapszPaths : System.Address)  -- ../ogr_srs_api.h:466
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetPROJSearchPaths";

   function OSRGetPROJSearchPaths return System.Address  -- ../ogr_srs_api.h:467
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetPROJSearchPaths";

   procedure OSRSetPROJAuxDbPaths (PapszPaths : System.Address)  -- ../ogr_srs_api.h:468
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetPROJAuxDbPaths";

   function OSRGetPROJAuxDbPaths return System.Address  -- ../ogr_srs_api.h:469
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetPROJAuxDbPaths";

   procedure OSRGetPROJVersion
     (PnMajor : access Int;
      PnMinor : access Int;
      PnPatch : access Int)  -- ../ogr_srs_api.h:470
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetPROJVersion";

   function OSRNewSpatialReference (Arg1 : Interfaces.C.Strings.Chars_Ptr) return OGRSpatialReferenceH  -- ../ogr_srs_api.h:473
     with Import => True, 
     Convention => C, 
     External_Name => "OSRNewSpatialReference";

   function OSRCloneGeogCS (Arg1 : OGRSpatialReferenceH) return OGRSpatialReferenceH  -- ../ogr_srs_api.h:474
     with Import => True, 
     Convention => C, 
     External_Name => "OSRCloneGeogCS";

   function OSRClone (Arg1 : OGRSpatialReferenceH) return OGRSpatialReferenceH  -- ../ogr_srs_api.h:475
     with Import => True, 
     Convention => C, 
     External_Name => "OSRClone";

   procedure OSRDestroySpatialReference (Arg1 : OGRSpatialReferenceH)  -- ../ogr_srs_api.h:476
     with Import => True, 
     Convention => C, 
     External_Name => "OSRDestroySpatialReference";

   function OSRReference (Arg1 : OGRSpatialReferenceH) return Int  -- ../ogr_srs_api.h:478
     with Import => True, 
     Convention => C, 
     External_Name => "OSRReference";

   function OSRDereference (Arg1 : OGRSpatialReferenceH) return Int  -- ../ogr_srs_api.h:479
     with Import => True, 
     Convention => C, 
     External_Name => "OSRDereference";

   procedure OSRRelease (Arg1 : OGRSpatialReferenceH)  -- ../ogr_srs_api.h:480
     with Import => True, 
     Convention => C, 
     External_Name => "OSRRelease";

   function OSRValidate (Arg1 : OGRSpatialReferenceH) return OGRErr  -- ../ogr_srs_api.h:482
     with Import => True, 
     Convention => C, 
     External_Name => "OSRValidate";

   function OSRImportFromEPSG (Arg1 : OGRSpatialReferenceH; Arg2 : Int) return OGRErr  -- ../ogr_srs_api.h:484
     with Import => True, 
     Convention => C, 
     External_Name => "OSRImportFromEPSG";

   function OSRImportFromEPSGA (Arg1 : OGRSpatialReferenceH; Arg2 : Int) return OGRErr  -- ../ogr_srs_api.h:485
     with Import => True, 
     Convention => C, 
     External_Name => "OSRImportFromEPSGA";

   function OSRImportFromWkt (Arg1 : OGRSpatialReferenceH; Arg2 : System.Address) return OGRErr  -- ../ogr_srs_api.h:486
     with Import => True, 
     Convention => C, 
     External_Name => "OSRImportFromWkt";

   function OSRImportFromProj4 (Arg1 : OGRSpatialReferenceH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return OGRErr  -- ../ogr_srs_api.h:487
     with Import => True, 
     Convention => C, 
     External_Name => "OSRImportFromProj4";

   function OSRImportFromESRI (Arg1 : OGRSpatialReferenceH; Arg2 : System.Address) return OGRErr  -- ../ogr_srs_api.h:488
     with Import => True, 
     Convention => C, 
     External_Name => "OSRImportFromESRI";

   function OSRImportFromPCI
     (HSRS : OGRSpatialReferenceH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Interfaces.C.Strings.Chars_Ptr;
      Arg4 : access Double) return OGRErr  -- ../ogr_srs_api.h:489
     with Import => True, 
     Convention => C, 
     External_Name => "OSRImportFromPCI";

   function OSRImportFromUSGS
     (Arg1 : OGRSpatialReferenceH;
      Arg2 : Long;
      Arg3 : Long;
      Arg4 : access Double;
      Arg5 : Long) return OGRErr  -- ../ogr_srs_api.h:491
     with Import => True, 
     Convention => C, 
     External_Name => "OSRImportFromUSGS";

   function OSRImportFromXML (Arg1 : OGRSpatialReferenceH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return OGRErr  -- ../ogr_srs_api.h:493
     with Import => True, 
     Convention => C, 
     External_Name => "OSRImportFromXML";

   function OSRImportFromDict
     (Arg1 : OGRSpatialReferenceH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Interfaces.C.Strings.Chars_Ptr) return OGRErr  -- ../ogr_srs_api.h:494
     with Import => True, 
     Convention => C, 
     External_Name => "OSRImportFromDict";

   function OSRImportFromPanorama
     (Arg1 : OGRSpatialReferenceH;
      Arg2 : Long;
      Arg3 : Long;
      Arg4 : Long;
      Arg5 : access Double) return OGRErr  -- ../ogr_srs_api.h:496
     with Import => True, 
     Convention => C, 
     External_Name => "OSRImportFromPanorama";

   function OSRImportFromOzi (Arg1 : OGRSpatialReferenceH; Arg2 : System.Address) return OGRErr  -- ../ogr_srs_api.h:498
     with Import => True, 
     Convention => C, 
     External_Name => "OSRImportFromOzi";

   function OSRImportFromMICoordSys (Arg1 : OGRSpatialReferenceH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return OGRErr  -- ../ogr_srs_api.h:499
     with Import => True, 
     Convention => C, 
     External_Name => "OSRImportFromMICoordSys";

   function OSRImportFromERM
     (Arg1 : OGRSpatialReferenceH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Interfaces.C.Strings.Chars_Ptr;
      Arg4 : Interfaces.C.Strings.Chars_Ptr) return OGRErr  -- ../ogr_srs_api.h:500
     with Import => True, 
     Convention => C, 
     External_Name => "OSRImportFromERM";

   function OSRImportFromUrl (Arg1 : OGRSpatialReferenceH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return OGRErr  -- ../ogr_srs_api.h:502
     with Import => True, 
     Convention => C, 
     External_Name => "OSRImportFromUrl";

   function OSRExportToWkt (Arg1 : OGRSpatialReferenceH; Arg2 : System.Address) return OGRErr  -- ../ogr_srs_api.h:504
     with Import => True, 
     Convention => C, 
     External_Name => "OSRExportToWkt";

   function OSRExportToWktEx
     (Arg1         : OGRSpatialReferenceH;
      PpszResult   : System.Address;
      PapszOptions : System.Address) return OGRErr  -- ../ogr_srs_api.h:505
     with Import => True, 
     Convention => C, 
     External_Name => "OSRExportToWktEx";

   function OSRExportToPrettyWkt
     (Arg1 : OGRSpatialReferenceH;
      Arg2 : System.Address;
      Arg3 : Int) return OGRErr  -- ../ogr_srs_api.h:507
     with Import => True, 
     Convention => C, 
     External_Name => "OSRExportToPrettyWkt";

   function OSRExportToPROJJSON
     (HSRS         : OGRSpatialReferenceH;
      PpszReturn   : System.Address;
      PapszOptions : System.Address) return OGRErr  -- ../ogr_srs_api.h:508
     with Import => True, 
     Convention => C, 
     External_Name => "OSRExportToPROJJSON";

   function OSRExportToProj4 (Arg1 : OGRSpatialReferenceH; Arg2 : System.Address) return OGRErr  -- ../ogr_srs_api.h:511
     with Import => True, 
     Convention => C, 
     External_Name => "OSRExportToProj4";

   function OSRExportToPCI
     (Arg1 : OGRSpatialReferenceH;
      Arg2 : System.Address;
      Arg3 : System.Address;
      Arg4 : System.Address) return OGRErr  -- ../ogr_srs_api.h:512
     with Import => True, 
     Convention => C, 
     External_Name => "OSRExportToPCI";

   function OSRExportToUSGS
     (Arg1 : OGRSpatialReferenceH;
      Arg2 : access Long;
      Arg3 : access Long;
      Arg4 : System.Address;
      Arg5 : access Long) return OGRErr  -- ../ogr_srs_api.h:514
     with Import => True, 
     Convention => C, 
     External_Name => "OSRExportToUSGS";

   function OSRExportToXML
     (Arg1 : OGRSpatialReferenceH;
      Arg2 : System.Address;
      Arg3 : Interfaces.C.Strings.Chars_Ptr) return OGRErr  -- ../ogr_srs_api.h:516
     with Import => True, 
     Convention => C, 
     External_Name => "OSRExportToXML";

   function OSRExportToPanorama
     (Arg1 : OGRSpatialReferenceH;
      Arg2 : access Long;
      Arg3 : access Long;
      Arg4 : access Long;
      Arg5 : access Long;
      Arg6 : access Double) return OGRErr  -- ../ogr_srs_api.h:517
     with Import => True, 
     Convention => C, 
     External_Name => "OSRExportToPanorama";

   function OSRExportToMICoordSys (Arg1 : OGRSpatialReferenceH; Arg2 : System.Address) return OGRErr  -- ../ogr_srs_api.h:519
     with Import => True, 
     Convention => C, 
     External_Name => "OSRExportToMICoordSys";

   function OSRExportToERM
     (Arg1 : OGRSpatialReferenceH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Interfaces.C.Strings.Chars_Ptr;
      Arg4 : Interfaces.C.Strings.Chars_Ptr) return OGRErr  -- ../ogr_srs_api.h:520
     with Import => True, 
     Convention => C, 
     External_Name => "OSRExportToERM";

   function OSRMorphToESRI (Arg1 : OGRSpatialReferenceH) return OGRErr  -- ../ogr_srs_api.h:522
     with Import => True, 
     Convention => C, 
     External_Name => "OSRMorphToESRI";

   function OSRMorphFromESRI (Arg1 : OGRSpatialReferenceH) return OGRErr  -- ../ogr_srs_api.h:523
     with Import => True, 
     Convention => C, 
     External_Name => "OSRMorphFromESRI";

   function OSRConvertToOtherProjection
     (HSRS                : OGRSpatialReferenceH;
      PszTargetProjection : Interfaces.C.Strings.Chars_Ptr;
      PapszOptions        : System.Address) return OGRSpatialReferenceH  -- ../ogr_srs_api.h:525
     with Import => True, 
     Convention => C, 
     External_Name => "OSRConvertToOtherProjection";

   function OSRGetName (HSRS : OGRSpatialReferenceH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_srs_api.h:530
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetName";

   function OSRSetAttrValue
     (HSRS            : OGRSpatialReferenceH;
      PszNodePath     : Interfaces.C.Strings.Chars_Ptr;
      PszNewNodeValue : Interfaces.C.Strings.Chars_Ptr) return OGRErr  -- ../ogr_srs_api.h:532
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetAttrValue";

   function OSRGetAttrValue
     (HSRS    : OGRSpatialReferenceH;
      PszName : Interfaces.C.Strings.Chars_Ptr;
      IChild  : Int) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_srs_api.h:535
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetAttrValue";

   function OSRSetAngularUnits
     (Arg1 : OGRSpatialReferenceH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Double) return OGRErr  -- ../ogr_srs_api.h:538
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetAngularUnits";

   function OSRGetAngularUnits (Arg1 : OGRSpatialReferenceH; Arg2 : System.Address) return Double  -- ../ogr_srs_api.h:539
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetAngularUnits";

   function OSRSetLinearUnits
     (Arg1 : OGRSpatialReferenceH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Double) return OGRErr  -- ../ogr_srs_api.h:540
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetLinearUnits";

   function OSRSetTargetLinearUnits
     (Arg1 : OGRSpatialReferenceH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Interfaces.C.Strings.Chars_Ptr;
      Arg4 : Double) return OGRErr  -- ../ogr_srs_api.h:541
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetTargetLinearUnits";

   function OSRSetLinearUnitsAndUpdateParameters
     (Arg1 : OGRSpatialReferenceH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Double) return OGRErr  -- ../ogr_srs_api.h:542
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetLinearUnitsAndUpdateParameters";

   function OSRGetLinearUnits (Arg1 : OGRSpatialReferenceH; Arg2 : System.Address) return Double  -- ../ogr_srs_api.h:544
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetLinearUnits";

   function OSRGetTargetLinearUnits
     (Arg1 : OGRSpatialReferenceH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : System.Address) return Double  -- ../ogr_srs_api.h:545
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetTargetLinearUnits";

   function OSRGetPrimeMeridian (Arg1 : OGRSpatialReferenceH; Arg2 : System.Address) return Double  -- ../ogr_srs_api.h:547
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetPrimeMeridian";

   function OSRIsGeographic (Arg1 : OGRSpatialReferenceH) return Int  -- ../ogr_srs_api.h:549
     with Import => True, 
     Convention => C, 
     External_Name => "OSRIsGeographic";

   function OSRIsDerivedGeographic (Arg1 : OGRSpatialReferenceH) return Int  -- ../ogr_srs_api.h:550
     with Import => True, 
     Convention => C, 
     External_Name => "OSRIsDerivedGeographic";

   function OSRIsLocal (Arg1 : OGRSpatialReferenceH) return Int  -- ../ogr_srs_api.h:551
     with Import => True, 
     Convention => C, 
     External_Name => "OSRIsLocal";

   function OSRIsProjected (Arg1 : OGRSpatialReferenceH) return Int  -- ../ogr_srs_api.h:552
     with Import => True, 
     Convention => C, 
     External_Name => "OSRIsProjected";

   function OSRIsCompound (Arg1 : OGRSpatialReferenceH) return Int  -- ../ogr_srs_api.h:553
     with Import => True, 
     Convention => C, 
     External_Name => "OSRIsCompound";

   function OSRIsGeocentric (Arg1 : OGRSpatialReferenceH) return Int  -- ../ogr_srs_api.h:554
     with Import => True, 
     Convention => C, 
     External_Name => "OSRIsGeocentric";

   function OSRIsVertical (Arg1 : OGRSpatialReferenceH) return Int  -- ../ogr_srs_api.h:555
     with Import => True, 
     Convention => C, 
     External_Name => "OSRIsVertical";

   function OSRIsSameGeogCS (Arg1 : OGRSpatialReferenceH; Arg2 : OGRSpatialReferenceH) return Int  -- ../ogr_srs_api.h:556
     with Import => True, 
     Convention => C, 
     External_Name => "OSRIsSameGeogCS";

   function OSRIsSameVertCS (Arg1 : OGRSpatialReferenceH; Arg2 : OGRSpatialReferenceH) return Int  -- ../ogr_srs_api.h:557
     with Import => True, 
     Convention => C, 
     External_Name => "OSRIsSameVertCS";

   function OSRIsSame (Arg1 : OGRSpatialReferenceH; Arg2 : OGRSpatialReferenceH) return Int  -- ../ogr_srs_api.h:558
     with Import => True, 
     Convention => C, 
     External_Name => "OSRIsSame";

   function OSRIsSameEx
     (Arg1         : OGRSpatialReferenceH;
      Arg2         : OGRSpatialReferenceH;
      PapszOptions : System.Address) return Int  -- ../ogr_srs_api.h:559
     with Import => True, 
     Convention => C, 
     External_Name => "OSRIsSameEx";

   function OSRSetLocalCS (HSRS : OGRSpatialReferenceH; PszName : Interfaces.C.Strings.Chars_Ptr) return OGRErr  -- ../ogr_srs_api.h:562
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetLocalCS";

   function OSRSetProjCS (HSRS : OGRSpatialReferenceH; PszName : Interfaces.C.Strings.Chars_Ptr) return OGRErr  -- ../ogr_srs_api.h:563
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetProjCS";

   function OSRSetGeocCS (HSRS : OGRSpatialReferenceH; PszName : Interfaces.C.Strings.Chars_Ptr) return OGRErr  -- ../ogr_srs_api.h:564
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetGeocCS";

   function OSRSetWellKnownGeogCS (HSRS : OGRSpatialReferenceH; PszName : Interfaces.C.Strings.Chars_Ptr) return OGRErr  -- ../ogr_srs_api.h:565
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetWellKnownGeogCS";

   function OSRSetFromUserInput (HSRS : OGRSpatialReferenceH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return OGRErr  -- ../ogr_srs_api.h:567
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetFromUserInput";

   function OSRCopyGeogCSFrom (HSRS : OGRSpatialReferenceH; HSrcSRS : OGRSpatialReferenceH) return OGRErr  -- ../ogr_srs_api.h:569
     with Import => True, 
     Convention => C, 
     External_Name => "OSRCopyGeogCSFrom";

   function OSRSetTOWGS84
     (HSRS : OGRSpatialReferenceH;
      Arg2 : Double;
      Arg3 : Double;
      Arg4 : Double;
      Arg5 : Double;
      Arg6 : Double;
      Arg7 : Double;
      Arg8 : Double) return OGRErr  -- ../ogr_srs_api.h:571
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetTOWGS84";

   function OSRGetTOWGS84
     (HSRS : OGRSpatialReferenceH;
      Arg2 : access Double;
      Arg3 : Int) return OGRErr  -- ../ogr_srs_api.h:574
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetTOWGS84";

   function OSRAddGuessedTOWGS84 (HSRS : OGRSpatialReferenceH) return OGRErr  -- ../ogr_srs_api.h:575
     with Import => True, 
     Convention => C, 
     External_Name => "OSRAddGuessedTOWGS84";

   function OSRSetCompoundCS
     (HSRS      : OGRSpatialReferenceH;
      PszName   : Interfaces.C.Strings.Chars_Ptr;
      HHorizSRS : OGRSpatialReferenceH;
      HVertSRS  : OGRSpatialReferenceH) return OGRErr  -- ../ogr_srs_api.h:577
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetCompoundCS";

   function OSRPromoteTo3D (HSRS : OGRSpatialReferenceH; PszName : Interfaces.C.Strings.Chars_Ptr) return OGRErr  -- ../ogr_srs_api.h:581
     with Import => True, 
     Convention => C, 
     External_Name => "OSRPromoteTo3D";

   function OSRDemoteTo2D (HSRS : OGRSpatialReferenceH; PszName : Interfaces.C.Strings.Chars_Ptr) return OGRErr  -- ../ogr_srs_api.h:582
     with Import => True, 
     Convention => C, 
     External_Name => "OSRDemoteTo2D";

   function OSRSetGeogCS
     (HSRS               : OGRSpatialReferenceH;
      PszGeogName        : Interfaces.C.Strings.Chars_Ptr;
      PszDatumName       : Interfaces.C.Strings.Chars_Ptr;
      PszEllipsoidName   : Interfaces.C.Strings.Chars_Ptr;
      DfSemiMajor        : Double;
      DfInvFlattening    : Double;
      PszPMName          : Interfaces.C.Strings.Chars_Ptr;
      DfPMOffset         : Double;
      PszUnits           : Interfaces.C.Strings.Chars_Ptr;
      DfConvertToRadians : Double) return OGRErr  -- ../ogr_srs_api.h:584
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetGeogCS";

   function OSRSetVertCS
     (HSRS             : OGRSpatialReferenceH;
      PszVertCSName    : Interfaces.C.Strings.Chars_Ptr;
      PszVertDatumName : Interfaces.C.Strings.Chars_Ptr;
      NVertDatumType   : Int) return OGRErr  -- ../ogr_srs_api.h:594
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetVertCS";

   function OSRGetSemiMajor (Arg1 : OGRSpatialReferenceH; Arg2 : access OGRErr) return Double  -- ../ogr_srs_api.h:599
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetSemiMajor";

   function OSRGetSemiMinor (Arg1 : OGRSpatialReferenceH; Arg2 : access OGRErr) return Double  -- ../ogr_srs_api.h:600
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetSemiMinor";

   function OSRGetInvFlattening (Arg1 : OGRSpatialReferenceH; Arg2 : access OGRErr) return Double  -- ../ogr_srs_api.h:601
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetInvFlattening";

   function OSRSetAuthority
     (HSRS         : OGRSpatialReferenceH;
      PszTargetKey : Interfaces.C.Strings.Chars_Ptr;
      PszAuthority : Interfaces.C.Strings.Chars_Ptr;
      NCode        : Int) return OGRErr  -- ../ogr_srs_api.h:603
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetAuthority";

   function OSRGetAuthorityCode (HSRS : OGRSpatialReferenceH; PszTargetKey : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_srs_api.h:607
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetAuthorityCode";

   function OSRGetAuthorityName (HSRS : OGRSpatialReferenceH; PszTargetKey : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_srs_api.h:609
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetAuthorityName";

   function OSRGetAreaOfUse
     (HSRS                : OGRSpatialReferenceH;
      PdfWestLongitudeDeg : access Double;
      PdfSouthLatitudeDeg : access Double;
      PdfEastLongitudeDeg : access Double;
      PdfNorthLatitudeDeg : access Double;
      PpszAreaName        : System.Address) return Int  -- ../ogr_srs_api.h:612
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetAreaOfUse";

   function OSRSetProjection (Arg1 : OGRSpatialReferenceH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return OGRErr  -- ../ogr_srs_api.h:619
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetProjection";

   function OSRSetProjParm
     (Arg1 : OGRSpatialReferenceH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Double) return OGRErr  -- ../ogr_srs_api.h:620
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetProjParm";

   function OSRGetProjParm
     (HSRS         : OGRSpatialReferenceH;
      PszParamName : Interfaces.C.Strings.Chars_Ptr;
      DfDefault    : Double;
      Arg4         : access OGRErr) return Double  -- ../ogr_srs_api.h:621
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetProjParm";

   function OSRSetNormProjParm
     (Arg1 : OGRSpatialReferenceH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Double) return OGRErr  -- ../ogr_srs_api.h:625
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetNormProjParm";

   function OSRGetNormProjParm
     (HSRS         : OGRSpatialReferenceH;
      PszParamName : Interfaces.C.Strings.Chars_Ptr;
      DfDefault    : Double;
      Arg4         : access OGRErr) return Double  -- ../ogr_srs_api.h:626
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetNormProjParm";

   function OSRSetUTM
     (HSRS   : OGRSpatialReferenceH;
      NZone  : Int;
      BNorth : Int) return OGRErr  -- ../ogr_srs_api.h:631
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetUTM";

   function OSRGetUTMZone (HSRS : OGRSpatialReferenceH; PbNorth : access Int) return Int  -- ../ogr_srs_api.h:632
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetUTMZone";

   function OSRSetStatePlane
     (HSRS   : OGRSpatialReferenceH;
      NZone  : Int;
      BNAD83 : Int) return OGRErr  -- ../ogr_srs_api.h:633
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetStatePlane";

   function OSRSetStatePlaneWithUnits
     (HSRS                : OGRSpatialReferenceH;
      NZone               : Int;
      BNAD83              : Int;
      PszOverrideUnitName : Interfaces.C.Strings.Chars_Ptr;
      DfOverrideUnit      : Double) return OGRErr  -- ../ogr_srs_api.h:635
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetStatePlaneWithUnits";

   function OSRAutoIdentifyEPSG (HSRS : OGRSpatialReferenceH) return OGRErr  -- ../ogr_srs_api.h:639
     with Import => True, 
     Convention => C, 
     External_Name => "OSRAutoIdentifyEPSG";

   function OSRFindMatches
     (HSRS                : OGRSpatialReferenceH;
      PapszOptions        : System.Address;
      PnEntries           : access Int;
      PpanMatchConfidence : System.Address) return System.Address  -- ../ogr_srs_api.h:641
     with Import => True, 
     Convention => C, 
     External_Name => "OSRFindMatches";

   procedure OSRFreeSRSArray (PahSRS : System.Address)  -- ../ogr_srs_api.h:645
     with Import => True, 
     Convention => C, 
     External_Name => "OSRFreeSRSArray";

   function OSREPSGTreatsAsLatLong (HSRS : OGRSpatialReferenceH) return Int  -- ../ogr_srs_api.h:647
     with Import => True, 
     Convention => C, 
     External_Name => "OSREPSGTreatsAsLatLong";

   function OSREPSGTreatsAsNorthingEasting (HSRS : OGRSpatialReferenceH) return Int  -- ../ogr_srs_api.h:648
     with Import => True, 
     Convention => C, 
     External_Name => "OSREPSGTreatsAsNorthingEasting";

   function OSRGetAxis
     (HSRS          : OGRSpatialReferenceH;
      PszTargetKey  : Interfaces.C.Strings.Chars_Ptr;
      IAxis         : Int;
      PeOrientation : access OGRAxisOrientation) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_srs_api.h:649
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetAxis";

   function OSRGetAxesCount (HSRS : OGRSpatialReferenceH) return Int  -- ../ogr_srs_api.h:652
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetAxesCount";

   function OSRSetAxes
     (HSRS              : OGRSpatialReferenceH;
      PszTargetKey      : Interfaces.C.Strings.Chars_Ptr;
      PszXAxisName      : Interfaces.C.Strings.Chars_Ptr;
      EXAxisOrientation : OGRAxisOrientation;
      PszYAxisName      : Interfaces.C.Strings.Chars_Ptr;
      EYAxisOrientation : OGRAxisOrientation) return OGRErr  -- ../ogr_srs_api.h:653
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetAxes";

   type OSRAxisMappingStrategy is 
     (OAMS_TRADITIONAL_GIS_ORDER,
      OAMS_AUTHORITY_COMPLIANT,
      OAMS_CUSTOM)
     with Convention => C;  -- ../ogr_srs_api.h:666

   function OSRGetAxisMappingStrategy (HSRS : OGRSpatialReferenceH) return OSRAxisMappingStrategy  -- ../ogr_srs_api.h:668
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetAxisMappingStrategy";

   procedure OSRSetAxisMappingStrategy (HSRS : OGRSpatialReferenceH; Strategy : OSRAxisMappingStrategy)  -- ../ogr_srs_api.h:670
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetAxisMappingStrategy";

   function OSRGetDataAxisToSRSAxisMapping (HSRS : OGRSpatialReferenceH; PnCount : access Int) return access Int  -- ../ogr_srs_api.h:673
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetDataAxisToSRSAxisMapping";

   function OSRSetDataAxisToSRSAxisMapping
     (HSRS         : OGRSpatialReferenceH;
      NMappingSize : Int;
      PanMapping   : access Int) return OGRErr  -- ../ogr_srs_api.h:675
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetDataAxisToSRSAxisMapping";

   function OSRSetACEA
     (HSRS            : OGRSpatialReferenceH;
      DfStdP1         : Double;
      DfStdP2         : Double;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:680
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetACEA";

   function OSRSetAE
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:685
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetAE";

   function OSRSetBonne
     (HSRS               : OGRSpatialReferenceH;
      DfStandardParallel : Double;
      DfCentralMeridian  : Double;
      DfFalseEasting     : Double;
      DfFalseNorthing    : Double) return OGRErr  -- ../ogr_srs_api.h:689
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetBonne";

   function OSRSetCEA
     (HSRS              : OGRSpatialReferenceH;
      DfStdP1           : Double;
      DfCentralMeridian : Double;
      DfFalseEasting    : Double;
      DfFalseNorthing   : Double) return OGRErr  -- ../ogr_srs_api.h:694
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetCEA";

   function OSRSetCS
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:698
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetCS";

   function OSRSetEC
     (HSRS            : OGRSpatialReferenceH;
      DfStdP1         : Double;
      DfStdP2         : Double;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:702
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetEC";

   function OSRSetEckert
     (HSRS              : OGRSpatialReferenceH;
      NVariation        : Int;
      DfCentralMeridian : Double;
      DfFalseEasting    : Double;
      DfFalseNorthing   : Double) return OGRErr  -- ../ogr_srs_api.h:707
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetEckert";

   function OSRSetEckertIV
     (HSRS              : OGRSpatialReferenceH;
      DfCentralMeridian : Double;
      DfFalseEasting    : Double;
      DfFalseNorthing   : Double) return OGRErr  -- ../ogr_srs_api.h:712
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetEckertIV";

   function OSRSetEckertVI
     (HSRS              : OGRSpatialReferenceH;
      DfCentralMeridian : Double;
      DfFalseEasting    : Double;
      DfFalseNorthing   : Double) return OGRErr  -- ../ogr_srs_api.h:716
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetEckertVI";

   function OSRSetEquirectangular
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:720
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetEquirectangular";

   function OSRSetEquirectangular2
     (HSRS                 : OGRSpatialReferenceH;
      DfCenterLat          : Double;
      DfCenterLong         : Double;
      DfPseudoStdParallel1 : Double;
      DfFalseEasting       : Double;
      DfFalseNorthing      : Double) return OGRErr  -- ../ogr_srs_api.h:725
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetEquirectangular2";

   function OSRSetGS
     (HSRS              : OGRSpatialReferenceH;
      DfCentralMeridian : Double;
      DfFalseEasting    : Double;
      DfFalseNorthing   : Double) return OGRErr  -- ../ogr_srs_api.h:732
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetGS";

   function OSRSetGH
     (HSRS              : OGRSpatialReferenceH;
      DfCentralMeridian : Double;
      DfFalseEasting    : Double;
      DfFalseNorthing   : Double) return OGRErr  -- ../ogr_srs_api.h:736
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetGH";

   function OSRSetIGH (HSRS : OGRSpatialReferenceH) return OGRErr  -- ../ogr_srs_api.h:740
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetIGH";

   function OSRSetGEOS
     (HSRS              : OGRSpatialReferenceH;
      DfCentralMeridian : Double;
      DfSatelliteHeight : Double;
      DfFalseEasting    : Double;
      DfFalseNorthing   : Double) return OGRErr  -- ../ogr_srs_api.h:743
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetGEOS";

   function OSRSetGaussSchreiberTMercator
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfScale         : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:748
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetGaussSchreiberTMercator";

   function OSRSetGnomonic
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:754
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetGnomonic";

   function OSRSetHOM
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfAzimuth       : Double;
      DfRectToSkew    : Double;
      DfScale         : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:768
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetHOM";

   function OSRSetHOMAC
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfAzimuth       : Double;
      DfRectToSkew    : Double;
      DfScale         : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:774
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetHOMAC";

   function OSRSetHOM2PNO
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfLat1          : Double;
      DfLong1         : Double;
      DfLat2          : Double;
      DfLong2         : Double;
      DfScale         : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:782
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetHOM2PNO";

   function OSRSetIWMPolyconic
     (HSRS            : OGRSpatialReferenceH;
      DfLat1          : Double;
      DfLat2          : Double;
      DfCenterLong    : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:789
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetIWMPolyconic";

   function OSRSetKrovak
     (HSRS                   : OGRSpatialReferenceH;
      DfCenterLat            : Double;
      DfCenterLong           : Double;
      DfAzimuth              : Double;
      DfPseudoStdParallelLat : Double;
      DfScale                : Double;
      DfFalseEasting         : Double;
      DfFalseNorthing        : Double) return OGRErr  -- ../ogr_srs_api.h:796
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetKrovak";

   function OSRSetLAEA
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:803
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetLAEA";

   function OSRSetLCC
     (HSRS            : OGRSpatialReferenceH;
      DfStdP1         : Double;
      DfStdP2         : Double;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:808
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetLCC";

   function OSRSetLCC1SP
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfScale         : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:814
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetLCC1SP";

   function OSRSetLCCB
     (HSRS            : OGRSpatialReferenceH;
      DfStdP1         : Double;
      DfStdP2         : Double;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:820
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetLCCB";

   function OSRSetMC
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:826
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetMC";

   function OSRSetMercator
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfScale         : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:831
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetMercator";

   function OSRSetMercator2SP
     (HSRS            : OGRSpatialReferenceH;
      DfStdP1         : Double;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:837
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetMercator2SP";

   function OSRSetMollweide
     (HSRS              : OGRSpatialReferenceH;
      DfCentralMeridian : Double;
      DfFalseEasting    : Double;
      DfFalseNorthing   : Double) return OGRErr  -- ../ogr_srs_api.h:843
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetMollweide";

   function OSRSetNZMG
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:849
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetNZMG";

   function OSRSetOS
     (HSRS            : OGRSpatialReferenceH;
      DfOriginLat     : Double;
      DfCMeridian     : Double;
      DfScale         : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:854
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetOS";

   function OSRSetOrthographic
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:860
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetOrthographic";

   function OSRSetPolyconic
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:866
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetPolyconic";

   function OSRSetPS
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfScale         : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:871
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetPS";

   function OSRSetRobinson
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLong    : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:877
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetRobinson";

   function OSRSetSinusoidal
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLong    : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:882
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetSinusoidal";

   function OSRSetStereographic
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfScale         : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:888
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetStereographic";

   function OSRSetSOC
     (HSRS               : OGRSpatialReferenceH;
      DfLatitudeOfOrigin : Double;
      DfCentralMeridian  : Double;
      DfFalseEasting     : Double;
      DfFalseNorthing    : Double) return OGRErr  -- ../ogr_srs_api.h:895
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetSOC";

   function OSRSetTM
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfScale         : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:905
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetTM";

   function OSRSetTMVariant
     (HSRS            : OGRSpatialReferenceH;
      PszVariantName  : Interfaces.C.Strings.Chars_Ptr;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfScale         : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:911
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetTMVariant";

   function OSRSetTMG
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:918
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetTMG";

   function OSRSetTMSO
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLat     : Double;
      DfCenterLong    : Double;
      DfScale         : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:923
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetTMSO";

   function OSRSetTPED
     (HSRS            : OGRSpatialReferenceH;
      DfLat1          : Double;
      DfLong1         : Double;
      DfLat2          : Double;
      DfLong2         : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:929
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetTPED";

   function OSRSetVDG
     (HSRS            : OGRSpatialReferenceH;
      DfCenterLong    : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:935
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetVDG";

   function OSRSetWagner
     (HSRS            : OGRSpatialReferenceH;
      NVariation      : Int;
      DfCenterLat     : Double;
      DfFalseEasting  : Double;
      DfFalseNorthing : Double) return OGRErr  -- ../ogr_srs_api.h:940
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetWagner";

   function OSRSetQSC
     (HSRS         : OGRSpatialReferenceH;
      DfCenterLat  : Double;
      DfCenterLong : Double) return OGRErr  -- ../ogr_srs_api.h:946
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetQSC";

   function OSRSetSCH
     (HSRS         : OGRSpatialReferenceH;
      DfPegLat     : Double;
      DfPegLong    : Double;
      DfPegHeading : Double;
      DfPegHgt     : Double) return OGRErr  -- ../ogr_srs_api.h:950
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetSCH";

   function OSRSetVerticalPerspective
     (HSRS               : OGRSpatialReferenceH;
      DfTopoOriginLat    : Double;
      DfTopoOriginLon    : Double;
      DfTopoOriginHeight : Double;
      DfViewPointHeight  : Double;
      DfFalseEasting     : Double;
      DfFalseNorthing    : Double) return OGRErr  -- ../ogr_srs_api.h:955
     with Import => True, 
     Convention => C, 
     External_Name => "OSRSetVerticalPerspective";

   function OSRCalcInvFlattening (DfSemiMajor : Double; DfSemiMinor : Double) return Double  -- ../ogr_srs_api.h:963
     with Import => True, 
     Convention => C, 
     External_Name => "OSRCalcInvFlattening";

   function OSRCalcSemiMinorFromInvFlattening (DfSemiMajor : Double; DfInvFlattening : Double) return Double  -- ../ogr_srs_api.h:964
     with Import => True, 
     Convention => C, 
     External_Name => "OSRCalcSemiMinorFromInvFlattening";

   procedure OSRCleanup  -- ../ogr_srs_api.h:966
     with Import => True, 
     Convention => C, 
     External_Name => "OSRCleanup";

   type OSRCRSType is 
     (OSR_CRS_TYPE_GEOGRAPHIC_2D,
      OSR_CRS_TYPE_GEOGRAPHIC_3D,
      OSR_CRS_TYPE_GEOCENTRIC,
      OSR_CRS_TYPE_PROJECTED,
      OSR_CRS_TYPE_VERTICAL,
      OSR_CRS_TYPE_COMPOUND,
      OSR_CRS_TYPE_OTHER)
     with Convention => C;  -- ../ogr_srs_api.h:985

   type OSRCRSInfo is record
      PszAuthName         : Interfaces.C.Strings.Chars_Ptr;  -- ../ogr_srs_api.h:995
      PszCode             : Interfaces.C.Strings.Chars_Ptr;  -- ../ogr_srs_api.h:997
      PszName             : Interfaces.C.Strings.Chars_Ptr;  -- ../ogr_srs_api.h:999
      EType               : aliased OSRCRSType;  -- ../ogr_srs_api.h:1001
      BDeprecated         : aliased Int;  -- ../ogr_srs_api.h:1003
      BBboxValid          : aliased Int;  -- ../ogr_srs_api.h:1006
      DfWestLongitudeDeg  : aliased Double;  -- ../ogr_srs_api.h:1008
      DfSouthLatitudeDeg  : aliased Double;  -- ../ogr_srs_api.h:1010
      DfEastLongitudeDeg  : aliased Double;  -- ../ogr_srs_api.h:1012
      DfNorthLatitudeDeg  : aliased Double;  -- ../ogr_srs_api.h:1014
      PszAreaName         : Interfaces.C.Strings.Chars_Ptr;  -- ../ogr_srs_api.h:1016
      PszProjectionMethod : Interfaces.C.Strings.Chars_Ptr;  -- ../ogr_srs_api.h:1019
   end record
     with Convention => C_Pass_By_Copy;  -- ../ogr_srs_api.h:1020

   type OSRCRSListParameters is null record;   -- incomplete struct

   function OSRGetCRSInfoListFromDatabase
     (PszAuthName      : Interfaces.C.Strings.Chars_Ptr;
      Params           : access constant OSRCRSListParameters;
      PnOutResultCount : access Int) return System.Address  -- ../ogr_srs_api.h:1028
     with Import => True, 
     Convention => C, 
     External_Name => "OSRGetCRSInfoListFromDatabase";

   procedure OSRDestroyCRSInfoList (List : System.Address)  -- ../ogr_srs_api.h:1033
     with Import => True, 
     Convention => C, 
     External_Name => "OSRDestroyCRSInfoList";

   function OCTNewCoordinateTransformation (HSourceSRS : OGRSpatialReferenceH; HTargetSRS : OGRSpatialReferenceH) return OGRCoordinateTransformationH  -- ../ogr_srs_api.h:1040
     with Import => True, 
     Convention => C, 
     External_Name => "OCTNewCoordinateTransformation";

   type OGRCoordinateTransformationOptions is null record;   -- incomplete struct

   type OGRCoordinateTransformationOptionsH is access all OGRCoordinateTransformationOptions;  -- ../ogr_srs_api.h:1044

   function OCTNewCoordinateTransformationOptions return OGRCoordinateTransformationOptionsH  -- ../ogr_srs_api.h:1046
     with Import => True, 
     Convention => C, 
     External_Name => "OCTNewCoordinateTransformationOptions";

   function OCTCoordinateTransformationOptionsSetOperation
     (HOptions   : OGRCoordinateTransformationOptionsH;
      PszCO      : Interfaces.C.Strings.Chars_Ptr;
      BReverseCO : Int) return Int  -- ../ogr_srs_api.h:1048
     with Import => True, 
     Convention => C, 
     External_Name => "OCTCoordinateTransformationOptionsSetOperation";

   function OCTCoordinateTransformationOptionsSetAreaOfInterest
     (HOptions           : OGRCoordinateTransformationOptionsH;
      DfWestLongitudeDeg : Double;
      DfSouthLatitudeDeg : Double;
      DfEastLongitudeDeg : Double;
      DfNorthLatitudeDeg : Double) return Int  -- ../ogr_srs_api.h:1052
     with Import => True, 
     Convention => C, 
     External_Name => "OCTCoordinateTransformationOptionsSetAreaOfInterest";

   function OCTCoordinateTransformationOptionsSetDesiredAccuracy (HOptions : OGRCoordinateTransformationOptionsH; DfAccuracy : Double) return Int  -- ../ogr_srs_api.h:1059
     with Import => True, 
     Convention => C, 
     External_Name => "OCTCoordinateTransformationOptionsSetDesiredAccuracy";

   function OCTCoordinateTransformationOptionsSetBallparkAllowed (HOptions : OGRCoordinateTransformationOptionsH; BAllowBallpark : Int) return Int  -- ../ogr_srs_api.h:1062
     with Import => True, 
     Convention => C, 
     External_Name => "OCTCoordinateTransformationOptionsSetBallparkAllowed";

   procedure OCTDestroyCoordinateTransformationOptions (Arg1 : OGRCoordinateTransformationOptionsH)  -- ../ogr_srs_api.h:1065
     with Import => True, 
     Convention => C, 
     External_Name => "OCTDestroyCoordinateTransformationOptions";

   function OCTNewCoordinateTransformationEx
     (HSourceSRS : OGRSpatialReferenceH;
      HTargetSRS : OGRSpatialReferenceH;
      HOptions   : OGRCoordinateTransformationOptionsH) return OGRCoordinateTransformationH  -- ../ogr_srs_api.h:1068
     with Import => True, 
     Convention => C, 
     External_Name => "OCTNewCoordinateTransformationEx";

   procedure OCTDestroyCoordinateTransformation (Arg1 : OGRCoordinateTransformationH)  -- ../ogr_srs_api.h:1073
     with Import => True, 
     Convention => C, 
     External_Name => "OCTDestroyCoordinateTransformation";

   function OCTTransform
     (HCT    : OGRCoordinateTransformationH;
      NCount : Int;
      X      : access Double;
      Y      : access Double;
      Z      : access Double) return Int  -- ../ogr_srs_api.h:1076
     with Import => True, 
     Convention => C, 
     External_Name => "OCTTransform";

   function OCTTransformEx
     (HCT        : OGRCoordinateTransformationH;
      NCount     : Int;
      X          : access Double;
      Y          : access Double;
      Z          : access Double;
      PabSuccess : access Int) return Int  -- ../ogr_srs_api.h:1080
     with Import => True, 
     Convention => C, 
     External_Name => "OCTTransformEx";

   function OCTTransform4D
     (HCT        : OGRCoordinateTransformationH;
      NCount     : Int;
      X          : access Double;
      Y          : access Double;
      Z          : access Double;
      T          : access Double;
      PabSuccess : access Int) return Int  -- ../ogr_srs_api.h:1085
     with Import => True, 
     Convention => C, 
     External_Name => "OCTTransform4D";

   function OCTTransform4DWithErrorCodes
     (HCT           : OGRCoordinateTransformationH;
      NCount        : Int;
      X             : access Double;
      Y             : access Double;
      Z             : access Double;
      T             : access Double;
      PanErrorCodes : access Int) return Int  -- ../ogr_srs_api.h:1090
     with Import => True, 
     Convention => C, 
     External_Name => "OCTTransform4DWithErrorCodes";

end Gdalada.OGR_SRS;
