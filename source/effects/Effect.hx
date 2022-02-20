package effects;

class Effect {
    /**
     * the array that contains the "player's" current effects.
     */
    private static var activeEffects = new Array<Effect>();

    private static var effects = new Array<Effect>();

    public static function getEffects():Array<Effect> {
        return effects;
    }

    public function getVerb() {
        return "affected";
    }

    /**
     * the constructor for the Effect superclass. it must be kept private
     * to prevent instantiation of this class. instantiation must not be
     * allowed, because this classes sole purpose is to be extended
     * (inherited) from.
     */
    private function new(newEffect:Effect) {
        effects.push(newEffect);
    }

    /**
     * this function returns a nice readable name for any effect that extends
     * this class.
     * @return String
     */
    public function getName() {
        return "effect";
    }

    /**
     * this function returns the array of active effects that are currently
     * applied to the player.
     * @return Array<Effect>
     */
    static public function getActive():Array<Effect> {
        return activeEffects;
    }


    /**
     * this function utilises the effect parameter to define the effect
     * which will be applied to the player, and uses the verb parameter
     * to provide a gramatically correct message to show the user when
     * the effect is applied.
     * @param effect 
     * @param verb 
     */
    static public function apply(effect:Effect) {
        activeEffects.push(effect);
    }

    /**
     * this function uses the effect parameter to define the effect that
     * should be alleviated (removed) from the player (by removing it from
     * the array of active effects).
     * @param effect 
     */
    static public function alleviate(effect:Effect) {
        if (activeEffects.remove(effect)) {
            Sys.println("you have been alleviated of: " + effect.getName() + ".");
        } else {
            Sys.println("you did not have " + effect.getName() + " on you anyway.");
        }
    }

    /**
     * this function prints a readable string of the active effects that are
     * applied to the user.
     */
    static public function showActive() {
        var readableList = "";
        var i = 0;
        if (activeEffects.length == 0) {
            Sys.println("you have no effects on you right now.");
        }
        for (effect in activeEffects) {
            if (i == 0) {
                readableList = effect.getName();
                i++;
                continue;
            }
            if (i == activeEffects.length - 1) {
                readableList = readableList + ", " + effect.getName() + ".";
                i++;
                continue;
            }
            readableList = readableList + ", " + effect.getName();
            i++;
        }
        Sys.println("you currently have these effects: " + readableList);
    }
}