/**
 * Created by smival on 09.08.14.
 */
package
{
import com.creativebottle.starlingmvc.views.ViewManager;
import com.junkbyte.console.Cc;

import events.AppEvent;

import flash.utils.getTimer;

import starling.events.EventDispatcher;

import views.Game1;

public class Controller
{
    [Inject]
    public var gameModel:Model;
    [Inject]
    public var viewManager:ViewManager;
    [Dispatcher]
    public var d:EventDispatcher;

    [PostConstruct]
    public function onInit():void
    {
        Cc.info("Game Controller Init");
        viewManager.setView(Game1);
    }
}
}
