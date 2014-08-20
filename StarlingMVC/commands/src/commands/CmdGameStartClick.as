/**
 * Created by smival on 09.08.14.
 */
package commands
{
import com.junkbyte.console.Cc;

import events.AppEvent;

import flash.utils.getTimer;

import starling.events.EventDispatcher;

public class CmdGameStartClick
{
	[Dispatcher]
	public var dispatcher:EventDispatcher;

    [Inject]
    public var model:Model;

    [Execute]
    public function execute(event:AppEvent):void
    {
        Cc.info("CmdGameStartClick");

        model.gameStartTime = getTimer();
    }
}
}
