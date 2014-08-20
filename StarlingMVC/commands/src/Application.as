package {

import com.junkbyte.console.Cc;

import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageDisplayState;
import flash.display.StageScaleMode;
import flash.events.Event;
import flash.events.FullScreenEvent;

import starling.core.Starling;

[SWF(frameRate="60", backgroundColor='#000000', width='800', height='500')]

public class Application extends Sprite
{
	private var _starling:Starling;

	public function Application()
	{
		// display mode
		stage.scaleMode = StageScaleMode.NO_SCALE;
		stage.align = StageAlign.TOP_LEFT;

		//stage.addEventListener(FullScreenEvent.FULL_SCREEN, displayStateOnChange);
		//displayStateOnChange();

		// init Console
		Cc.config.commandLineAllowed = true;
		Cc.config.style.backgroundAlpha = .7;
		Cc.startOnStage(this, "123");

		Cc.x = 10;
		Cc.y = 30;
		Cc.width = 300;
		Cc.height = 400;
		Cc.visible = true;

		// init Starling
		Starling.multitouchEnabled = true;
		_starling = new Starling(StarlingRoot, stage);
		_starling.showStats = true;
		_starling.start();
	}

	/*private function displayStateOnChange(e:Event = null):void
	{
		if (stage.displayState == StageDisplayState.NORMAL)
			stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
	}*/
}
}
