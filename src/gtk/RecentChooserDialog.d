/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkRecentChooserDialog.html
 * outPack = gtk
 * outFile = RecentChooserDialog
 * strct   = GtkRecentChooserDialog
 * realStrct=
 * ctorStrct=
 * clss    = RecentChooserDialog
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- RecentChooserIF
 * prefixes:
 * 	- gtk_recent_chooser_dialog_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * 	- gtk.Window
 * 	- gtk.RecentManager
 * 	- gtk.RecentInfo
 * 	- gtk.RecentFilter
 * 	- glib.ListG
 * 	- gobject.Signals
 * 	- gtk.RecentChooserIF
 * 	- gtk.RecentChooserT
 * structWrap:
 * 	- GtkRecentManager* -> RecentManager
 * 	- GtkWidget* -> Widget
 * 	- GtkWindow* -> Window
 * module aliases:
 * local aliases:
 */

module gtk.RecentChooserDialog;

public  import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gtk.Widget;
private import gtk.Window;
private import gtk.RecentManager;
private import gtk.RecentInfo;
private import gtk.RecentFilter;
private import glib.ListG;
private import gobject.Signals;
private import gtk.RecentChooserIF;
private import gtk.RecentChooserT;



private import gtk.Dialog;

/**
 * Description
 * GtkRecentChooserDialog is a dialog box suitable for displaying the recently
 * used documents. This widgets works by putting a GtkRecentChooserWidget inside
 * a GtkDialog. It exposes the GtkRecentChooserIface interface, so you can use
 * all the GtkRecentChooser functions on the recent chooser dialog as well as
 * those for GtkDialog.
 * Note that GtkRecentChooserDialog does not have any methods of its own.
 * Instead, you should use the functions that work on a GtkRecentChooser.
 * Recently used files are supported since GTK+ 2.10.
 */
public class RecentChooserDialog : Dialog, RecentChooserIF
{
	
	/** the main Gtk struct */
	protected GtkRecentChooserDialog* gtkRecentChooserDialog;
	
	
	public GtkRecentChooserDialog* getRecentChooserDialogStruct()
	{
		return gtkRecentChooserDialog;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkRecentChooserDialog;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkRecentChooserDialog* gtkRecentChooserDialog)
	{
		if(gtkRecentChooserDialog is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkRecentChooserDialog passed to constructor.");
			else return;
		}
		super(cast(GtkDialog*)gtkRecentChooserDialog);
		this.gtkRecentChooserDialog = gtkRecentChooserDialog;
	}
	
	// add the RecentChooser capabilities
	mixin RecentChooserT!(GtkRecentChooserDialog);
	
	/**
	 */
	
	/**
	 * Creates a new GtkRecentChooserDialog. This function is analogous to
	 * gtk_dialog_new_with_buttons().
	 * Since 2.10
	 * Params:
	 * title =  Title of the dialog, or NULL
	 * parent =  Transient parent of the dialog, or NULL,
	 * firstButtonText =  stock ID or text to go in the first button, or NULL
	 * ... =  response ID for the first button, then additional (button, id)
	 *  pairs, ending with NULL
	 */
	public this (char[] title, Window parent, char[] firstButtonText, ... )
	{
		// GtkWidget* gtk_recent_chooser_dialog_new (const gchar *title,  GtkWindow *parent,  const gchar *first_button_text,  ...);
		auto p = gtk_recent_chooser_dialog_new(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct(), Str.toStringz(firstButtonText));
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkRecentChooserDialog*) p);
	}
	
	/**
	 * Creates a new GtkRecentChooserDialog with a specified recent manager.
	 * This is useful if you have implemented your own recent manager, or if you
	 * have a customized instance of a GtkRecentManager object.
	 * Since 2.10
	 * Params:
	 * title =  Title of the dialog, or NULL
	 * parent =  Transient parent of the dialog, or NULL,
	 * manager =  a GtkRecentManager
	 * firstButtonText =  stock ID or text to go in the first button, or NULL
	 * ... =  response ID for the first button, then additional (button, id)
	 *  pairs, ending with NULL
	 */
	public this (char[] title, Window parent, RecentManager manager, char[] firstButtonText, ... )
	{
		// GtkWidget* gtk_recent_chooser_dialog_new_for_manager  (const gchar *title,  GtkWindow *parent,  GtkRecentManager *manager,  const gchar *first_button_text,  ...);
		auto p = gtk_recent_chooser_dialog_new_for_manager(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct(), (manager is null) ? null : manager.getRecentManagerStruct(), Str.toStringz(firstButtonText));
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkRecentChooserDialog*) p);
	}
}