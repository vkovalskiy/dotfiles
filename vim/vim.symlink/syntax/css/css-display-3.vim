if !hlexists('cssDisplayProp')
  syn match cssFontProp contained "\<display-\(inside\|outside\|extras\|box\)\>"
  syn keyword cssFontAttr contained contents
  syn match cssFontAttr contained "\<\(block\|inline\)-level\>"
  syn match cssFontAttr contained "\<inline-list-item\>"
endif
