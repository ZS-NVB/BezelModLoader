package Bezel 
{
	import flash.errors.IllegalOperationError;
	/**
	 * ...
	 * @author Hellrage
	 */
	public class BezelEvent 
	{
		public static const INGAME_GEM_INFO_PANEL_FORMED:String = "ingameGemInfoPanelFormed";
		public static const INGAME_KEY_DOWN:String = "ingameKeyDown";
		public static const INGAME_PRE_RENDER_INFO_PANEL:String = "ingamePreRenderInfoPanel";
		public static const INGAME_CLICK_ON_SCENE:String = "ingameClickOnScene";
		public static const INGAME_RIGHT_CLICK_ON_SCENE:String = "ingameRightClickOnScene";
		public static const LOAD_SAVE:String = "loadSave";
		public static const SAVE_SAVE:String = "saveSave";
		public static const INGAME_NEW_SCENE:String = "ingameNewScene";

		internal static const BEZEL_DONE_MOD_RELOAD:String = "bezelDoneReload";
		internal static const BEZEL_DONE_MOD_LOAD:String = "bezelDoneModLoad";
		
		public function BezelEvent() 
		{
			throw new IllegalOperationError("Illegal instantiation!");
		}
		
	}

}
