pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package cpl_minixml_h is

   type CPLXMLNodeType is 
     (CXT_Element,
      CXT_Text,
      CXT_Attribute,
      CXT_Comment,
      CXT_Literal)
   with Convention => C;  -- ../cpl_minixml.h:51

   type CPLXMLNode;
   type CPLXMLNode is record
      eType : aliased CPLXMLNodeType;  -- ../cpl_minixml.h:77
      pszValue : Interfaces.C.Strings.chars_ptr;  -- ../cpl_minixml.h:100
      psNext : access CPLXMLNode;  -- ../cpl_minixml.h:109
      psChild : access CPLXMLNode;  -- ../cpl_minixml.h:121
   end record
   with Convention => C_Pass_By_Copy;  -- ../cpl_minixml.h:69

   function CPLParseXMLString (arg1 : Interfaces.C.Strings.chars_ptr) return access CPLXMLNode  -- ../cpl_minixml.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "CPLParseXMLString";

   procedure CPLDestroyXMLNode (arg1 : access CPLXMLNode)  -- ../cpl_minixml.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "CPLDestroyXMLNode";

   function CPLGetXMLNode (poRoot : access CPLXMLNode; pszPath : Interfaces.C.Strings.chars_ptr) return access CPLXMLNode  -- ../cpl_minixml.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetXMLNode";

   function CPLSearchXMLNode (poRoot : access CPLXMLNode; pszTarget : Interfaces.C.Strings.chars_ptr) return access CPLXMLNode  -- ../cpl_minixml.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "CPLSearchXMLNode";

   function CPLGetXMLValue
     (poRoot : access constant CPLXMLNode;
      pszPath : Interfaces.C.Strings.chars_ptr;
      pszDefault : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_minixml.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetXMLValue";

   function CPLCreateXMLNode
     (poParent : access CPLXMLNode;
      eType : CPLXMLNodeType;
      pszText : Interfaces.C.Strings.chars_ptr) return access CPLXMLNode  -- ../cpl_minixml.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCreateXMLNode";

   function CPLSerializeXMLTree (psNode : access constant CPLXMLNode) return Interfaces.C.Strings.chars_ptr  -- ../cpl_minixml.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "CPLSerializeXMLTree";

   procedure CPLAddXMLChild (psParent : access CPLXMLNode; psChild : access CPLXMLNode)  -- ../cpl_minixml.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "CPLAddXMLChild";

   function CPLRemoveXMLChild (psParent : access CPLXMLNode; psChild : access CPLXMLNode) return int  -- ../cpl_minixml.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "CPLRemoveXMLChild";

   procedure CPLAddXMLSibling (psOlderSibling : access CPLXMLNode; psNewSibling : access CPLXMLNode)  -- ../cpl_minixml.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "CPLAddXMLSibling";

   function CPLCreateXMLElementAndValue
     (psParent : access CPLXMLNode;
      pszName : Interfaces.C.Strings.chars_ptr;
      pszValue : Interfaces.C.Strings.chars_ptr) return access CPLXMLNode  -- ../cpl_minixml.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCreateXMLElementAndValue";

   procedure CPLAddXMLAttributeAndValue
     (psParent : access CPLXMLNode;
      pszName : Interfaces.C.Strings.chars_ptr;
      pszValue : Interfaces.C.Strings.chars_ptr)  -- ../cpl_minixml.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "CPLAddXMLAttributeAndValue";

   function CPLCloneXMLTree (psTree : access constant CPLXMLNode) return access CPLXMLNode  -- ../cpl_minixml.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCloneXMLTree";

   function CPLSetXMLValue
     (psRoot : access CPLXMLNode;
      pszPath : Interfaces.C.Strings.chars_ptr;
      pszValue : Interfaces.C.Strings.chars_ptr) return int  -- ../cpl_minixml.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "CPLSetXMLValue";

   procedure CPLStripXMLNamespace
     (psRoot : access CPLXMLNode;
      pszNameSpace : Interfaces.C.Strings.chars_ptr;
      bRecurse : int)  -- ../cpl_minixml.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "CPLStripXMLNamespace";

   procedure CPLCleanXMLElementName (arg1 : Interfaces.C.Strings.chars_ptr)  -- ../cpl_minixml.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCleanXMLElementName";

   function CPLParseXMLFile (pszFilename : Interfaces.C.Strings.chars_ptr) return access CPLXMLNode  -- ../cpl_minixml.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "CPLParseXMLFile";

   function CPLSerializeXMLTreeToFile (psTree : access constant CPLXMLNode; pszFilename : Interfaces.C.Strings.chars_ptr) return int  -- ../cpl_minixml.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "CPLSerializeXMLTreeToFile";

end cpl_minixml_h;
