# Blocs Kitronik pour micro:bit

# Blocs pilotant la carte [Kitronik Servo-Lite pour micro:bit] (https://www.kitronik.co.uk/5623-servolite-board-for-move-mini.html)

## ServoLite

* tourner

```blocks
input.onButtonPressed(Button.A, () => {
    kitronik_servo_lite.turnRight(90);
})
```

* avancer

```blocks
input.onButtonPressed(Button.B, () => {
    kitronik_servo_lite.driveForwards(10);
})
```

*  arrêter les 2 moteurs quand on appuie sur ``A+B``

```blocks
input.onButtonPressed(Button.AB, () => {
    kitronik_servo_lite.stop();
})
```

## License

MIT

## Supported targets

* pour PXT/microbit
(Les metadonnées ci-dessous sont nécessaires pour la recherche de l'extension.)


```package
move-mini=github:flecleach/move-mini

```