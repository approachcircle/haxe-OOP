package effects;

class NightVision extends Effect {
    public function new() {
        super(this);
    }

    public override function getName() {
        return "night vision";
    }

    public override function getVerb() {
        return "given night vision";
    }
}