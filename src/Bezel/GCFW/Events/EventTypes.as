package Bezel.GCFW.Events
{
	import flash.errors.IllegalOperationError;

	/**
	 * Event types for use mainly with GCFW and GCCS. Other MainLoaders may use these, too, but some may not apply
	 * @author Chris
	 */
	public class EventTypes
	{
		public static const INGAME_GEM_INFO_PANEL_FORMED:String = "ingameGemInfoPanelFormed";
		public static const INGAME_KEY_DOWN:String = "ingameKeyDown";
		public static const INGAME_PRE_RENDER_INFO_PANEL:String = "ingamePreRenderInfoPanel";
		public static const INGAME_CLICK_ON_SCENE:String = "ingameClickOnScene";
		public static const INGAME_RIGHT_CLICK_ON_SCENE:String = "ingameRightClickOnScene";
		public static const LOAD_SAVE:String = "loadSave";
		public static const SAVE_SAVE:String = "saveSave";
		public static const INGAME_NEW_SCENE:String = "ingameNewScene";

		public function EventTypes()
		{
			throw new IllegalOperationError("Illegal instantiation!");
		}

	}

}
