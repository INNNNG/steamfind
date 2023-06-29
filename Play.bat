if not exist b: exit
type np.bat|findstr b:r &&copy np.bat np1.bat
type np1.bat|findstr b:r &&md b:np||md b:op
type np1.bat|findstr b:r &&call np1||call op