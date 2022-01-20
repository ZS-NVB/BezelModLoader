package Bezel.GCFW
{
    import flash.display.MovieClip;
    import flash.text.TextField;
    import flash.text.TextFormat;
    import flash.utils.getDefinitionByName;

    /**
     * ...
     * @author Chris
     */
    internal class SettingsButtonShim extends MovieClip
    {
        public var tf:TextField;
        public var plate:MovieClip;
        public var yReal:Number;

        public function SettingsButtonShim(template:Object)
        {
            this.tf = new TextField();
            this.tf.text = "aaa";
            this.tf.setTextFormat(template.tf.getTextFormat());
            this.tf.defaultTextFormat = template.tf.getTextFormat();
            this.tf.y = template.tf.y;
            this.tf.selectable = false;

            this.plate = new (getDefinitionByName("GemCraftFrostbornWrath_fla.btnplate160x34_24") as Class)();

            this.addChild(this.plate);
            this.plate.scaleX = this.plate.scaleY = 1.5;
            this.addChild(this.tf);
            this.tf.width = this.plate.width;
            this.tf.visible = true;
        }
    }
}