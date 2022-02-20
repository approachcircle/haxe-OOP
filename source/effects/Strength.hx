package effects;

class Strength extends Effect {
    public function new() {
        super(this);
    }

    public override function getName() {
        return "strength";
    }

    public override function getVerb() {
        return "strengthened";
    }
}