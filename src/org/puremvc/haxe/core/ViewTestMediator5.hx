/* 
 PureMVC haXe Port by Marco Secchi <marco.secchi@puremvc.org>
 PureMVC - Copyright(c) 2006-08 Futurescale, Inc., Some rights reserved. 
 Your reuse is governed by the Creative Commons Attribution 3.0 License 
 */
package org.puremvc.haxe.core;

import org.puremvc.haxe.interfaces.IMediator;
import org.puremvc.haxe.interfaces.INotification;
import org.puremvc.haxe.patterns.mediator.Mediator;
	
/**
 * A Mediator class used by ViewTest.
 */
class ViewTestMediator5 extends Mediator
{
	/**
	 * The Mediator name
	 */
	public static var NAME: String = 'ViewTestMediator5';
				
	/**
	 * Constructor
	 */
	public function new( view: ViewTest )
	{
		super( NAME, view );
	}

	override public function listNotificationInterests(): Array<String>
	{
		return [ ViewTest.NOTE5 ];
	}

	override public function handleNotification( note: INotification ): Void
	{
		getViewTest().counter++;
	}

	public function getViewTest(): ViewTest
	{
		return viewComponent;
	}
}