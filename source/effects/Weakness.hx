package effects;

class Weakness extends Effect {
    public function new() {
        super(this);
    }

    public override function getName() {
        return "weakness";
    }

    public override function getVerb() {
        return "weakened";
    }
}