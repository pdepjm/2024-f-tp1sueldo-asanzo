-- Apellido y nombre: 

module Library where
import PdePreludat

sueldo cargo antig horas = base cargo * porcAntig antig * proporcionalidad horas

base "titular" = 149000
base "adjunto" = 116000
base "ayudante" = 66000

porcAntig antig | antig < 3 = 1
    | antig < 5 = 1.2
    | antig < 10 = 1.3
    | antig < 24 = 1.5
    | otherwise = 2.2

proporcionalidad horas = round (horas / 10)
