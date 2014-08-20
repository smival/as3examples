package events 
{
import starling.events.Event;

	public class AppEvent extends Event
	{
        public static const VIEW_CHANGE:String = "view_change";
        public static const GAME_START_CLICK:String = "game_start_click";

		public function AppEvent(type:String, data:Object = null)
		{
            super(type, true, data)
		}

		public function clone():Event
		{
			return new AppEvent(type, data);
		}
	}

}