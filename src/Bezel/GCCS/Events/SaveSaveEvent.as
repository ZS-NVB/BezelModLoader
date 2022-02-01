package Bezel.GCCS.Events
{
    /**
	 * ...
	 * @author piepie62
	 */
	
	import flash.events.Event;
	import com.giab.games.gccs.steam.struct.PlayerProgressData;

	public class SaveSaveEvent extends Event
	{
		
		private var _save:PlayerProgressData;

        public function get save():PlayerProgressData
		{
			return _save;
		}
		
		public override function clone():Event
		{
			return new SaveSaveEvent(save, type, bubbles, cancelable);
		}

		public function SaveSaveEvent(save:PlayerProgressData, type:String, bubbles:Boolean=false, cancelable:Boolean=false) 
		{
			super(type, bubbles, cancelable);

            this._save = save;
		}
	}
}