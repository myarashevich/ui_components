package smart.components
{
	import smart.gui.components.SG_LayoutH;
	import smart.gui.components.SG_TextLabel;
	import smart.gui.components.SG_TextStyle;
	import smart.gui.constants.SG_Align;
	
	public class Component extends SG_LayoutH
	{
		protected var _id:String;
		protected var _object:Object;
		
		public function Component(id:String, name:String, panelsLayout:Layout, customLabelSize:int = -1)
		{
			_id = id;
			super(panelsLayout.spacingX, SG_Align.CENTER);
			
			var label:SG_TextLabel = createLabel(name, SG_Align.RIGHT, customLabelSize > 0 ? customLabelSize : panelsLayout.labelSize);
			addChild(label);
		}
		
		public static function createLabel(text:String, align:String, width:int = 150):SG_TextLabel
		{
			var label:SG_TextLabel = new SG_TextLabel(text, SG_TextStyle.label_medium, align);
			label.color = 0xC5C5C5;
			label.bold = true;
			label.width = width;
			return label;
		}
		
		public function setObject(object:Object):void
		{
			_object = object;
			
			if (_object.hasOwnProperty(_id))
			{
				setValue(_object[_id]);
			}
		}
		
		public function reset():void
		{
			saveValue();
		}
		
		public function random():void
		{
		}
		
		public function saveValue():void
		{
		}
		
		protected function setValue(value:*):void
		{
		}
	}
}
