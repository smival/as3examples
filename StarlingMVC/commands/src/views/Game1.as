/**
 * Created by smival on 09.08.14.
 */
package views
{
import com.junkbyte.console.Cc;

import events.AppEvent;
import starling.display.Sprite;
import starling.events.Event;
import starling.events.TouchEvent;

public class Game1 extends Sprite
{
    [PostConstruct]
    public function init()
    {
	    Cc.info("Game 1 PostConstruct");

	    addStageHandler();
    }

    private function addStageHandler():void
    {
        stage.addEventListener(TouchEvent.TOUCH, onStageClick);
    }

    private function removeStageHandler():void
    {
        stage.removeEventListener(TouchEvent.TOUCH, onStageClick);
    }

    private function onStageClick(e:TouchEvent):void
    {
		dispatchEvent(new AppEvent(AppEvent.GAME_START_CLICK));
	    Cc.debug("stage TOUCH handler!");
    }
}
}
