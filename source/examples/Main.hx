package examples;

import effects.*;

class Main {
    static public function main() {
        /**
         * this might be bad, but the way i configured each effect is
         * that they get registered as "available effects" to the Effect
         * superclass once they are constructed, so we're just gonna
         * call each constructor of each effect instead of actually
         * using the instance that is created. before, we did actually
         * pass the new instance of whatever effect to Effect.apply(),
         * but i changed it (probably for the worse...).
         */
        new Blindness();
        new Weakness();
        new Strength();
        new NightVision();
        new Poison();

        while (true) {
            Sys.println("");
            Sys.println("what would you like to do?");
            Sys.println("1: show currently applied effects");
            Sys.println("2: apply an effect");
            Sys.println("3: alleviate an effect");
            Sys.println("exit: terminates the program");
            Sys.print("choice>");
            var choice = Sys.stdin().readLine();
            Sys.println("");
            switch (choice) {
                case "1":
                    Effect.showActive();
                case "2":
                    Sys.println("choose an effect to apply.");
                    var n = 1;
                    var effects = Effect.getEffects();
                    for (effect in effects) {
                        Sys.println(Std.string(n) + ": " + effect.getName());
                        n++;
                    }
                    Sys.print("choice>");
                    var effectNumber = Sys.stdin().readLine();
                    Sys.println("");
                    switch (effectNumber) {
                        case "1":
                            Effect.apply(effects[Std.parseInt(effectNumber) - 1]);
                        case "2":
                            Effect.apply(effects[Std.parseInt(effectNumber) - 1]);
                        case "3":
                            Effect.apply(effects[Std.parseInt(effectNumber) - 1]);
                        case "4":
                            Effect.apply(effects[Std.parseInt(effectNumber) - 1]);
                        case "5":
                            Effect.apply(effects[Std.parseInt(effectNumber) - 1]);
                        case _:
                            continue;
                    }
                case "3":
                    var activeEffects = Effect.getActive();
                    if (activeEffects.length == 0) {
                        Sys.println("you do not have any effects applied to you right now.");
                        continue;
                    }
                    Sys.println("choose an effect to alleviate.");
                    var n = 1;
                    for (effect in activeEffects) {
                        Sys.println(Std.string(n) + ": " + effect.getName());
                        n++;
                    }
                    Sys.print("choice>");
                    var effectNumber = Sys.stdin().readLine();
                    Sys.println("");
                    Effect.alleviate(activeEffects[Std.parseInt(effectNumber) - 1]);
                case "exit":
                    Sys.exit(0);
                case "quit":
                    Sys.exit(0);
                case _:
                    continue;
            }
        }
    }
}