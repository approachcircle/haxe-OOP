package effects;

class Blindness extends Effect {
    public function new() {
        super(this);
    }

    public override function getName() {
        return "blindness";
    }

    public override function getVerb() {
        return "blinded";
    }
}