module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Planet -> Float -> Float
ageOn Mercury seconds = seconds / (0.2408467 * 31557600 )
ageOn Venus seconds = seconds / (0.61519726 * 31557600 )
ageOn Earth seconds =  seconds / 31557600 
ageOn Mars seconds = seconds / (1.8808158 * 31557600 )
ageOn Jupiter seconds = seconds / (11.862615 * 31557600 )
ageOn Saturn seconds =  seconds / (29.447498 * 31557600 ) 
ageOn Uranus seconds = seconds / (84.016846 * 31557600 )
ageOn Neptune seconds = seconds / (164.79132 * 31557600 )
