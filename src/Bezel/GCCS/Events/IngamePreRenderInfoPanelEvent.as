package Bezel.GCCS.Events
{
	/**
	 * ...
	 * @author Hellrage
	 */

	import Bezel.GCCS.Events.Persistence.IngamePreRenderInfoPanelEventArgs;
	import flash.events.Event;

	public class IngamePreRenderInfoPanelEvent extends Event
	{
		private var _eventArgs:IngamePreRenderInfoPanelEventArgs;

		public function get eventArgs():IngamePreRenderInfoPanelEventArgs
		{
			return _eventArgs;
		}

		public override function clone():Event
		{
			return new IngamePreRenderInfoPanelEvent(type, eventArgs, bubbles, cancelable);
		}

		public function IngamePreRenderInfoPanelEvent(type:String, eventArgs:IngamePreRenderInfoPanelEventArgs, bubbles:Boolean = false, cancelable:Boolean = false)
		{
			super(type, bubbles, cancelable);
			this._eventArgs = eventArgs;
		}
	}
}
