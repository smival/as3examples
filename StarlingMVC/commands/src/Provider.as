/**
 * Created by smival on 09.08.14.
 */
package
{
import com.creativebottle.starlingmvc.beans.BeanProvider;
import com.creativebottle.starlingmvc.commands.Command;

import commands.CmdGameStartClick;

import events.AppEvent;

public class Provider extends BeanProvider
{
    public function Provider()
    {
        beans = [
                new Model(),
                new Controller(),

                new Command(AppEvent.GAME_START_CLICK, CmdGameStartClick)
        ];
    }
}
}
