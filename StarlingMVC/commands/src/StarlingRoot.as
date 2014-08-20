/**
 * Created by smival on 09.08.14.
 */
package
{
import com.creativebottle.starlingmvc.StarlingMVC;
import com.creativebottle.starlingmvc.config.StarlingMVCConfig;
import com.creativebottle.starlingmvc.views.ViewManager;

import starling.display.Sprite;
import starling.events.Event;

/*import themes.MetalWorksMobileTheme;

import themes.MetalWorksMobileTheme;*/

public class StarlingRoot extends Sprite
{
    private var _mvc:StarlingMVC;
    //private var _theme:MetalWorksMobileTheme;

    public function StarlingRoot()
    {
       // _theme = new MetalWorksMobileTheme(stage, false);
        if (this.stage) this.init();
        else this.addEventListener(Event.ADDED_TO_STAGE, this.init);
    }

    public function init(e:Event = null):void
    {
        if (this.stage) this.removeEventListener(Event.ADDED_TO_STAGE, this.init);
        else return;

        // init MVC
        var beans:Array = [new Provider(), new ViewManager(this)];
        var conf:StarlingMVCConfig = new StarlingMVCConfig();
        conf.eventPackages = ["events"];
        conf.viewPackages = ["views"];
        _mvc = new StarlingMVC(this, conf, beans);
    }
}
}
