0

// system settings version.
Version:0.0 = "1"

//
// Audio
//

// Audio mix
AudioMix:0.0 = "0" // 0 to 9

// Adjusts the volume of the sound effects
EffectsVolume:0.0 = "1.000000" // 0.000000 to 1.000000

// Adjusts the volume of hit markers
HitMarkersVolume:0.0 = "1.000000" // 0.000000 to 1.000000

// Licensed Music Volume
LicensedMusicVolume:0.0 = "1.000000" // 0.000000 to 1.000000

// Adjusts the volume of the music
MusicVolume:0.0 = "1.000000" // 0.000000 to 1.000000

// Sets whether audio should be muted when the game window is out of focus
MuteAudioWhileOutOfFocus:0.0 = "false"

// Adjusts the volume of audio in Telescope (MOTD)
TelescopeVolume:0.0 = "1.000000" // 0.000000 to 1.000000

// Using push to talk to activate microphone.
VoicePushToTalk:0.0 = "true"

// Adjusts the volume for character dialogues and announcer voices
VoiceVolume:0.0 = "1.000000" // 0.000000 to 1.000000

// Adjusts overall volume of the game
Volume:0.0 = "1.000000" // 0.000000 to 1.000000

// War Tracks Volume
WarTracksVolume:0.0 = "1.000000" // 0.000000 to 1.000000

//
// Display
//

// Force specific aspect ratio independent of window aspect ratio
AspectRatio:0.0 = "auto" // one of [auto, standard, 5:4, wide 16:10, wide 16:9, wide 18:9, wide 19.5:9, wide 21:9, wide 32:9]

// Enables the async compute for specific cases
AsyncCompute:0.0 = "true"

// Constrain mouse to game window
ConstrainMouse:0.0 = "false"

// Color spaces for monitor output
DisplayGamma:0.0 = "BT709_sRGB" // one of [BT709_sRGB, BT709_BT1886]

// Fullscreen mode
DisplayMode:0.0 = "Windowed" // one of [Windowed, Fullscreen, Fullscreen borderless window, Fullscreen borderless extended window]

// Enable focused mode
FocusedMode:0.0 = "false"

// Set overlay opacity for the focused mode
FocusedModeOpacity:0.0 = "0.900000" // 0.000000 to 1.000000

// Monitor name of the monitor used to display the game
Monitor:0.0 = "Mi TV"

// Enable Nvidia low latency mode. Boost mode request maximum GPU clock frequency regardless of workload
NvidiaReflex:0.0 = "Disabled" // one of [Disabled, Enabled, Enabled + boost]

// Fullscreen mode preference
PreferredDisplayMode:0.0 = "Fullscreen" // one of [Windowed, Fullscreen, Fullscreen borderless window, Fullscreen borderless extended window]

// Refresh rate of used monitor
RefreshRate:0.0 = "Auto"

// Fullscreen Resolution
Resolution:0.0 = "1920x1080"

// Percentage of window resolution that the 3D scene renders at. value set by the user. can be smaller than the actual.
ResolutionMultiplier:0.0 = "100" // 0 to 200

// Synchronizes framerate with refresh rate to prevent screen tearing issues
VSync:0.0 = "0" // 0 to 4

// Vsync while in menus only
VSyncInMenu:0.0 = "false"

// Window height
WindowHeight:0.0 = "1061" // 0 to 32767

// Window is maximized on boot
WindowMaximized:0.0 = "false"

// Window width
WindowWidth:0.0 = "1920" // 0 to 32767

// Window X position
WindowX:0.0 = "0" // -32768 to 32767

// Window Y position
WindowY:0.0 = "0" // -32768 to 32767

//
// Gameplay
//

// Apply custom framerate limit
CapFps:0.0 = "true"

// Adds blur on out of focus areas when aiming down sights
DepthOfField:0.0 = "true"

// Adjusts the strength of the visual noise applied in-game
FilmGrain:0.0 = "0.250000" // 0.000000 to 1.000000

// Custom maximum frames per second when in a match
MaxFpsInGame:0.0 = "144" // 30 to 300

// Custom maximum frames per second when in menus
MaxFpsInMenu:1.0 = "30" // 30 to 300

// Custom maximum frames per second when game is out of focus
MaxFpsOutOfFocus:0.0 = "5" // 5 to 300

//
// Graphics
//

// User preferred anti-aliasing technique
AATechniquePreferred:0.0 = "Filmic SMAA T2x" // one of [SMAA T2x, Filmic SMAA T2x, DLSS, DLAA, XeSS]

// Strength for Contrast Adaptive Sharpening (CAS)
AMDContrastAdaptiveSharpeningStrength:0.0 = "0.200000" // 0.000000 to 1.000000

// Enable AMD FidelityFX Super Resolution
AMDSuperResolution:0.0 = "Off" // one of [Off, CAS - Sharpening only, AMD FSR 1.0]

// AMD FidelityFX Super Resolution quality
AMDSuperResolutionQuality:0.0 = "Maximum Quality" // one of [Maximum Performance, Balanced, Maximum Quality, Ultra Quality]

// Absolute target resolution
AbsoluteTargetResolution:0.0 = "none" // one of [540P, 640P, 720P, 900P, 1080P, 1440P, native, none]

// Show bullet impacts
BulletImpacts:0.0 = "true"

// The maximum distance at which clutter models are rendered.
ClutterMaxDist:0.0 = "5000.000000" // 100.000000 to 10000.000000

// Corpses culling threshold
CorpsesCullingThreshold:0.0 = "0.850000" // 0.500000 to 1.000000

// DLSS performance mode
DLSSPerfMode:0.0 = "Balanced" // one of [Ultra Performance, Maximum Performance, Balanced, Maximum Quality]

// DLSS Sharpness.
DLSSSharpness:0.0 = "0.650000" // -1.000000 to 1.000000

// Default SMAA technique
DefaultSMAATechnique:0.0 = "Filmic SMAA T2x" // one of [SMAA T2x, Filmic SMAA T2x]

// Enable deferred physics
DeferredPhysics:0.0 = "High Quality" // one of [Low Quality, Medium Quality, High Quality, Developer]

// Activate dynamic scene resolution
DynamicSceneResolution:0.0 = "false"

// Target frame time in ms for dynamic scene resolution.
DynamicSceneResolutionTarget:0.0 = "6.944445" // 0.000000 to 100.000000

// Strength of the filmic visual noise filter
FilmicStrength:0.0 = "1.000000" // 0.000000 to 1.000000

// Preferred GPU if multiple GPU system
GPUName:0.0 = "NVIDIA GeForce RTX 2060"

// GTAO Quality level
GTAOQuality:0.0 = "R_GTAO_QUALITY_ULTRA" // one of [R_GTAO_QUALITY_LOW, R_GTAO_QUALITY_MEDIUM, R_GTAO_QUALITY_HIGH, R_GTAO_QUALITY_ULTRA]

// Set HDR activation mode. Option only takes effect on HDR Display.
HDR:0.0 = "Off" // one of [Off, On, Automatic]

// LODs distance quality
ModelLodDistanceQuality:0.0 = "High Quality" // one of [High Quality, Base Quality]

// Models quality
ModelLodQuality:0.0 = "High quality" // one of [High quality, Base quality]

// Enable NVIDIA Image Scaling
NVIDIAImageScaling:0.0 = "true"

// NVIDIA Image Scaling quality
NVIDIAImageScalingQuality:0.0 = "Native Quality" // one of [Maximum Performance, Balanced, Maximum Quality, Ultra Quality, Custom, Native Quality]

// NVIDIA Image Scaling sharpness
NVIDIAImageScalingSharpness:0.0 = "0.300000" // 0.000000 to 1.000000

// Particle Lighting Quality
ParticleLighting:0.0 = "3" // 0 to 5

// Particle Quality quality level
ParticleQualityLevel:0.0 = "high" // one of [very low, low, medium, high]

// Particle Resolution quality level
ParticuleResolution:0.0 = "false"

// Enable persistent damage layer
PersistentDamageLayer:0.0 = "false"

// Particle Lighting quality level
PixelPerLightmapTexel:0.0 = "16.000000" // 1.000000 to 256.000000

// Enable half resolution reflection probes
ReflectionProbeHalfResolution:0.0 = "false"

// Reflection probe relighting update stages
ReflectionProbeRelighting:0.0 = "4" // 1 to 4

// SMAA Quality level
SMAAQuality:0.0 = "SMAA_QUALITY_ULTRA" // one of [SMAA_QUALITY_LOW, SMAA_QUALITY_MEDIUM, SMAA_QUALITY_HIGH, SMAA_QUALITY_ULTRA]

// Screen-space ambient occlusion method
SSAOTechnique:0.0 = "GTAO & MDAO" // one of [Off, GTAO, MDAO, GTAO & MDAO]

// Screen-space reflection mode
SSRMode:0.0 = "Deferred HQ" // one of [Off, Deferred LQ, Deferred HQ]

// Screen Space Shadow quality level
ScreenSpaceShadowQuality:0.0 = "High" // one of [Off, Low, High]

// Select the shader quality setting
ShaderQuality:0.0 = "Default" // one of [Default, Medium, Low]

// Shadow resolution quality level
ShadowMapResolution:1.0 = "High" // one of [Very Low, Low, Normal, High, Extra, Ultra]

// Adjust size of Spot Shadow Cache
SpotShadowCacheSize:0.0 = "2" // 0 to 3

// Quality level of spot shadow
SpotShadowQualityLevel:0.0 = "High" // one of [Low, Medium, High]

// Static sunshadow moment clipmap resolution
StaticSunshadowClipmapResolution:0.0 = "1024" // 0 to 2147483647

// Catmull Clark subdivision level
SubdivisionLevel:0.0 = "3" // 0 to 8

// Quality level of shadows from the sun at a distance
SunShadowCascade:0.0 = "Normal (2-3 cascades)" // one of [Low    (1 cascade), Normal (2-3 cascades)]

// Tessellation quality level
Tessellation:0.0 = "1_Near" // one of [0_Off, 1_Near, 2_All]

// Texture filtering quality level
TextureFilter:0.0 = "TEXTURE_FILTER_ANISO16X" // one of [TEXTURE_FILTER_NEAREST, TEXTURE_FILTER_LINEAR, TEXTURE_FILTER_ANISO2X, TEXTURE_FILTER_ANISO4X, TEXTURE_FILTER_ANISO8X, TEXTURE_FILTER_ANISO16X, TEXTURE_FILTER_CMP]

// Texture quality level, high to low ( higher number means lower resolution )
TextureQuality:0.0 = "0" // 0 to 3

// Ui Quality
UiQuality:0.0 = "Auto" // one of [1080P, 4K, Auto]

// Use large physical textures
VirtualTexturingLargeMemory:0.0 = "true"

// Volumetric quality
VolumetricQuality:0.0 = "QUALITY_HIGH" // one of [QUALITY_LOW, QUALITY_MEDIUM, QUALITY_HIGH]

// Select water caustics mode
WaterCausticsMode:0.0 = "Low Quality" // one of [Off, Low Quality, High Quality]

// Select weather grid volumes quality
WeatherGridVolumesQuality:0.0 = "Ultra" // one of [Ultra, High, Medium, Low, Off]

// World streaming quality option
WorldStreamingQuality:0.0 = "High" // one of [Low, High]

// XeSS quality
XeSSQuality:0.0 = "Balanced" // one of [Maximum Performance, Balanced, Maximum Quality, Ultra Quality, Custom]

//
// Interface
//

// Skip introduction movie that plays when game is started
SkipIntro:0.0 = "true"

//
// Mouse and Gamepad
//

// Set minimum delay in milliseconds between valid mouse wheel inputs
WeaponCycleDelay:0.0 = "0" // 0 to 5000

//
// System
//

// Allow campaign savegame to be synced in with the cloud
ConfigCloudSavegameEnabled:0.0 = "true"

// Allows non-hardware settings to be synced in with the cloud
ConfigCloudStorageEnabled:1.0 = "true"

// Indicates whether recommended settings have been set, will reset settings to recommended if set to 0
RecommendedSet:0.0 = "true"

// Thread count for handling the job queue
RendererWorkerCount:0.0 = "4" // -1 to 16

// Set a target fraction of your PC's video memory to be used by the game
VideoMemoryScale:0.0 = "0.850000" // 0.000000 to 2.000000

