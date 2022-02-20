package effects;

class Poison extends Effect {
    public function new() {
        super(this);
    }

    public override function getName() {
        return "poison";
    }

    public override function getVerb() {
        return "poisoned";
    }
}