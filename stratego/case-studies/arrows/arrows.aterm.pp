Specification(
  [ Signature(
      [ Constructors(
          [ OpDecl("Nil", ConstType(Sort("List", [SortVar("a")])))
          , OpDecl(
              "Cons"
            , FunType(
                [ConstType(SortVar("a")), ConstType(Sort("List", [SortVar("a")]))]
              , ConstType(Sort("List", [SortVar("a")]))
              )
            )
          , OpDecl(
              "Conc"
            , FunType(
                [ ConstType(Sort("List", [SortVar("a")]))
                , ConstType(Sort("List", [SortVar("a")]))
                ]
              , ConstType(Sort("List", [SortVar("a")]))
              )
            )
          , OpDeclInj(ConstType(SortTuple([])))
          , OpDeclInj(
              FunType(
                [ConstType(SortVar("a"))]
              , ConstType(SortTuple([SortVar("a")]))
              )
            )
          , OpDeclInj(
              FunType(
                [ConstType(SortVar("a")), ConstType(SortVar("b"))]
              , ConstType(SortTuple([SortVar("a"), SortVar("b")]))
              )
            )
          , OpDeclInj(
              FunType(
                [ConstType(SortVar("a")), ConstType(SortVar("b")), ConstType(SortVar("c"))]
              , ConstType(
                  SortTuple([SortVar("a"), SortVar("b"), SortVar("c")])
                )
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Empty"))], ConstType(SortNoArgs("NoOffsideDeclListSem_Empty0")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideDeclListSem"))], ConstType(SortNoArgs("NoOffsideDeclListSem_Empty0")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Empty"))], ConstType(SortNoArgs("OffsideDeclList_Empty0")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("OffsideDeclList"))], ConstType(SortNoArgs("OffsideDeclList_Empty0")))
            )
          , OpDecl(
              "Conc"
            , FunType(
                [ConstType(SortNoArgs("ListStarOfCharClass0")), ConstType(SortNoArgs("ListPlusOfCharClass0"))]
              , ConstType(SortNoArgs("ListPlusOfCharClass0"))
              )
            )
          , OpDecl(
              "Conc"
            , FunType(
                [ConstType(SortNoArgs("ListPlusOfCharClass0")), ConstType(SortNoArgs("ListStarOfCharClass0"))]
              , ConstType(SortNoArgs("ListPlusOfCharClass0"))
              )
            )
          , OpDecl(
              "Conc"
            , FunType(
                [ConstType(SortNoArgs("ListPlusOfCharClass0")), ConstType(SortNoArgs("ListPlusOfCharClass0"))]
              , ConstType(SortNoArgs("ListPlusOfCharClass0"))
              )
            )
          , OpDecl(
              "Cons"
            , FunType(
                [ConstType(SortNoArgs("Int")), ConstType(SortNoArgs("ListStarOfCharClass0"))]
              , ConstType(SortNoArgs("ListPlusOfCharClass0"))
              )
            )
          , OpDecl(
              "StmtSeqOff"
            , FunType(
                [ConstType(SortNoArgs("OffsideStmt")), ConstType(SortNoArgs("OffsideStmt"))]
              , ConstType(SortNoArgs("OffsideStmt"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Stmt"))], ConstType(SortNoArgs("OffsideStmt")))
            )
          , OpDecl(
              "DeclSeqOff"
            , FunType(
                [ConstType(SortNoArgs("OffsideDecl")), ConstType(SortNoArgs("Decl"))]
              , ConstType(SortNoArgs("OffsideDecl"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Decl"))], ConstType(SortNoArgs("OffsideDecl")))
            )
          , OpDecl(
              "AltSeqOff"
            , FunType(
                [ConstType(SortNoArgs("OffsideAlt")), ConstType(SortNoArgs("Alt"))]
              , ConstType(SortNoArgs("OffsideAlt"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Alt"))], ConstType(SortNoArgs("OffsideAlt")))
            )
          , OpDecl(
              "TopdeclSeqOff"
            , FunType(
                [ConstType(SortNoArgs("Topdecl")), ConstType(SortNoArgs("OffsideTopdecl"))]
              , ConstType(SortNoArgs("OffsideTopdecl"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Topdecl"))], ConstType(SortNoArgs("OffsideTopdecl")))
            )
          , OpDecl(
              "ImportdeclSeqOff"
            , FunType(
                [ConstType(SortNoArgs("Importdecl")), ConstType(SortNoArgs("OffsideImportdecl"))]
              , ConstType(SortNoArgs("OffsideImportdecl"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Importdecl"))], ConstType(SortNoArgs("OffsideImportdecl")))
            )
          , OpDecl(
              "FloatHash"
            , FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Float-HASH")))
            )
          , OpDecl(
              "IntegerHash"
            , FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Integer-HASH")))
            )
          , OpDecl(
              "StringHash"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("StringChar")]))]
              , ConstType(SortNoArgs("String-HASH"))
              )
            )
          , OpDecl(
              "CharHash"
            , FunType([ConstType(SortNoArgs("CharChar"))], ConstType(SortNoArgs("Char-HASH")))
            )
          , OpDecl(
              "FlexibleContext"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("FlexibleClass")]))]
              , ConstType(SortNoArgs("FlexibleContext"))
              )
            )
          , OpDecl(
              "FlexibleContext"
            , FunType([ConstType(SortNoArgs("FlexibleClass"))], ConstType(SortNoArgs("FlexibleContext")))
            )
          , OpDecl(
              "SimpleClassFle"
            , FunType(
                [ConstType(SortNoArgs("Qtycls")), ConstType(SortNoArgs("Tyvar"))]
              , ConstType(SortNoArgs("FlexibleClass"))
              )
            )
          , OpDecl(
              "ClassFlex"
            , FunType(
                [ConstType(SortNoArgs("Qtycls")), ConstType(SortNoArgs("Gtycon"))]
              , ConstType(SortNoArgs("FlexibleClass"))
              )
            )
          , OpDecl(
              "ClassFlex"
            , FunType(
                [ConstType(SortNoArgs("Qtycls")), ConstType(SortNoArgs("Type"))]
              , ConstType(SortNoArgs("FlexibleClass"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("OffsideStmt"))], ConstType(SortNoArgs("OffsideStmtList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Stmt"))], ConstType(SortNoArgs("NoOffsideStmt")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideStmtList"))], ConstType(SortNoArgs("NoOffsideStmtListSem")))
            )
          , OpDecl(
              "StmtSeq"
            , FunType(
                [ConstType(SortNoArgs("NoOffsideStmt")), ConstType(SortNoArgs("NoOffsideStmtList"))]
              , ConstType(SortNoArgs("NoOffsideStmtList"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideStmt"))], ConstType(SortNoArgs("NoOffsideStmtList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideStmtListSem"))], ConstType(SortNoArgs("NoOffsideStmtBlock")))
            )
          , OpDecl(
              "StmtList"
            , FunType([ConstType(SortNoArgs("OffsideStmtList"))], ConstType(SortNoArgs("StmtList")))
            )
          , OpDecl(
              "StmtList"
            , FunType([ConstType(SortNoArgs("NoOffsideStmtBlock"))], ConstType(SortNoArgs("StmtList")))
            )
          , OpDecl(
              "FBind"
            , FunType(
                [ConstType(SortNoArgs("Qvar")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Fbind"))
              )
            )
          , OpDecl(
              "LetStmt"
            , FunType([ConstType(SortNoArgs("Declbinds"))], ConstType(SortNoArgs("Stmt")))
            )
          , OpDecl(
              "ExpStmt"
            , FunType([ConstType(SortNoArgs("Exp"))], ConstType(SortNoArgs("Stmt")))
            )
          , OpDecl(
              "BindStmt"
            , FunType(
                [ConstType(SortNoArgs("Pat")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Stmt"))
              )
            )
          , OpDecl(
              "ListCompr"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(Sort("List", [SortNoArgs("Qual")]))]
              , ConstType(SortNoArgs("List"))
              )
            )
          , OpDecl(
              "ListFirstFromTo"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("List"))
              )
            )
          , OpDecl(
              "ListFromTo"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("List"))
              )
            )
          , OpDecl(
              "ListFirstFrom"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("List"))
              )
            )
          , OpDecl(
              "ListFrom"
            , FunType([ConstType(SortNoArgs("Exp"))], ConstType(SortNoArgs("List")))
            )
          , OpDecl(
              "List"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("Exp")]))]
              , ConstType(SortNoArgs("List"))
              )
            )
          , OpDecl(
              "QualLet"
            , FunType([ConstType(SortNoArgs("Declbinds"))], ConstType(SortNoArgs("Qual")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Exp"))], ConstType(SortNoArgs("Qual")))
            )
          , OpDecl(
              "QualBind"
            , FunType(
                [ConstType(SortNoArgs("Pat")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Qual"))
              )
            )
          , OpDecl(
              "PatBind"
            , FunType(
                [ConstType(SortNoArgs("Qvar")), ConstType(SortNoArgs("Pat"))]
              , ConstType(SortNoArgs("FPat"))
              )
            )
          , OpDecl(
              "LabeledPats"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("FPat")]))]
              , ConstType(SortNoArgs("LabeledPat"))
              )
            )
          , OpDecl(
              "Irrefutable"
            , FunType([ConstType(SortNoArgs("APat"))], ConstType(SortNoArgs("APat")))
            )
          , OpDecl(
              "ListPat"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("Pat")]))]
              , ConstType(SortNoArgs("APat"))
              )
            )
          , OpDecl(
              "TuplePat"
            , FunType(
                [ConstType(SortNoArgs("Pat")), ConstType(Sort("List", [SortNoArgs("Pat")]))]
              , ConstType(SortNoArgs("APat"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Pat"))], ConstType(SortNoArgs("APat")))
            )
          , OpDecl("Wildcard", ConstType(SortNoArgs("APat")))
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Literal"))], ConstType(SortNoArgs("APat")))
            )
          , OpDecl(
              "LabeledPat"
            , FunType(
                [ConstType(SortNoArgs("Qcon")), ConstType(SortNoArgs("LabeledPat"))]
              , ConstType(SortNoArgs("APat"))
              )
            )
          , OpDecl(
              "ConstrPat"
            , FunType([ConstType(SortNoArgs("Gcon"))], ConstType(SortNoArgs("APat")))
            )
          , OpDecl(
              "NamedPat"
            , FunType(
                [ConstType(SortNoArgs("Var")), ConstType(SortNoArgs("APat"))]
              , ConstType(SortNoArgs("APat"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Var"))], ConstType(SortNoArgs("APat")))
            )
          , OpDecl(
              "ConstrApp"
            , FunType(
                [ConstType(SortNoArgs("Gcon")), ConstType(Sort("List", [SortNoArgs("APat")]))]
              , ConstType(SortNoArgs("LPat"))
              )
            )
          , OpDecl(
              "NegationPat"
            , FunType([ConstType(SortNoArgs("Literal"))], ConstType(SortNoArgs("LPat")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("APat"))], ConstType(SortNoArgs("LPat")))
            )
          , OpDecl(
              "BinOpApp"
            , FunType(
                [ConstType(SortNoArgs("Pat")), ConstType(SortNoArgs("Qconop")), ConstType(SortNoArgs("LPat"))]
              , ConstType(SortNoArgs("Pat"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("LPat"))], ConstType(SortNoArgs("Pat")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("OffsideDecl"))], ConstType(SortNoArgs("OffsideDeclList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Decl"))], ConstType(SortNoArgs("NoOffsideDecl")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideDeclList"))], ConstType(SortNoArgs("NoOffsideDeclListSem")))
            )
          , OpDecl(
              "DeclSeq"
            , FunType(
                [ConstType(SortNoArgs("NoOffsideDecl")), ConstType(SortNoArgs("NoOffsideDeclList"))]
              , ConstType(SortNoArgs("NoOffsideDeclList"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideDecl"))], ConstType(SortNoArgs("NoOffsideDeclList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideDeclListSem_Empty0"))], ConstType(SortNoArgs("NoOffsideDeclBlock")))
            )
          , OpDecl(
              "DeclList"
            , FunType([ConstType(SortNoArgs("OffsideDeclList_Empty0"))], ConstType(SortNoArgs("DeclList")))
            )
          , OpDecl(
              "DeclList"
            , FunType([ConstType(SortNoArgs("NoOffsideDeclBlock"))], ConstType(SortNoArgs("DeclList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("DeclList"))], ConstType(SortNoArgs("Declbinds")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Where"))], ConstType(SortNoArgs("MaybeWhere")))
            )
          , OpDecl(
              "Where"
            , FunType([ConstType(SortNoArgs("DeclList"))], ConstType(SortNoArgs("Where")))
            )
          , OpDecl(
              "NestedFunLHS"
            , FunType(
                [ConstType(SortNoArgs("FunLHS")), ConstType(Sort("List", [SortNoArgs("APat")]))]
              , ConstType(SortNoArgs("FunLHS"))
              )
            )
          , OpDecl(
              "OpFunLHS"
            , FunType(
                [ConstType(SortNoArgs("Pat")), ConstType(SortNoArgs("Varop")), ConstType(SortNoArgs("Pat"))]
              , ConstType(SortNoArgs("FunLHS"))
              )
            )
          , OpDecl(
              "VarFunLHS"
            , FunType(
                [ConstType(SortNoArgs("Var")), ConstType(Sort("List", [SortNoArgs("APat")]))]
              , ConstType(SortNoArgs("FunLHS"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Pat"))], ConstType(SortNoArgs("FunLHS")))
            )
          , OpDecl(
              "Guarded"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Gdrh"))
              )
            )
          , OpDecl(
              "GdValdef"
            , FunType(
                [ ConstType(SortNoArgs("FunLHS"))
                , ConstType(Sort("List", [SortNoArgs("Gdrh")]))
                , ConstType(SortNoArgs("MaybeWhere"))
                ]
              , ConstType(SortNoArgs("Valdef"))
              )
            )
          , OpDecl(
              "Valdef"
            , FunType(
                [ConstType(SortNoArgs("FunLHS")), ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("MaybeWhere"))]
              , ConstType(SortNoArgs("Valdef"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("OffsideAlt"))], ConstType(SortNoArgs("OffsideAltList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Alt"))], ConstType(SortNoArgs("NoOffsideAlt")))
            )
          , OpDecl(
              "AltSeq"
            , FunType(
                [ConstType(SortNoArgs("NoOffsideAlt")), ConstType(SortNoArgs("NoOffsideAltList"))]
              , ConstType(SortNoArgs("NoOffsideAltList"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideAlt"))], ConstType(SortNoArgs("NoOffsideAltList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideAltList"))], ConstType(SortNoArgs("NoOffsideAltBlock")))
            )
          , OpDecl(
              "AltList"
            , FunType([ConstType(SortNoArgs("OffsideAltList"))], ConstType(SortNoArgs("AltList")))
            )
          , OpDecl(
              "AltList"
            , FunType([ConstType(SortNoArgs("NoOffsideAltBlock"))], ConstType(SortNoArgs("AltList")))
            )
          , OpDecl(
              "GdPat"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Gdpat"))
              )
            )
          , OpDecl(
              "GdAlt"
            , FunType(
                [ ConstType(SortNoArgs("Pat"))
                , ConstType(Sort("List", [SortNoArgs("Gdpat")]))
                , ConstType(SortNoArgs("MaybeWhere"))
                ]
              , ConstType(SortNoArgs("Alt"))
              )
            )
          , OpDecl(
              "Alt"
            , FunType(
                [ConstType(SortNoArgs("Pat")), ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("MaybeWhere"))]
              , ConstType(SortNoArgs("Alt"))
              )
            )
          , OpDecl(
              "LabelBinds"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("Fbind")]))]
              , ConstType(SortNoArgs("LabelBinds"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qop"))], ConstType(SortNoArgs("QopNoNeg")))
            )
          , OpDecl(
              "FixDecl"
            , FunType(
                [ConstType(SortNoArgs("Infix")), ConstType(SortNoArgs("Prec")), ConstType(SortNoArgs("Ops"))]
              , ConstType(SortNoArgs("Fixdecl"))
              )
            )
          , OpDeclInj(
              FunType(
                [ConstType(Sort("List", [SortNoArgs("Op")]))]
              , ConstType(SortNoArgs("Ops"))
              )
            )
          , OpDeclInj(
              FunType(
                [ConstType(Sort("Option", [SortNoArgs("INTEGER")]))]
              , ConstType(SortNoArgs("Prec"))
              )
            )
          , OpDecl("InfixR", ConstType(SortNoArgs("Infix")))
          , OpDecl("InfixL", ConstType(SortNoArgs("Infix")))
          , OpDecl("Infix", ConstType(SortNoArgs("Infix")))
          , OpDeclInj(
              FunType(
                [ConstType(Sort("List", [SortNoArgs("APat")]))]
              , ConstType(SortNoArgs("Fargs"))
              )
            )
          , OpDecl(
              "ECons"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(Sort("List", [SortNoArgs("Exp")]))]
              , ConstType(SortNoArgs("Exps2"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Exp"))], ConstType(SortNoArgs("AnyExp")))
            )
          , OpDecl(
              "ArrOpApp"
            , FunType(
                [ConstType(SortNoArgs("ArrCommand")), ConstType(SortNoArgs("Qop")), ConstType(SortNoArgs("ArrCommand"))]
              , ConstType(SortNoArgs("ArrCommand"))
              )
            )
          , OpDecl(
              "ArrForm"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(Sort("List", [SortNoArgs("ArrCommand")]))]
              , ConstType(SortNoArgs("ArrCommand"))
              )
            )
          , OpDecl(
              "ArrAppBin"
            , FunType(
                [ConstType(SortNoArgs("ArrCommand")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("ArrCommand"))
              )
            )
          , OpDecl(
              "ArrDo"
            , FunType([ConstType(SortNoArgs("ArrStmtList"))], ConstType(SortNoArgs("ArrCommand")))
            )
          , OpDecl(
              "ArrCase"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("ArrAltList"))]
              , ConstType(SortNoArgs("ArrCommand"))
              )
            )
          , OpDecl(
              "ArrIf"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("ArrCommand")), ConstType(SortNoArgs("ArrCommand"))]
              , ConstType(SortNoArgs("ArrCommand"))
              )
            )
          , OpDecl(
              "ArrLet"
            , FunType(
                [ConstType(SortNoArgs("Declbinds")), ConstType(SortNoArgs("ArrCommand"))]
              , ConstType(SortNoArgs("ArrCommand"))
              )
            )
          , OpDecl(
              "ArrAbs"
            , FunType(
                [ConstType(SortNoArgs("Fargs")), ConstType(SortNoArgs("ArrCommand"))]
              , ConstType(SortNoArgs("ArrCommand"))
              )
            )
          , OpDecl(
              "ArrHigher"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("ArrCommand"))
              )
            )
          , OpDecl(
              "ArrFirst"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("ArrCommand"))
              )
            )
          , OpDecl(
              "Typed"
            , FunType(
                [ ConstType(SortNoArgs("Exp"))
                , ConstType(Sort("Option", [SortNoArgs("Context")]))
                , ConstType(SortNoArgs("Type"))
                ]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "Negation"
            , FunType([ConstType(SortNoArgs("Exp"))], ConstType(SortNoArgs("Exp")))
            )
          , OpDecl(
              "Labeled"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("LabelBinds"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "Named"
            , FunType(
                [ConstType(SortNoArgs("Qvar")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "OpApp"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Qop")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "AppBin"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("List"))], ConstType(SortNoArgs("Exp")))
            )
          , OpDecl(
              "Case"
            , FunType(
                [ConstType(SortNoArgs("AnyExp")), ConstType(SortNoArgs("AltList"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "Do"
            , FunType([ConstType(SortNoArgs("StmtList"))], ConstType(SortNoArgs("Exp")))
            )
          , OpDecl(
              "If"
            , FunType(
                [ConstType(SortNoArgs("AnyExp")), ConstType(SortNoArgs("AnyExp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "Let"
            , FunType(
                [ConstType(SortNoArgs("Declbinds")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "Abs"
            , FunType(
                [ConstType(SortNoArgs("Fargs")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "RSection"
            , FunType(
                [ConstType(SortNoArgs("QopNoNeg")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "LSection"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Qop"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "Product"
            , FunType([ConstType(SortNoArgs("Exps2"))], ConstType(SortNoArgs("Exp")))
            )
          , OpDecl(
              "Lit"
            , FunType([ConstType(SortNoArgs("Literal"))], ConstType(SortNoArgs("Exp")))
            )
          , OpDecl(
              "Constr"
            , FunType([ConstType(SortNoArgs("Gcon"))], ConstType(SortNoArgs("Exp")))
            )
          , OpDecl(
              "QVar"
            , FunType([ConstType(SortNoArgs("Qvar"))], ConstType(SortNoArgs("Exp")))
            )
          , OpDecl(
              "ArrProcedure"
            , FunType(
                [ConstType(SortNoArgs("APat")), ConstType(SortNoArgs("ArrCommand"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "ArrStmtSeq"
            , FunType(
                [ConstType(SortNoArgs("ArrStmt")), ConstType(SortNoArgs("ArrExplStmtList"))]
              , ConstType(SortNoArgs("ArrExplStmtList"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("ArrStmt"))], ConstType(SortNoArgs("ArrExplStmtList")))
            )
          , OpDecl(
              "ArrStmtList"
            , FunType([ConstType(SortNoArgs("ArrImplStmtList"))], ConstType(SortNoArgs("ArrStmtList")))
            )
          , OpDecl(
              "ArrStmtList"
            , FunType([ConstType(SortNoArgs("ArrExplStmtList"))], ConstType(SortNoArgs("ArrStmtList")))
            )
          , OpDecl(
              "ArrCmdStmt"
            , FunType([ConstType(SortNoArgs("ArrCommand"))], ConstType(SortNoArgs("ArrStmt")))
            )
          , OpDecl(
              "ArrBindStmt"
            , FunType(
                [ConstType(SortNoArgs("Pat")), ConstType(SortNoArgs("ArrCommand"))]
              , ConstType(SortNoArgs("ArrStmt"))
              )
            )
          , OpDecl(
              "ArrLetStmt"
            , FunType([ConstType(SortNoArgs("Declbinds"))], ConstType(SortNoArgs("ArrStmt")))
            )
          , OpDecl(
              "ArrAltSeqOff"
            , FunType(
                [ConstType(SortNoArgs("ArrOffsideAlt")), ConstType(SortNoArgs("ArrOffsideAltList"))]
              , ConstType(SortNoArgs("ArrOffsideAltList"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("ArrOffsideAlt"))], ConstType(SortNoArgs("ArrOffsideAltList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("ArrAlt"))], ConstType(SortNoArgs("ArrOffsideAlt")))
            )
          , OpDecl(
              "ArrAltSeq"
            , FunType(
                [ConstType(SortNoArgs("ArrAlt")), ConstType(SortNoArgs("ArrNoOffsideAltList"))]
              , ConstType(SortNoArgs("ArrNoOffsideAltList"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("ArrAlt"))], ConstType(SortNoArgs("ArrNoOffsideAltList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("ArrNoOffsideAltList"))], ConstType(SortNoArgs("ArrNoOffsideAltBlock")))
            )
          , OpDecl(
              "ArrAltList"
            , FunType([ConstType(SortNoArgs("ArrOffsideAltList"))], ConstType(SortNoArgs("ArrAltList")))
            )
          , OpDecl(
              "ArrAltList"
            , FunType([ConstType(SortNoArgs("ArrNoOffsideAltBlock"))], ConstType(SortNoArgs("ArrAltList")))
            )
          , OpDecl(
              "ArrAlt"
            , FunType(
                [ConstType(SortNoArgs("Pat")), ConstType(SortNoArgs("ArrCommand")), ConstType(SortNoArgs("MaybeWhere"))]
              , ConstType(SortNoArgs("ArrAlt"))
              )
            )
          , OpDecl(
              "SignDecl"
            , FunType(
                [ ConstType(SortNoArgs("Vars"))
                , ConstType(Sort("Option", [SortNoArgs("Context")]))
                , ConstType(SortNoArgs("Type"))
                ]
              , ConstType(SortNoArgs("Signdecl"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Valdef"))], ConstType(SortNoArgs("Decl")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Fixdecl"))], ConstType(SortNoArgs("Decl")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Signdecl"))], ConstType(SortNoArgs("Decl")))
            )
          , OpDecl(
              "ClassMulti"
            , FunType(
                [ ConstType(SortNoArgs("Qtycls"))
                , ConstType(SortNoArgs("Tyvar"))
                , ConstType(Sort("List", [SortNoArgs("AType")]))
                ]
              , ConstType(SortNoArgs("Class"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("SimpleClass"))], ConstType(SortNoArgs("Class")))
            )
          , OpDecl(
              "SimpleClass"
            , FunType(
                [ConstType(SortNoArgs("Qtycls")), ConstType(SortNoArgs("Tyvar"))]
              , ConstType(SortNoArgs("SimpleClass"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("FlexibleContext"))], ConstType(SortNoArgs("SContext")))
            )
          , OpDecl(
              "SContext"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("SimpleClass")]))]
              , ConstType(SortNoArgs("SContext"))
              )
            )
          , OpDecl(
              "SContext"
            , FunType([ConstType(SortNoArgs("SimpleClass"))], ConstType(SortNoArgs("SContext")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("FlexibleContext"))], ConstType(SortNoArgs("Context")))
            )
          , OpDecl(
              "Context"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("Class")]))]
              , ConstType(SortNoArgs("Context"))
              )
            )
          , OpDecl(
              "Context"
            , FunType([ConstType(SortNoArgs("Class"))], ConstType(SortNoArgs("Context")))
            )
          , OpDecl(
              "InstArrow"
            , FunType(
                [ConstType(SortNoArgs("Tyvar")), ConstType(SortNoArgs("Tyvar"))]
              , ConstType(SortNoArgs("Inst"))
              )
            )
          , OpDecl(
              "InstList"
            , FunType([ConstType(SortNoArgs("Tyvar"))], ConstType(SortNoArgs("Inst")))
            )
          , OpDecl(
              "InstTuple"
            , FunType(
                [ConstType(SortNoArgs("Tyvar")), ConstType(Sort("List", [SortNoArgs("Tyvar")]))]
              , ConstType(SortNoArgs("Inst"))
              )
            )
          , OpDecl(
              "InstApp"
            , FunType(
                [ConstType(SortNoArgs("Gtycon")), ConstType(Sort("List", [SortNoArgs("Tyvar")]))]
              , ConstType(SortNoArgs("Inst"))
              )
            )
          , OpDecl(
              "InstCons"
            , FunType([ConstType(SortNoArgs("Gtycon"))], ConstType(SortNoArgs("Inst")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Type"))], ConstType(SortNoArgs("Sbtype")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("AType"))], ConstType(SortNoArgs("Satype")))
            )
          , OpDecl(
              "InfixConstr"
            , FunType(
                [ConstType(SortNoArgs("Sbtype")), ConstType(SortNoArgs("Conop")), ConstType(SortNoArgs("Sbtype"))]
              , ConstType(SortNoArgs("Constr"))
              )
            )
          , OpDecl(
              "ConstrDecl"
            , FunType(
                [ConstType(SortNoArgs("Conid")), ConstType(Sort("List", [SortNoArgs("Satype")]))]
              , ConstType(SortNoArgs("Constr"))
              )
            )
          , OpDecl(
              "ConstrDecls"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("Constr")]))]
              , ConstType(SortNoArgs("Constrs"))
              )
            )
          , OpDecl("NoConstrDecls", ConstType(SortNoArgs("Constrs")))
          , OpDecl(
              "Derive"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("Qtycls")]))]
              , ConstType(SortNoArgs("Deriving"))
              )
            )
          , OpDecl("NoDeriving", ConstType(SortNoArgs("Deriving")))
          , OpDecl(
              "Derive"
            , FunType([ConstType(SortNoArgs("Qtycls"))], ConstType(SortNoArgs("Deriving")))
            )
          , OpDecl(
              "TFunBin"
            , FunType(
                [ConstType(SortNoArgs("Type")), ConstType(SortNoArgs("Type"))]
              , ConstType(SortNoArgs("Type"))
              )
            )
          , OpDecl(
              "TAppBin"
            , FunType(
                [ConstType(SortNoArgs("Type")), ConstType(SortNoArgs("Type"))]
              , ConstType(SortNoArgs("Type"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("AType"))], ConstType(SortNoArgs("Type")))
            )
          , OpDecl(
              "TProd"
            , FunType([ConstType(SortNoArgs("Types2"))], ConstType(SortNoArgs("AType")))
            )
          , OpDecl(
              "TList"
            , FunType([ConstType(SortNoArgs("Type"))], ConstType(SortNoArgs("AType")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Type"))], ConstType(SortNoArgs("AType")))
            )
          , OpDecl(
              "TVar"
            , FunType([ConstType(SortNoArgs("Tyvar"))], ConstType(SortNoArgs("AType")))
            )
          , OpDecl(
              "TCon"
            , FunType([ConstType(SortNoArgs("Gtycon"))], ConstType(SortNoArgs("AType")))
            )
          , OpDecl(
              "TCons"
            , FunType(
                [ConstType(SortNoArgs("Type")), ConstType(Sort("List", [SortNoArgs("Type")]))]
              , ConstType(SortNoArgs("Types2"))
              )
            )
          , OpDecl("TListCon", ConstType(SortNoArgs("Gtycon")))
          , OpDecl("TUnit", ConstType(SortNoArgs("Gtycon")))
          , OpDecl("TArrow", ConstType(SortNoArgs("Gtycon")))
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qtycon"))], ConstType(SortNoArgs("Gtycon")))
            )
          , OpDecl(
              "Hiding"
            , FunType([ConstType(SortNoArgs("Exportlist"))], ConstType(SortNoArgs("Impspec")))
            )
          , OpDecl(
              "Impspec"
            , FunType([ConstType(SortNoArgs("Exportlist"))], ConstType(SortNoArgs("Impspec")))
            )
          , OpDecl(
              "As"
            , FunType([ConstType(SortNoArgs("Modid"))], ConstType(SortNoArgs("As")))
            )
          , OpDecl("Qualified", ConstType(SortNoArgs("Qualified")))
          , OpDecl("SOURCE", ConstType(SortNoArgs("Src")))
          , OpDecl(
              "Import"
            , FunType(
                [ ConstType(Sort("Option", [SortNoArgs("Src")]))
                , ConstType(Sort("Option", [SortNoArgs("Qualified")]))
                , ConstType(SortNoArgs("Modid"))
                , ConstType(Sort("Option", [SortNoArgs("As")]))
                , ConstType(Sort("Option", [SortNoArgs("Impspec")]))
                ]
              , ConstType(SortNoArgs("Importdecl"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Gtycon"))], ConstType(SortNoArgs("Export")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qvar"))], ConstType(SortNoArgs("Export")))
            )
          , OpDecl(
              "Exports"
            , FunType([ConstType(SortNoArgs("Exportlist"))], ConstType(SortNoArgs("Exports")))
            )
          , OpDecl(
              "Exportlist"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("Export")]))]
              , ConstType(SortNoArgs("Exportlist"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("OffsideTopdecl"))], ConstType(SortNoArgs("OffsideTopdeclList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("OffsideImportdecl"))], ConstType(SortNoArgs("OffsideImportdeclList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Topdecl"))], ConstType(SortNoArgs("NoOffsideTopdecl")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideTopdeclList"))], ConstType(SortNoArgs("NoOffsideTopdeclListSem")))
            )
          , OpDecl(
              "TopdeclSeq"
            , FunType(
                [ConstType(SortNoArgs("NoOffsideTopdecl")), ConstType(SortNoArgs("NoOffsideTopdeclList"))]
              , ConstType(SortNoArgs("NoOffsideTopdeclList"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideTopdecl"))], ConstType(SortNoArgs("NoOffsideTopdeclList")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Importdecl"))], ConstType(SortNoArgs("NoOffsideImportdecl")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideImportdeclList"))], ConstType(SortNoArgs("NoOffsideImportdeclListSem")))
            )
          , OpDecl(
              "ImportdeclSeq"
            , FunType(
                [ConstType(SortNoArgs("NoOffsideImportdecl")), ConstType(SortNoArgs("NoOffsideImportdeclList"))]
              , ConstType(SortNoArgs("NoOffsideImportdeclList"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideImportdecl"))], ConstType(SortNoArgs("NoOffsideImportdeclList")))
            )
          , OpDecl(
              "OffBody"
            , FunType(
                [ConstType(SortNoArgs("OffsideImportdeclList")), ConstType(SortNoArgs("Empty"))]
              , ConstType(SortNoArgs("OffsideBody"))
              )
            )
          , OpDecl(
              "OffBody"
            , FunType(
                [ConstType(SortNoArgs("Empty")), ConstType(SortNoArgs("OffsideTopdeclList"))]
              , ConstType(SortNoArgs("OffsideBody"))
              )
            )
          , OpDecl(
              "OffBody"
            , FunType(
                [ConstType(SortNoArgs("Empty")), ConstType(SortNoArgs("Empty"))]
              , ConstType(SortNoArgs("OffsideBody"))
              )
            )
          , OpDecl(
              "Body"
            , FunType(
                [ConstType(SortNoArgs("NoOffsideImportdeclListSem")), ConstType(SortNoArgs("NoOffsideTopdeclList"))]
              , ConstType(SortNoArgs("NoOffsideBody"))
              )
            )
          , OpDecl(
              "Body"
            , FunType(
                [ConstType(SortNoArgs("NoOffsideImportdeclListSem")), ConstType(SortNoArgs("Empty"))]
              , ConstType(SortNoArgs("NoOffsideBody"))
              )
            )
          , OpDecl(
              "Body"
            , FunType(
                [ConstType(SortNoArgs("Empty")), ConstType(SortNoArgs("NoOffsideTopdeclListSem"))]
              , ConstType(SortNoArgs("NoOffsideBody"))
              )
            )
          , OpDecl(
              "Body"
            , FunType(
                [ConstType(SortNoArgs("Empty")), ConstType(SortNoArgs("Empty"))]
              , ConstType(SortNoArgs("NoOffsideBody"))
              )
            )
          , OpDecl("Empty", ConstType(SortNoArgs("Empty")))
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("OffsideBody"))], ConstType(SortNoArgs("Body")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("NoOffsideBody"))], ConstType(SortNoArgs("Body")))
            )
          , OpDecl(
              "FlexibleInstance"
            , FunType(
                [ ConstType(Sort("Option", [SortNoArgs("SContext")]))
                , ConstType(SortNoArgs("Qtycls"))
                , ConstType(Sort("List", [SortNoArgs("AType")]))
                , ConstType(SortNoArgs("MaybeWhere"))
                ]
              , ConstType(SortNoArgs("Topdecl"))
              )
            )
          , OpDecl(
              "Default"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("Type")]))]
              , ConstType(SortNoArgs("Topdecl"))
              )
            )
          , OpDecl(
              "Instance"
            , FunType(
                [ ConstType(Sort("Option", [SortNoArgs("SContext")]))
                , ConstType(SortNoArgs("Qtycls"))
                , ConstType(Sort("List", [SortNoArgs("Inst")]))
                , ConstType(SortNoArgs("MaybeWhere"))
                ]
              , ConstType(SortNoArgs("Topdecl"))
              )
            )
          , OpDecl(
              "Class"
            , FunType(
                [ ConstType(Sort("Option", [SortNoArgs("SContext")]))
                , ConstType(SortNoArgs("Tycls"))
                , ConstType(SortNoArgs("Tyvar"))
                , ConstType(SortNoArgs("MaybeWhere"))
                ]
              , ConstType(SortNoArgs("Topdecl"))
              )
            )
          , OpDecl(
              "Data"
            , FunType(
                [ ConstType(Sort("Option", [SortNoArgs("Context")]))
                , ConstType(SortNoArgs("Type"))
                , ConstType(SortNoArgs("Constrs"))
                , ConstType(SortNoArgs("Deriving"))
                ]
              , ConstType(SortNoArgs("Topdecl"))
              )
            )
          , OpDecl(
              "TypeDecl"
            , FunType(
                [ ConstType(SortNoArgs("Tycon"))
                , ConstType(Sort("List", [SortNoArgs("Tyvar")]))
                , ConstType(SortNoArgs("Type"))
                ]
              , ConstType(SortNoArgs("Topdecl"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Decl"))], ConstType(SortNoArgs("Topdecl")))
            )
          , OpDecl(
              "Program"
            , FunType([ConstType(SortNoArgs("Body"))], ConstType(SortNoArgs("Module")))
            )
          , OpDecl(
              "Module"
            , FunType(
                [ConstType(SortNoArgs("ModuleDec")), ConstType(SortNoArgs("Body"))]
              , ConstType(SortNoArgs("Module"))
              )
            )
          , OpDecl(
              "ModuleDec"
            , FunType(
                [ConstType(SortNoArgs("Modid")), ConstType(Sort("Option", [SortNoArgs("Exports")]))]
              , ConstType(SortNoArgs("ModuleDec"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Float-HASH"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Integer-HASH"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String-HASH"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Char-HASH"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "CLitLit"
            , FunType([ConstType(SortNoArgs("CLITLIT"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "PrimDouble"
            , FunType([ConstType(SortNoArgs("PRIMDOUBLE"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "PrimFloat"
            , FunType([ConstType(SortNoArgs("PRIMFLOAT"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "PrimString"
            , FunType([ConstType(SortNoArgs("PRIMSTRING"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "PrimChar"
            , FunType([ConstType(SortNoArgs("PRIMCHAR"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "PrimInt"
            , FunType([ConstType(SortNoArgs("PRIMINTEGER"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "Float"
            , FunType([ConstType(SortNoArgs("RATIONAL"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "Float"
            , FunType([ConstType(SortNoArgs("FLOAT"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Char"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "Int"
            , FunType([ConstType(SortNoArgs("INTEGER"))], ConstType(SortNoArgs("Literal")))
            )
          , OpDecl(
              "HexadecimalEsc"
            , FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Escape")))
            )
          , OpDecl(
              "OctalEsc"
            , FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Escape")))
            )
          , OpDecl(
              "DecimalEsc"
            , FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Escape")))
            )
          , OpDecl(
              "ASCIIEsc"
            , FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Escape")))
            )
          , OpDecl(
              "CharEsc"
            , FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Escape")))
            )
          , OpDecl(
              "Gap"
            , FunType([ConstType(SortNoArgs("ListPlusOfCharClass0"))], ConstType(SortNoArgs("StringChar")))
            )
          , OpDecl(
              "EscapeString"
            , FunType([ConstType(SortNoArgs("Escape"))], ConstType(SortNoArgs("StringChar")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("StringChar")))
            )
          , OpDecl(
              "Escape"
            , FunType([ConstType(SortNoArgs("Escape"))], ConstType(SortNoArgs("CharChar")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("CharChar")))
            )
          , OpDecl(
              "String"
            , FunType(
                [ConstType(Sort("List", [SortNoArgs("StringChar")]))]
              , ConstType(SortNoArgs("String"))
              )
            )
          , OpDecl(
              "Char"
            , FunType([ConstType(SortNoArgs("CharChar"))], ConstType(SortNoArgs("Char")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("CLITLIT")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("PRIMDOUBLE")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("PRIMFLOAT")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("PRIMINTEGER")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("PRIMSTRING")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("PRIMCHAR")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("RATIONAL")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("FLOAT")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("INTEGER")))
            )
          , OpDecl(
              "QModId"
            , FunType(
                [ConstType(SortNoArgs("String")), ConstType(SortNoArgs("QModid"))]
              , ConstType(SortNoArgs("QModid"))
              )
            )
          , OpDecl(
              "QModId"
            , FunType(
                [ConstType(SortNoArgs("String")), ConstType(SortNoArgs("String"))]
              , ConstType(SortNoArgs("QModid"))
              )
            )
          , OpDecl(
              "QConSym"
            , FunType(
                [ConstType(SortNoArgs("Modid")), ConstType(SortNoArgs("String"))]
              , ConstType(SortNoArgs("QCONSYM"))
              )
            )
          , OpDecl(
              "QVarSym"
            , FunType(
                [ConstType(SortNoArgs("Modid")), ConstType(SortNoArgs("String"))]
              , ConstType(SortNoArgs("QVARSYM"))
              )
            )
          , OpDecl(
              "QConId"
            , FunType(
                [ConstType(SortNoArgs("Modid")), ConstType(SortNoArgs("String"))]
              , ConstType(SortNoArgs("QCONID"))
              )
            )
          , OpDecl(
              "QVarId"
            , FunType(
                [ConstType(SortNoArgs("Modid")), ConstType(SortNoArgs("String"))]
              , ConstType(SortNoArgs("QVARID"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("QModid"))], ConstType(SortNoArgs("Modid")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Modid")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("QCONID"))], ConstType(SortNoArgs("Qconid")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Conid"))], ConstType(SortNoArgs("Qconid")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("CONID"))], ConstType(SortNoArgs("Conid")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qtycon"))], ConstType(SortNoArgs("Qtycls")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Tycon"))], ConstType(SortNoArgs("Tycls")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("QCONID"))], ConstType(SortNoArgs("Qtycon")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Tycon"))], ConstType(SortNoArgs("Qtycon")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("CONID"))], ConstType(SortNoArgs("Tycon")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("QVARSYM"))], ConstType(SortNoArgs("Qvarsym1")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("VARSYM"))], ConstType(SortNoArgs("Varsym")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qconid"))], ConstType(SortNoArgs("Qcon")))
            )
          , OpDecl(
              "BinCon"
            , FunType([ConstType(SortNoArgs("Qconsym"))], ConstType(SortNoArgs("Qcon")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("CONSYM"))], ConstType(SortNoArgs("Consym")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("QCONSYM"))], ConstType(SortNoArgs("Qconsym")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Consym"))], ConstType(SortNoArgs("Qconsym")))
            )
          , OpDecl(
              "ConsOp"
            , FunType([ConstType(SortNoArgs("CONSOP"))], ConstType(SortNoArgs("ConsOp")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("ConsOp"))], ConstType(SortNoArgs("Gconsym")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qconsym"))], ConstType(SortNoArgs("Gconsym")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qconop"))], ConstType(SortNoArgs("Qop")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qvarop"))], ConstType(SortNoArgs("Qop")))
            )
          , OpDecl(
              "QPrefCon"
            , FunType([ConstType(SortNoArgs("Qconid"))], ConstType(SortNoArgs("Qconop")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Gconsym"))], ConstType(SortNoArgs("Qconop")))
            )
          , OpDecl(
              "PrefCon"
            , FunType([ConstType(SortNoArgs("Conid"))], ConstType(SortNoArgs("Conop")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Consym"))], ConstType(SortNoArgs("Conop")))
            )
          , OpDecl(
              "QPrefOp"
            , FunType([ConstType(SortNoArgs("Qvarid"))], ConstType(SortNoArgs("Qvarop")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qvarsym"))], ConstType(SortNoArgs("Qvarop")))
            )
          , OpDecl(
              "PrefOp"
            , FunType([ConstType(SortNoArgs("Varid"))], ConstType(SortNoArgs("Varop")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Varsym"))], ConstType(SortNoArgs("Varop")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qvarsym1"))], ConstType(SortNoArgs("Qvarsym")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Varsym"))], ConstType(SortNoArgs("Qvarsym")))
            )
          , OpDecl(
              "ConOp"
            , FunType([ConstType(SortNoArgs("Conop"))], ConstType(SortNoArgs("Op")))
            )
          , OpDecl(
              "Op"
            , FunType([ConstType(SortNoArgs("Varop"))], ConstType(SortNoArgs("Op")))
            )
          , OpDecl(
              "BinOpQ"
            , FunType([ConstType(SortNoArgs("Qvarsym"))], ConstType(SortNoArgs("Qvar")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qvarid"))], ConstType(SortNoArgs("Qvar")))
            )
          , OpDecl(
              "BinOp"
            , FunType([ConstType(SortNoArgs("Varsym"))], ConstType(SortNoArgs("Var")))
            )
          , OpDecl(
              "Var"
            , FunType([ConstType(SortNoArgs("Varid"))], ConstType(SortNoArgs("Var")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("QVARID"))], ConstType(SortNoArgs("Qvarid")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Varid"))], ConstType(SortNoArgs("Qvarid")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("Qcon"))], ConstType(SortNoArgs("Gcon")))
            )
          , OpDecl("EmptyList", ConstType(SortNoArgs("Gcon")))
          , OpDecl("Unit", ConstType(SortNoArgs("Gcon")))
          , OpDecl(
              "Ins"
            , FunType([ConstType(SortNoArgs("Qvar"))], ConstType(SortNoArgs("Vars")))
            )
          , OpDecl(
              "Snoc"
            , FunType(
                [ConstType(SortNoArgs("Vars")), ConstType(SortNoArgs("Var"))]
              , ConstType(SortNoArgs("Vars"))
              )
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Tyvar")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Varid")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("CONSOP")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("CONSYM")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("VARSYM")))
            )
          , OpDeclInj(
              FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("CONID")))
            )
          ]
        )
      ]
    )
  , Strategies(
      [ SDefT(
          "desugar_arrow_0_0"
        , []
        , []
        , Scope(
            ["p_12", "q_12", "r_12", "s_12", "t_12", "v_12", "u_12", "w_12"]
          , Seq(
              Match(
                Anno(
                  Op("ArrProcedure", [Var("q_12"), Var("p_12")])
                , Wld()
                )
              )
            , Seq(
                Match(Var("s_12"))
              , Seq(
                  Build(Var("q_12"))
                , Seq(
                    CallT(SVar("free_pat_vars_0_0"), [], [])
                  , Seq(
                      Match(Var("r_12"))
                    , Seq(
                        Build(Var("s_12"))
                      , Seq(
                          Match(Var("v_12"))
                        , Seq(
                            Build(Var("r_12"))
                          , Seq(
                              CallT(SVar("tuple_0_0"), [], [])
                            , Seq(
                                Match(Var("t_12"))
                              , Seq(
                                  Build(Var("v_12"))
                                , Seq(
                                    Match(Var("w_12"))
                                  , Seq(
                                      Build(Var("p_12"))
                                    , Seq(
                                        CallT(SVar("desugar_arrow_p__0_1"), [], [Var("r_12")])
                                      , Seq(
                                          Match(Var("u_12"))
                                        , Seq(
                                            Build(Var("w_12"))
                                          , Build(
                                              Anno(
                                                Op(
                                                  "OpApp"
                                                , [ Anno(
                                                      Op(
                                                        "AppBin"
                                                      , [ Anno(
                                                            Op(
                                                              "Var"
                                                            , [Anno(Str("arr"), Op("Nil", []))]
                                                            )
                                                          , Op("Nil", [])
                                                          )
                                                        , Anno(
                                                            Op(
                                                              "Abs"
                                                            , [ Anno(
                                                                  Op(
                                                                    "Cons"
                                                                  , [Var("q_12"), Anno(Op("Nil", []), Op("Nil", []))]
                                                                  )
                                                                , Op("Nil", [])
                                                                )
                                                              , Var("t_12")
                                                              ]
                                                            )
                                                          , Op("Nil", [])
                                                          )
                                                        ]
                                                      )
                                                    , Op("Nil", [])
                                                    )
                                                  , Anno(Str(">>>"), Op("Nil", []))
                                                  , Var("u_12")
                                                  ]
                                                )
                                              , Op("Nil", [])
                                              )
                                            )
                                          )
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "desugar_arrow_p__0_1"
        , []
        , [VarDec("x_12", ConstType(Sort("ATerm", [])))]
        , Scope(
            ["y_12", "z_12"]
          , Seq(
              Match(
                Anno(
                  Op("ArrFirst", [Var("y_12"), Var("z_12")])
                , Wld()
                )
              )
            , Seq(
                Build(Var("x_12"))
              , CallT(SVar("tuple_pat_0_0"), [], [])
              )
            )
          )
        )
      , SDefT(
          "tuple_pat_0_0"
        , []
        , []
        , GuardedLChoice(
            Seq(
              Match(Anno(Op("Nil", []), Wld()))
            , Build(
                Anno(
                  Op(
                    "ConstrPat"
                  , [Anno(Op("Unit", []), Op("Nil", []))]
                  )
                , Op("Nil", [])
                )
              )
            )
          , Id()
          , GuardedLChoice(
              Scope(
                ["c_13"]
              , Seq(
                  Match(
                    Anno(
                      Op(
                        "Cons"
                      , [Var("c_13"), Anno(Op("Nil", []), Wld())]
                      )
                    , Wld()
                    )
                  )
                , Build(Var("c_13"))
                )
              )
            , Id()
            , Scope(
                ["a_13", "b_13"]
              , Seq(
                  Match(
                    Anno(
                      Op("Cons", [Var("a_13"), Var("b_13")])
                    , Wld()
                    )
                  )
                , Build(
                    Anno(
                      Op("TuplePat", [Var("a_13"), Var("b_13")])
                    , Op("Nil", [])
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "tuple_0_0"
        , []
        , []
        , GuardedLChoice(
            Seq(
              Match(Anno(Op("Nil", []), Wld()))
            , Build(
                Anno(
                  Op(
                    "Constr"
                  , [Anno(Op("Unit", []), Op("Nil", []))]
                  )
                , Op("Nil", [])
                )
              )
            )
          , Id()
          , GuardedLChoice(
              Scope(
                ["f_13"]
              , Seq(
                  Match(
                    Anno(
                      Op(
                        "Cons"
                      , [Var("f_13"), Anno(Op("Nil", []), Wld())]
                      )
                    , Wld()
                    )
                  )
                , Build(Var("f_13"))
                )
              )
            , Id()
            , Scope(
                ["d_13", "e_13"]
              , Seq(
                  Match(
                    Anno(
                      Op("Cons", [Var("d_13"), Var("e_13")])
                    , Wld()
                    )
                  )
                , Build(
                    Anno(
                      Op(
                        "Product"
                      , [ Anno(
                            Op("ECons", [Var("d_13"), Var("e_13")])
                          , Op("Nil", [])
                          )
                        ]
                      )
                    , Op("Nil", [])
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "free_pat_vars_0_0"
        , []
        , []
        , CallT(
            SVar("collect_all_1_0")
          , [Match(Anno(Op("Var", [Wld()]), Wld()))]
          , []
          )
        )
      , SDefT(
          "free_decls_vars_0_0"
        , []
        , []
        , CallT(
            SVar("collect_all_3_0")
          , [ Match(Anno(Op("Var", [Wld()]), Wld()))
            , CallT(SVar("union_0_0"), [], [])
            , Scope(
                ["g_13"]
              , Seq(
                  Match(
                    Anno(Op("VarFunLHS", [Var("g_13"), Wld()]), Wld())
                  )
                , Build(Var("g_13"))
                )
              )
            ]
          , []
          )
        )
      , SDefT(
          "apply_all_0_1"
        , []
        , [VarDec("b_28", ConstType(Sort("ATerm", [])))]
        , GuardedLChoice(
            Scope(
              ["m_13"]
            , Seq(
                Match(
                  Anno(
                    Op(
                      ""
                    , [Var("m_13"), Anno(Op("Nil", []), Wld())]
                    )
                  , Wld()
                  )
                )
              , Build(Var("m_13"))
              )
            )
          , Id()
          , Scope(
              ["i_13", "j_13", "k_13"]
            , Seq(
                Match(
                  Anno(
                    Op(
                      ""
                    , [ Var("i_13")
                      , Anno(
                          Op("Cons", [Var("j_13"), Var("k_13")])
                        , Wld()
                        )
                      ]
                    )
                  , Wld()
                  )
                )
              , Seq(
                  Build(
                    Anno(
                      Op(
                        ""
                      , [ Anno(
                            Op(
                              "AppBin"
                            , [ Var("i_13")
                              , Anno(
                                  Op(
                                    "OpApp"
                                  , [ Anno(
                                        Op(
                                          "AppBin"
                                        , [ Anno(
                                              Op(
                                                "Var"
                                              , [Anno(Str("arr"), Op("Nil", []))]
                                              )
                                            , Op("Nil", [])
                                            )
                                          , Var("b_28")
                                          ]
                                        )
                                      , Op("Nil", [])
                                      )
                                    , Anno(Str(">>>"), Op("Nil", []))
                                    , Var("j_13")
                                    ]
                                  )
                                , Op("Nil", [])
                                )
                              ]
                            )
                          , Op("Nil", [])
                          )
                        , Var("k_13")
                        ]
                      )
                    , Op("Nil", [])
                    )
                  )
                , CallT(SVar("apply_all_0_1"), [], [Var("b_28")])
                )
              )
            )
          )
        )
      , SDefT(
          "map_1_0"
        , [ VarDec(
              "s_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Let(
            [ SDefT(
                "t_13"
              , []
              , []
              , GuardedLChoice(
                  Match(Anno(Op("Nil", []), Wld()))
                , Id()
                , Scope(
                    ["n_13", "o_13", "p_13", "q_13", "r_13"]
                  , Seq(
                      Match(
                        Anno(
                          Op("Cons", [Var("n_13"), Var("o_13")])
                        , Var("r_13")
                        )
                      )
                    , Seq(
                        Build(Var("n_13"))
                      , Seq(
                          CallT(SVar("s_13"), [], [])
                        , Seq(
                            Match(Var("p_13"))
                          , Seq(
                              Build(Var("o_13"))
                            , Seq(
                                CallT(SVar("t_13"), [], [])
                              , Seq(
                                  Match(Var("q_13"))
                                , Build(
                                    Anno(
                                      Op("Cons", [Var("p_13"), Var("q_13")])
                                    , Var("r_13")
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            ]
          , CallT(SVar("t_13"), [], [])
          )
        )
      , SDefT(
          "collect_all_1_0"
        , [ VarDec(
              "u_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , CallT(
            SVar("collect_all_2_0")
          , [ CallT(SVar("u_13"), [], [])
            , CallT(SVar("union_0_0"), [], [])
            ]
          , []
          )
        )
      , SDefT(
          "collect_all_2_0"
        , [ VarDec(
              "v_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "w_13"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Let(
            [ SDefT(
                "x_13"
              , []
              , []
              , GuardedLChoice(
                  Scope(
                    ["y_13", "a_14", "z_13", "b_14"]
                  , Seq(
                      Match(Var("a_14"))
                    , Seq(
                        CallT(SVar("v_13"), [], [])
                      , Seq(
                          Match(Var("y_13"))
                        , Seq(
                            Build(Var("a_14"))
                          , Seq(
                              Match(Var("b_14"))
                            , Seq(
                                CallT(
                                  SVar("crush_3_0")
                                , [ Build(Anno(Op("Nil", []), Op("Nil", [])))
                                  , CallT(SVar("w_13"), [], [])
                                  , CallT(SVar("x_13"), [], [])
                                  ]
                                , []
                                )
                              , Seq(
                                  Match(Var("z_13"))
                                , Seq(
                                    Build(Var("b_14"))
                                  , Build(
                                      Anno(
                                        Op("Cons", [Var("y_13"), Var("z_13")])
                                      , Op("Nil", [])
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                , Id()
                , CallT(
                    SVar("crush_3_0")
                  , [ Build(Anno(Op("Nil", []), Op("Nil", [])))
                    , CallT(SVar("w_13"), [], [])
                    , CallT(SVar("x_13"), [], [])
                    ]
                  , []
                  )
                )
              )
            ]
          , CallT(SVar("x_13"), [], [])
          )
        )
      , SDefT(
          "collect_all_3_0"
        , [ VarDec(
              "c_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "d_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "e_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Let(
            [ SDefT(
                "f_14"
              , []
              , []
              , GuardedLChoice(
                  Scope(
                    ["g_14", "i_14", "h_14", "j_14"]
                  , Seq(
                      Match(Var("i_14"))
                    , Seq(
                        CallT(SVar("c_14"), [], [])
                      , Seq(
                          Match(Var("g_14"))
                        , Seq(
                            Build(Var("i_14"))
                          , Seq(
                              Match(Var("j_14"))
                            , Seq(
                                CallT(
                                  SVar("crush_3_0")
                                , [ Build(Anno(Op("Nil", []), Op("Nil", [])))
                                  , CallT(SVar("d_14"), [], [])
                                  , CallT(SVar("f_14"), [], [])
                                  ]
                                , []
                                )
                              , Seq(
                                  Match(Var("h_14"))
                                , Seq(
                                    Build(Var("j_14"))
                                  , Build(
                                      Anno(
                                        Op("Cons", [Var("g_14"), Var("h_14")])
                                      , Op("Nil", [])
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                , Id()
                , GuardedLChoice(
                    Seq(
                      CallT(SVar("e_14"), [], [])
                    , CallT(SVar("f_14"), [], [])
                    )
                  , Id()
                  , CallT(
                      SVar("crush_3_0")
                    , [ Build(Anno(Op("Nil", []), Op("Nil", [])))
                      , CallT(SVar("d_14"), [], [])
                      , CallT(SVar("f_14"), [], [])
                      ]
                    , []
                    )
                  )
                )
              )
            ]
          , CallT(SVar("f_14"), [], [])
          )
        )
      , SDefT(
          "crush_3_0"
        , [ VarDec(
              "l_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "m_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "n_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["k_14"]
          , Seq(
              Match(Anno(Explode(Wld(), Var("k_14")), Wld()))
            , Seq(
                Build(Var("k_14"))
              , CallT(
                  SVar("foldr_3_0")
                , [ CallT(SVar("l_14"), [], [])
                  , CallT(SVar("m_14"), [], [])
                  , CallT(SVar("n_14"), [], [])
                  ]
                , []
                )
              )
            )
          )
        )
      , SDefT(
          "foldr_3_0"
        , [ VarDec(
              "q_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "r_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "s_14"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , GuardedLChoice(
            Seq(
              Match(Anno(Op("Nil", []), Wld()))
            , CallT(SVar("q_14"), [], [])
            )
          , Id()
          , Scope(
              ["o_14", "p_14", "t_14", "v_14", "u_14", "w_14"]
            , Seq(
                Match(
                  Anno(
                    Op("Cons", [Var("o_14"), Var("p_14")])
                  , Wld()
                  )
                )
              , Seq(
                  Match(Var("v_14"))
                , Seq(
                    Build(Var("o_14"))
                  , Seq(
                      CallT(SVar("s_14"), [], [])
                    , Seq(
                        Match(Var("t_14"))
                      , Seq(
                          Build(Var("v_14"))
                        , Seq(
                            Match(Var("w_14"))
                          , Seq(
                              Build(Var("p_14"))
                            , Seq(
                                CallT(
                                  SVar("foldr_3_0")
                                , [ CallT(SVar("q_14"), [], [])
                                  , CallT(SVar("r_14"), [], [])
                                  , CallT(SVar("s_14"), [], [])
                                  ]
                                , []
                                )
                              , Seq(
                                  Match(Var("u_14"))
                                , Seq(
                                    Build(Var("w_14"))
                                  , Seq(
                                      Build(
                                        Anno(
                                          Op("", [Var("t_14"), Var("u_14")])
                                        , Op("Nil", [])
                                        )
                                      )
                                    , CallT(SVar("r_14"), [], [])
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "conc_0_0"
        , []
        , []
        , GuardedLChoice(
            Scope(
              ["x_14", "y_14"]
            , Seq(
                Match(
                  Anno(
                    Op("", [Var("x_14"), Var("y_14")])
                  , Wld()
                  )
                )
              , Seq(
                  Build(Var("x_14"))
                , CallT(SVar("at_end_1_0"), [Build(Var("y_14"))], [])
                )
              )
            )
          , Id()
          , Scope(
              ["z_14"]
            , Seq(
                Match(
                  Anno(
                    Explode(Anno(Str(""), Wld()), Var("z_14"))
                  , Wld()
                  )
                )
              , Seq(
                  Build(Var("z_14"))
                , CallT(SVar("concat_0_0"), [], [])
                )
              )
            )
          )
        )
      , SDefT(
          "at_end_1_0"
        , [ VarDec(
              "f_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Let(
            [ SDefT(
                "g_15"
              , []
              , []
              , GuardedLChoice(
                  Scope(
                    ["a_15", "b_15", "c_15", "d_15", "e_15"]
                  , Seq(
                      Match(
                        Anno(
                          Op("Cons", [Var("a_15"), Var("b_15")])
                        , Var("e_15")
                        )
                      )
                    , Seq(
                        Build(Var("a_15"))
                      , Seq(
                          Match(Var("c_15"))
                        , Seq(
                            Build(Var("b_15"))
                          , Seq(
                              CallT(SVar("g_15"), [], [])
                            , Seq(
                                Match(Var("d_15"))
                              , Build(
                                  Anno(
                                    Op("Cons", [Var("c_15"), Var("d_15")])
                                  , Var("e_15")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                , Id()
                , Seq(
                    Match(Anno(Op("Nil", []), Wld()))
                  , CallT(SVar("f_15"), [], [])
                  )
                )
              )
            ]
          , CallT(SVar("g_15"), [], [])
          )
        )
      , SDefT(
          "concat_0_0"
        , []
        , []
        , Let(
            [ SDefT(
                "j_15"
              , []
              , []
              , GuardedLChoice(
                  Match(Anno(Op("Nil", []), Wld()))
                , Id()
                , Scope(
                    ["h_15", "i_15"]
                  , Seq(
                      Match(
                        Anno(
                          Op("Cons", [Var("h_15"), Var("i_15")])
                        , Wld()
                        )
                      )
                    , Seq(
                        Build(Var("h_15"))
                      , CallT(
                          SVar("at_end_1_0")
                        , [Seq(
                             Build(Var("i_15"))
                           , CallT(SVar("j_15"), [], [])
                           )]
                        , []
                        )
                      )
                    )
                  )
                )
              )
            ]
          , CallT(SVar("j_15"), [], [])
          )
        )
      , SDefT(
          "union_0_0"
        , []
        , []
        , Scope(
            ["k_15", "l_15"]
          , Let(
              [ SDefT(
                  "r_15"
                , []
                , []
                , GuardedLChoice(
                    Seq(
                      Match(Anno(Op("Nil", []), Wld()))
                    , Build(Var("k_15"))
                    )
                  , Id()
                  , GuardedLChoice(
                      Seq(
                        CallT(SVar("HdMember_1_0"), [Build(Var("k_15"))], [])
                      , CallT(SVar("r_15"), [], [])
                      )
                    , Id()
                    , Scope(
                        ["m_15", "n_15", "o_15", "p_15", "q_15"]
                      , Seq(
                          Match(
                            Anno(
                              Op("Cons", [Var("m_15"), Var("n_15")])
                            , Var("q_15")
                            )
                          )
                        , Seq(
                            Build(Var("m_15"))
                          , Seq(
                              Match(Var("o_15"))
                            , Seq(
                                Build(Var("n_15"))
                              , Seq(
                                  CallT(SVar("r_15"), [], [])
                                , Seq(
                                    Match(Var("p_15"))
                                  , Build(
                                      Anno(
                                        Op("Cons", [Var("o_15"), Var("p_15")])
                                      , Var("q_15")
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              ]
            , Seq(
                Match(
                  Anno(
                    Op("", [Var("l_15"), Var("k_15")])
                  , Wld()
                  )
                )
              , Seq(
                  Build(Var("l_15"))
                , CallT(SVar("r_15"), [], [])
                )
              )
            )
          )
        )
      , SDefT(
          "HdMember_1_0"
        , [ VarDec(
              "v_15"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["s_15", "t_15", "w_15"]
          , Seq(
              Match(
                Anno(
                  Op("Cons", [Var("t_15"), Var("s_15")])
                , Wld()
                )
              )
            , Seq(
                Match(Var("w_15"))
              , Seq(
                  CallT(SVar("v_15"), [], [])
                , Seq(
                    CallT(
                      SVar("fetch_1_0")
                    , [ Scope(
                          ["u_15"]
                        , Seq(
                            Match(Var("u_15"))
                          , Seq(
                              Build(
                                Anno(
                                  Op("", [Var("t_15"), Var("u_15")])
                                , Op("Nil", [])
                                )
                              )
                            , CallT(SVar("eq_0_0"), [], [])
                            )
                          )
                        )
                      ]
                    , []
                    )
                  , Seq(Build(Var("w_15")), Build(Var("s_15")))
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "fetch_1_0"
        , [ VarDec(
              "h_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Let(
            [ SDefT(
                "i_16"
              , []
              , []
              , GuardedLChoice(
                  Scope(
                    ["x_15", "y_15", "z_15", "a_16", "b_16"]
                  , Seq(
                      Match(
                        Anno(
                          Op("Cons", [Var("x_15"), Var("y_15")])
                        , Var("b_16")
                        )
                      )
                    , Seq(
                        Build(Var("x_15"))
                      , Seq(
                          CallT(SVar("h_16"), [], [])
                        , Seq(
                            Match(Var("z_15"))
                          , Seq(
                              Build(Var("y_15"))
                            , Seq(
                                Match(Var("a_16"))
                              , Build(
                                  Anno(
                                    Op("Cons", [Var("z_15"), Var("a_16")])
                                  , Var("b_16")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                , Id()
                , Scope(
                    ["c_16", "d_16", "e_16", "f_16", "g_16"]
                  , Seq(
                      Match(
                        Anno(
                          Op("Cons", [Var("c_16"), Var("d_16")])
                        , Var("g_16")
                        )
                      )
                    , Seq(
                        Build(Var("c_16"))
                      , Seq(
                          Match(Var("e_16"))
                        , Seq(
                            Build(Var("d_16"))
                          , Seq(
                              CallT(SVar("i_16"), [], [])
                            , Seq(
                                Match(Var("f_16"))
                              , Build(
                                  Anno(
                                    Op("Cons", [Var("e_16"), Var("f_16")])
                                  , Var("g_16")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            ]
          , CallT(SVar("i_16"), [], [])
          )
        )
      , SDefT(
          "eq_0_0"
        , []
        , []
        , Scope(
            ["j_16"]
          , Match(
              Anno(
                Op("", [Var("j_16"), Var("j_16")])
              , Wld()
              )
            )
          )
        )
      , SDefT(
          "oncetd_1_0"
        , [ VarDec(
              "k_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Let(
            [ SDefT(
                "l_16"
              , []
              , []
              , GuardedLChoice(
                  CallT(SVar("k_16"), [], [])
                , Id()
                , One(CallT(SVar("l_16"), [], []))
                )
              )
            ]
          , CallT(SVar("l_16"), [], [])
          )
        )
      , SDefT(
          "main_0_0"
        , []
        , []
        , CallT(
            SVar("oncetd_1_0")
          , [CallT(SVar("desugar_arrow_0_0"), [], [])]
          , []
          )
        )
      , SDefT(
          "Anno__Cong_____2_0"
        , [ VarDec(
              "q_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "r_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["m_16", "n_16", "o_16", "p_16"]
          , Seq(
              Match(Anno(Var("m_16"), Var("n_16")))
            , Seq(
                Build(Var("m_16"))
              , Seq(
                  CallT(SVar("q_16"), [], [])
                , Seq(
                    Match(Var("o_16"))
                  , Seq(
                      Build(Var("n_16"))
                    , Seq(
                        CallT(SVar("r_16"), [], [])
                      , Seq(
                          Match(Var("p_16"))
                        , Build(Anno(Var("o_16"), Var("p_16")))
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Nil_0_0"
        , []
        , []
        , Match(Anno(Op("Nil", []), Wld()))
        )
      , SDefT(
          "Cons_2_0"
        , [ VarDec(
              "s_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "t_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["e_28", "c_28", "d_28", "f_28", "g_28"]
          , Seq(
              Match(
                Anno(
                  Op("Cons", [Var("c_28"), Var("d_28")])
                , Var("e_28")
                )
              )
            , Seq(
                Build(Var("c_28"))
              , Seq(
                  CallT(SVar("s_16"), [], [])
                , Seq(
                    Match(Var("f_28"))
                  , Seq(
                      Build(Var("d_28"))
                    , Seq(
                        CallT(SVar("t_16"), [], [])
                      , Seq(
                          Match(Var("g_28"))
                        , Build(
                            Anno(
                              Op("Cons", [Var("f_28"), Var("g_28")])
                            , Var("e_28")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Conc_2_0"
        , [ VarDec(
              "u_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "v_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["j_28", "h_28", "i_28", "k_28", "l_28"]
          , Seq(
              Match(
                Anno(
                  Op("Conc", [Var("h_28"), Var("i_28")])
                , Var("j_28")
                )
              )
            , Seq(
                Build(Var("h_28"))
              , Seq(
                  CallT(SVar("u_16"), [], [])
                , Seq(
                    Match(Var("k_28"))
                  , Seq(
                      Build(Var("i_28"))
                    , Seq(
                        CallT(SVar("v_16"), [], [])
                      , Seq(
                          Match(Var("l_28"))
                        , Build(
                            Anno(
                              Op("Conc", [Var("k_28"), Var("l_28")])
                            , Var("j_28")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "_0_0"
        , []
        , []
        , Match(Anno(Op("", []), Wld()))
        )
      , SDefT(
          "_2_0"
        , [ VarDec(
              "w_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "x_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["o_28", "m_28", "n_28", "p_28", "q_28"]
          , Seq(
              Match(
                Anno(
                  Op("", [Var("m_28"), Var("n_28")])
                , Var("o_28")
                )
              )
            , Seq(
                Build(Var("m_28"))
              , Seq(
                  CallT(SVar("w_16"), [], [])
                , Seq(
                    Match(Var("p_28"))
                  , Seq(
                      Build(Var("n_28"))
                    , Seq(
                        CallT(SVar("x_16"), [], [])
                      , Seq(
                          Match(Var("q_28"))
                        , Build(
                            Anno(
                              Op("", [Var("p_28"), Var("q_28")])
                            , Var("o_28")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "_3_0"
        , [ VarDec(
              "y_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "z_16"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "a_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["u_28", "r_28", "s_28", "t_28", "v_28", "w_28", "x_28"]
          , Seq(
              Match(
                Anno(
                  Op(
                    ""
                  , [Var("r_28"), Var("s_28"), Var("t_28")]
                  )
                , Var("u_28")
                )
              )
            , Seq(
                Build(Var("r_28"))
              , Seq(
                  CallT(SVar("y_16"), [], [])
                , Seq(
                    Match(Var("v_28"))
                  , Seq(
                      Build(Var("s_28"))
                    , Seq(
                        CallT(SVar("z_16"), [], [])
                      , Seq(
                          Match(Var("w_28"))
                        , Seq(
                            Build(Var("t_28"))
                          , Seq(
                              CallT(SVar("a_17"), [], [])
                            , Seq(
                                Match(Var("x_28"))
                              , Build(
                                  Anno(
                                    Op(
                                      ""
                                    , [Var("v_28"), Var("w_28"), Var("x_28")]
                                    )
                                  , Var("u_28")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "StmtSeqOff_2_0"
        , [ VarDec(
              "b_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "c_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["a_29", "y_28", "z_28", "b_29", "c_29"]
          , Seq(
              Match(
                Anno(
                  Op("StmtSeqOff", [Var("y_28"), Var("z_28")])
                , Var("a_29")
                )
              )
            , Seq(
                Build(Var("y_28"))
              , Seq(
                  CallT(SVar("b_17"), [], [])
                , Seq(
                    Match(Var("b_29"))
                  , Seq(
                      Build(Var("z_28"))
                    , Seq(
                        CallT(SVar("c_17"), [], [])
                      , Seq(
                          Match(Var("c_29"))
                        , Build(
                            Anno(
                              Op("StmtSeqOff", [Var("b_29"), Var("c_29")])
                            , Var("a_29")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "DeclSeqOff_2_0"
        , [ VarDec(
              "d_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "e_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["f_29", "d_29", "e_29", "g_29", "h_29"]
          , Seq(
              Match(
                Anno(
                  Op("DeclSeqOff", [Var("d_29"), Var("e_29")])
                , Var("f_29")
                )
              )
            , Seq(
                Build(Var("d_29"))
              , Seq(
                  CallT(SVar("d_17"), [], [])
                , Seq(
                    Match(Var("g_29"))
                  , Seq(
                      Build(Var("e_29"))
                    , Seq(
                        CallT(SVar("e_17"), [], [])
                      , Seq(
                          Match(Var("h_29"))
                        , Build(
                            Anno(
                              Op("DeclSeqOff", [Var("g_29"), Var("h_29")])
                            , Var("f_29")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "AltSeqOff_2_0"
        , [ VarDec(
              "f_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "g_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["k_29", "i_29", "j_29", "l_29", "m_29"]
          , Seq(
              Match(
                Anno(
                  Op("AltSeqOff", [Var("i_29"), Var("j_29")])
                , Var("k_29")
                )
              )
            , Seq(
                Build(Var("i_29"))
              , Seq(
                  CallT(SVar("f_17"), [], [])
                , Seq(
                    Match(Var("l_29"))
                  , Seq(
                      Build(Var("j_29"))
                    , Seq(
                        CallT(SVar("g_17"), [], [])
                      , Seq(
                          Match(Var("m_29"))
                        , Build(
                            Anno(
                              Op("AltSeqOff", [Var("l_29"), Var("m_29")])
                            , Var("k_29")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TopdeclSeqOff_2_0"
        , [ VarDec(
              "h_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "i_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["p_29", "n_29", "o_29", "q_29", "r_29"]
          , Seq(
              Match(
                Anno(
                  Op("TopdeclSeqOff", [Var("n_29"), Var("o_29")])
                , Var("p_29")
                )
              )
            , Seq(
                Build(Var("n_29"))
              , Seq(
                  CallT(SVar("h_17"), [], [])
                , Seq(
                    Match(Var("q_29"))
                  , Seq(
                      Build(Var("o_29"))
                    , Seq(
                        CallT(SVar("i_17"), [], [])
                      , Seq(
                          Match(Var("r_29"))
                        , Build(
                            Anno(
                              Op("TopdeclSeqOff", [Var("q_29"), Var("r_29")])
                            , Var("p_29")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ImportdeclSeqOff_2_0"
        , [ VarDec(
              "j_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "k_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["u_29", "s_29", "t_29", "v_29", "w_29"]
          , Seq(
              Match(
                Anno(
                  Op("ImportdeclSeqOff", [Var("s_29"), Var("t_29")])
                , Var("u_29")
                )
              )
            , Seq(
                Build(Var("s_29"))
              , Seq(
                  CallT(SVar("j_17"), [], [])
                , Seq(
                    Match(Var("v_29"))
                  , Seq(
                      Build(Var("t_29"))
                    , Seq(
                        CallT(SVar("k_17"), [], [])
                      , Seq(
                          Match(Var("w_29"))
                        , Build(
                            Anno(
                              Op("ImportdeclSeqOff", [Var("v_29"), Var("w_29")])
                            , Var("u_29")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "FloatHash_1_0"
        , [ VarDec(
              "l_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["y_29", "x_29", "z_29"]
          , Seq(
              Match(
                Anno(Op("FloatHash", [Var("x_29")]), Var("y_29"))
              )
            , Seq(
                Build(Var("x_29"))
              , Seq(
                  CallT(SVar("l_17"), [], [])
                , Seq(
                    Match(Var("z_29"))
                  , Build(
                      Anno(Op("FloatHash", [Var("z_29")]), Var("y_29"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "IntegerHash_1_0"
        , [ VarDec(
              "m_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["b_30", "a_30", "c_30"]
          , Seq(
              Match(
                Anno(Op("IntegerHash", [Var("a_30")]), Var("b_30"))
              )
            , Seq(
                Build(Var("a_30"))
              , Seq(
                  CallT(SVar("m_17"), [], [])
                , Seq(
                    Match(Var("c_30"))
                  , Build(
                      Anno(Op("IntegerHash", [Var("c_30")]), Var("b_30"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "StringHash_1_0"
        , [ VarDec(
              "n_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["e_30", "d_30", "f_30"]
          , Seq(
              Match(
                Anno(Op("StringHash", [Var("d_30")]), Var("e_30"))
              )
            , Seq(
                Build(Var("d_30"))
              , Seq(
                  CallT(SVar("n_17"), [], [])
                , Seq(
                    Match(Var("f_30"))
                  , Build(
                      Anno(Op("StringHash", [Var("f_30")]), Var("e_30"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "CharHash_1_0"
        , [ VarDec(
              "o_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["h_30", "g_30", "i_30"]
          , Seq(
              Match(
                Anno(Op("CharHash", [Var("g_30")]), Var("h_30"))
              )
            , Seq(
                Build(Var("g_30"))
              , Seq(
                  CallT(SVar("o_17"), [], [])
                , Seq(
                    Match(Var("i_30"))
                  , Build(
                      Anno(Op("CharHash", [Var("i_30")]), Var("h_30"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "FlexibleContext_1_0"
        , [ VarDec(
              "p_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["k_30", "j_30", "l_30"]
          , Seq(
              Match(
                Anno(Op("FlexibleContext", [Var("j_30")]), Var("k_30"))
              )
            , Seq(
                Build(Var("j_30"))
              , Seq(
                  CallT(SVar("p_17"), [], [])
                , Seq(
                    Match(Var("l_30"))
                  , Build(
                      Anno(Op("FlexibleContext", [Var("l_30")]), Var("k_30"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "SimpleClassFle_2_0"
        , [ VarDec(
              "q_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "r_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["o_30", "m_30", "n_30", "p_30", "q_30"]
          , Seq(
              Match(
                Anno(
                  Op("SimpleClassFle", [Var("m_30"), Var("n_30")])
                , Var("o_30")
                )
              )
            , Seq(
                Build(Var("m_30"))
              , Seq(
                  CallT(SVar("q_17"), [], [])
                , Seq(
                    Match(Var("p_30"))
                  , Seq(
                      Build(Var("n_30"))
                    , Seq(
                        CallT(SVar("r_17"), [], [])
                      , Seq(
                          Match(Var("q_30"))
                        , Build(
                            Anno(
                              Op("SimpleClassFle", [Var("p_30"), Var("q_30")])
                            , Var("o_30")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ClassFlex_2_0"
        , [ VarDec(
              "s_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "t_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["t_30", "r_30", "s_30", "u_30", "v_30"]
          , Seq(
              Match(
                Anno(
                  Op("ClassFlex", [Var("r_30"), Var("s_30")])
                , Var("t_30")
                )
              )
            , Seq(
                Build(Var("r_30"))
              , Seq(
                  CallT(SVar("s_17"), [], [])
                , Seq(
                    Match(Var("u_30"))
                  , Seq(
                      Build(Var("s_30"))
                    , Seq(
                        CallT(SVar("t_17"), [], [])
                      , Seq(
                          Match(Var("v_30"))
                        , Build(
                            Anno(
                              Op("ClassFlex", [Var("u_30"), Var("v_30")])
                            , Var("t_30")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "StmtSeq_2_0"
        , [ VarDec(
              "u_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "v_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["y_30", "w_30", "x_30", "z_30", "a_31"]
          , Seq(
              Match(
                Anno(
                  Op("StmtSeq", [Var("w_30"), Var("x_30")])
                , Var("y_30")
                )
              )
            , Seq(
                Build(Var("w_30"))
              , Seq(
                  CallT(SVar("u_17"), [], [])
                , Seq(
                    Match(Var("z_30"))
                  , Seq(
                      Build(Var("x_30"))
                    , Seq(
                        CallT(SVar("v_17"), [], [])
                      , Seq(
                          Match(Var("a_31"))
                        , Build(
                            Anno(
                              Op("StmtSeq", [Var("z_30"), Var("a_31")])
                            , Var("y_30")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "StmtList_1_0"
        , [ VarDec(
              "w_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["c_31", "b_31", "d_31"]
          , Seq(
              Match(
                Anno(Op("StmtList", [Var("b_31")]), Var("c_31"))
              )
            , Seq(
                Build(Var("b_31"))
              , Seq(
                  CallT(SVar("w_17"), [], [])
                , Seq(
                    Match(Var("d_31"))
                  , Build(
                      Anno(Op("StmtList", [Var("d_31")]), Var("c_31"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "FBind_2_0"
        , [ VarDec(
              "x_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "y_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["g_31", "e_31", "f_31", "h_31", "i_31"]
          , Seq(
              Match(
                Anno(
                  Op("FBind", [Var("e_31"), Var("f_31")])
                , Var("g_31")
                )
              )
            , Seq(
                Build(Var("e_31"))
              , Seq(
                  CallT(SVar("x_17"), [], [])
                , Seq(
                    Match(Var("h_31"))
                  , Seq(
                      Build(Var("f_31"))
                    , Seq(
                        CallT(SVar("y_17"), [], [])
                      , Seq(
                          Match(Var("i_31"))
                        , Build(
                            Anno(
                              Op("FBind", [Var("h_31"), Var("i_31")])
                            , Var("g_31")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "LetStmt_1_0"
        , [ VarDec(
              "z_17"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["k_31", "j_31", "l_31"]
          , Seq(
              Match(
                Anno(Op("LetStmt", [Var("j_31")]), Var("k_31"))
              )
            , Seq(
                Build(Var("j_31"))
              , Seq(
                  CallT(SVar("z_17"), [], [])
                , Seq(
                    Match(Var("l_31"))
                  , Build(
                      Anno(Op("LetStmt", [Var("l_31")]), Var("k_31"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ExpStmt_1_0"
        , [ VarDec(
              "a_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["n_31", "m_31", "o_31"]
          , Seq(
              Match(
                Anno(Op("ExpStmt", [Var("m_31")]), Var("n_31"))
              )
            , Seq(
                Build(Var("m_31"))
              , Seq(
                  CallT(SVar("a_18"), [], [])
                , Seq(
                    Match(Var("o_31"))
                  , Build(
                      Anno(Op("ExpStmt", [Var("o_31")]), Var("n_31"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "BindStmt_2_0"
        , [ VarDec(
              "b_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "c_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["r_31", "p_31", "q_31", "s_31", "t_31"]
          , Seq(
              Match(
                Anno(
                  Op("BindStmt", [Var("p_31"), Var("q_31")])
                , Var("r_31")
                )
              )
            , Seq(
                Build(Var("p_31"))
              , Seq(
                  CallT(SVar("b_18"), [], [])
                , Seq(
                    Match(Var("s_31"))
                  , Seq(
                      Build(Var("q_31"))
                    , Seq(
                        CallT(SVar("c_18"), [], [])
                      , Seq(
                          Match(Var("t_31"))
                        , Build(
                            Anno(
                              Op("BindStmt", [Var("s_31"), Var("t_31")])
                            , Var("r_31")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ListCompr_2_0"
        , [ VarDec(
              "d_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "e_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["w_31", "u_31", "v_31", "x_31", "y_31"]
          , Seq(
              Match(
                Anno(
                  Op("ListCompr", [Var("u_31"), Var("v_31")])
                , Var("w_31")
                )
              )
            , Seq(
                Build(Var("u_31"))
              , Seq(
                  CallT(SVar("d_18"), [], [])
                , Seq(
                    Match(Var("x_31"))
                  , Seq(
                      Build(Var("v_31"))
                    , Seq(
                        CallT(SVar("e_18"), [], [])
                      , Seq(
                          Match(Var("y_31"))
                        , Build(
                            Anno(
                              Op("ListCompr", [Var("x_31"), Var("y_31")])
                            , Var("w_31")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ListFirstFromTo_3_0"
        , [ VarDec(
              "f_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "g_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "h_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["c_32", "z_31", "a_32", "b_32", "d_32", "e_32", "f_32"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "ListFirstFromTo"
                  , [Var("z_31"), Var("a_32"), Var("b_32")]
                  )
                , Var("c_32")
                )
              )
            , Seq(
                Build(Var("z_31"))
              , Seq(
                  CallT(SVar("f_18"), [], [])
                , Seq(
                    Match(Var("d_32"))
                  , Seq(
                      Build(Var("a_32"))
                    , Seq(
                        CallT(SVar("g_18"), [], [])
                      , Seq(
                          Match(Var("e_32"))
                        , Seq(
                            Build(Var("b_32"))
                          , Seq(
                              CallT(SVar("h_18"), [], [])
                            , Seq(
                                Match(Var("f_32"))
                              , Build(
                                  Anno(
                                    Op(
                                      "ListFirstFromTo"
                                    , [Var("d_32"), Var("e_32"), Var("f_32")]
                                    )
                                  , Var("c_32")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ListFromTo_2_0"
        , [ VarDec(
              "i_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "j_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["i_32", "g_32", "h_32", "j_32", "k_32"]
          , Seq(
              Match(
                Anno(
                  Op("ListFromTo", [Var("g_32"), Var("h_32")])
                , Var("i_32")
                )
              )
            , Seq(
                Build(Var("g_32"))
              , Seq(
                  CallT(SVar("i_18"), [], [])
                , Seq(
                    Match(Var("j_32"))
                  , Seq(
                      Build(Var("h_32"))
                    , Seq(
                        CallT(SVar("j_18"), [], [])
                      , Seq(
                          Match(Var("k_32"))
                        , Build(
                            Anno(
                              Op("ListFromTo", [Var("j_32"), Var("k_32")])
                            , Var("i_32")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ListFirstFrom_2_0"
        , [ VarDec(
              "k_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "l_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["n_32", "l_32", "m_32", "o_32", "p_32"]
          , Seq(
              Match(
                Anno(
                  Op("ListFirstFrom", [Var("l_32"), Var("m_32")])
                , Var("n_32")
                )
              )
            , Seq(
                Build(Var("l_32"))
              , Seq(
                  CallT(SVar("k_18"), [], [])
                , Seq(
                    Match(Var("o_32"))
                  , Seq(
                      Build(Var("m_32"))
                    , Seq(
                        CallT(SVar("l_18"), [], [])
                      , Seq(
                          Match(Var("p_32"))
                        , Build(
                            Anno(
                              Op("ListFirstFrom", [Var("o_32"), Var("p_32")])
                            , Var("n_32")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ListFrom_1_0"
        , [ VarDec(
              "m_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["r_32", "q_32", "s_32"]
          , Seq(
              Match(
                Anno(Op("ListFrom", [Var("q_32")]), Var("r_32"))
              )
            , Seq(
                Build(Var("q_32"))
              , Seq(
                  CallT(SVar("m_18"), [], [])
                , Seq(
                    Match(Var("s_32"))
                  , Build(
                      Anno(Op("ListFrom", [Var("s_32")]), Var("r_32"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "List_1_0"
        , [ VarDec(
              "n_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["u_32", "t_32", "v_32"]
          , Seq(
              Match(
                Anno(Op("List", [Var("t_32")]), Var("u_32"))
              )
            , Seq(
                Build(Var("t_32"))
              , Seq(
                  CallT(SVar("n_18"), [], [])
                , Seq(
                    Match(Var("v_32"))
                  , Build(
                      Anno(Op("List", [Var("v_32")]), Var("u_32"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "QualLet_1_0"
        , [ VarDec(
              "o_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["x_32", "w_32", "y_32"]
          , Seq(
              Match(
                Anno(Op("QualLet", [Var("w_32")]), Var("x_32"))
              )
            , Seq(
                Build(Var("w_32"))
              , Seq(
                  CallT(SVar("o_18"), [], [])
                , Seq(
                    Match(Var("y_32"))
                  , Build(
                      Anno(Op("QualLet", [Var("y_32")]), Var("x_32"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "QualBind_2_0"
        , [ VarDec(
              "p_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "q_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["b_33", "z_32", "a_33", "c_33", "d_33"]
          , Seq(
              Match(
                Anno(
                  Op("QualBind", [Var("z_32"), Var("a_33")])
                , Var("b_33")
                )
              )
            , Seq(
                Build(Var("z_32"))
              , Seq(
                  CallT(SVar("p_18"), [], [])
                , Seq(
                    Match(Var("c_33"))
                  , Seq(
                      Build(Var("a_33"))
                    , Seq(
                        CallT(SVar("q_18"), [], [])
                      , Seq(
                          Match(Var("d_33"))
                        , Build(
                            Anno(
                              Op("QualBind", [Var("c_33"), Var("d_33")])
                            , Var("b_33")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "PatBind_2_0"
        , [ VarDec(
              "r_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "s_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["g_33", "e_33", "f_33", "h_33", "i_33"]
          , Seq(
              Match(
                Anno(
                  Op("PatBind", [Var("e_33"), Var("f_33")])
                , Var("g_33")
                )
              )
            , Seq(
                Build(Var("e_33"))
              , Seq(
                  CallT(SVar("r_18"), [], [])
                , Seq(
                    Match(Var("h_33"))
                  , Seq(
                      Build(Var("f_33"))
                    , Seq(
                        CallT(SVar("s_18"), [], [])
                      , Seq(
                          Match(Var("i_33"))
                        , Build(
                            Anno(
                              Op("PatBind", [Var("h_33"), Var("i_33")])
                            , Var("g_33")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "LabeledPats_1_0"
        , [ VarDec(
              "t_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["k_33", "j_33", "l_33"]
          , Seq(
              Match(
                Anno(Op("LabeledPats", [Var("j_33")]), Var("k_33"))
              )
            , Seq(
                Build(Var("j_33"))
              , Seq(
                  CallT(SVar("t_18"), [], [])
                , Seq(
                    Match(Var("l_33"))
                  , Build(
                      Anno(Op("LabeledPats", [Var("l_33")]), Var("k_33"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Irrefutable_1_0"
        , [ VarDec(
              "u_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["n_33", "m_33", "o_33"]
          , Seq(
              Match(
                Anno(Op("Irrefutable", [Var("m_33")]), Var("n_33"))
              )
            , Seq(
                Build(Var("m_33"))
              , Seq(
                  CallT(SVar("u_18"), [], [])
                , Seq(
                    Match(Var("o_33"))
                  , Build(
                      Anno(Op("Irrefutable", [Var("o_33")]), Var("n_33"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ListPat_1_0"
        , [ VarDec(
              "v_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["q_33", "p_33", "r_33"]
          , Seq(
              Match(
                Anno(Op("ListPat", [Var("p_33")]), Var("q_33"))
              )
            , Seq(
                Build(Var("p_33"))
              , Seq(
                  CallT(SVar("v_18"), [], [])
                , Seq(
                    Match(Var("r_33"))
                  , Build(
                      Anno(Op("ListPat", [Var("r_33")]), Var("q_33"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TuplePat_2_0"
        , [ VarDec(
              "w_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "x_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["u_33", "s_33", "t_33", "v_33", "w_33"]
          , Seq(
              Match(
                Anno(
                  Op("TuplePat", [Var("s_33"), Var("t_33")])
                , Var("u_33")
                )
              )
            , Seq(
                Build(Var("s_33"))
              , Seq(
                  CallT(SVar("w_18"), [], [])
                , Seq(
                    Match(Var("v_33"))
                  , Seq(
                      Build(Var("t_33"))
                    , Seq(
                        CallT(SVar("x_18"), [], [])
                      , Seq(
                          Match(Var("w_33"))
                        , Build(
                            Anno(
                              Op("TuplePat", [Var("v_33"), Var("w_33")])
                            , Var("u_33")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Wildcard_0_0"
        , []
        , []
        , Match(Anno(Op("Wildcard", []), Wld()))
        )
      , SDefT(
          "LabeledPat_2_0"
        , [ VarDec(
              "y_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "z_18"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["z_33", "x_33", "y_33", "a_34", "b_34"]
          , Seq(
              Match(
                Anno(
                  Op("LabeledPat", [Var("x_33"), Var("y_33")])
                , Var("z_33")
                )
              )
            , Seq(
                Build(Var("x_33"))
              , Seq(
                  CallT(SVar("y_18"), [], [])
                , Seq(
                    Match(Var("a_34"))
                  , Seq(
                      Build(Var("y_33"))
                    , Seq(
                        CallT(SVar("z_18"), [], [])
                      , Seq(
                          Match(Var("b_34"))
                        , Build(
                            Anno(
                              Op("LabeledPat", [Var("a_34"), Var("b_34")])
                            , Var("z_33")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ConstrPat_1_0"
        , [ VarDec(
              "a_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["d_34", "c_34", "e_34"]
          , Seq(
              Match(
                Anno(Op("ConstrPat", [Var("c_34")]), Var("d_34"))
              )
            , Seq(
                Build(Var("c_34"))
              , Seq(
                  CallT(SVar("a_19"), [], [])
                , Seq(
                    Match(Var("e_34"))
                  , Build(
                      Anno(Op("ConstrPat", [Var("e_34")]), Var("d_34"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "NamedPat_2_0"
        , [ VarDec(
              "b_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "c_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["h_34", "f_34", "g_34", "i_34", "j_34"]
          , Seq(
              Match(
                Anno(
                  Op("NamedPat", [Var("f_34"), Var("g_34")])
                , Var("h_34")
                )
              )
            , Seq(
                Build(Var("f_34"))
              , Seq(
                  CallT(SVar("b_19"), [], [])
                , Seq(
                    Match(Var("i_34"))
                  , Seq(
                      Build(Var("g_34"))
                    , Seq(
                        CallT(SVar("c_19"), [], [])
                      , Seq(
                          Match(Var("j_34"))
                        , Build(
                            Anno(
                              Op("NamedPat", [Var("i_34"), Var("j_34")])
                            , Var("h_34")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ConstrApp_2_0"
        , [ VarDec(
              "d_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "e_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["m_34", "k_34", "l_34", "n_34", "o_34"]
          , Seq(
              Match(
                Anno(
                  Op("ConstrApp", [Var("k_34"), Var("l_34")])
                , Var("m_34")
                )
              )
            , Seq(
                Build(Var("k_34"))
              , Seq(
                  CallT(SVar("d_19"), [], [])
                , Seq(
                    Match(Var("n_34"))
                  , Seq(
                      Build(Var("l_34"))
                    , Seq(
                        CallT(SVar("e_19"), [], [])
                      , Seq(
                          Match(Var("o_34"))
                        , Build(
                            Anno(
                              Op("ConstrApp", [Var("n_34"), Var("o_34")])
                            , Var("m_34")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "NegationPat_1_0"
        , [ VarDec(
              "f_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["q_34", "p_34", "r_34"]
          , Seq(
              Match(
                Anno(Op("NegationPat", [Var("p_34")]), Var("q_34"))
              )
            , Seq(
                Build(Var("p_34"))
              , Seq(
                  CallT(SVar("f_19"), [], [])
                , Seq(
                    Match(Var("r_34"))
                  , Build(
                      Anno(Op("NegationPat", [Var("r_34")]), Var("q_34"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "BinOpApp_3_0"
        , [ VarDec(
              "g_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "h_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "i_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["v_34", "s_34", "t_34", "u_34", "w_34", "x_34", "y_34"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "BinOpApp"
                  , [Var("s_34"), Var("t_34"), Var("u_34")]
                  )
                , Var("v_34")
                )
              )
            , Seq(
                Build(Var("s_34"))
              , Seq(
                  CallT(SVar("g_19"), [], [])
                , Seq(
                    Match(Var("w_34"))
                  , Seq(
                      Build(Var("t_34"))
                    , Seq(
                        CallT(SVar("h_19"), [], [])
                      , Seq(
                          Match(Var("x_34"))
                        , Seq(
                            Build(Var("u_34"))
                          , Seq(
                              CallT(SVar("i_19"), [], [])
                            , Seq(
                                Match(Var("y_34"))
                              , Build(
                                  Anno(
                                    Op(
                                      "BinOpApp"
                                    , [Var("w_34"), Var("x_34"), Var("y_34")]
                                    )
                                  , Var("v_34")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "DeclSeq_2_0"
        , [ VarDec(
              "j_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "k_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["b_35", "z_34", "a_35", "c_35", "d_35"]
          , Seq(
              Match(
                Anno(
                  Op("DeclSeq", [Var("z_34"), Var("a_35")])
                , Var("b_35")
                )
              )
            , Seq(
                Build(Var("z_34"))
              , Seq(
                  CallT(SVar("j_19"), [], [])
                , Seq(
                    Match(Var("c_35"))
                  , Seq(
                      Build(Var("a_35"))
                    , Seq(
                        CallT(SVar("k_19"), [], [])
                      , Seq(
                          Match(Var("d_35"))
                        , Build(
                            Anno(
                              Op("DeclSeq", [Var("c_35"), Var("d_35")])
                            , Var("b_35")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "DeclList_1_0"
        , [ VarDec(
              "l_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["f_35", "e_35", "g_35"]
          , Seq(
              Match(
                Anno(Op("DeclList", [Var("e_35")]), Var("f_35"))
              )
            , Seq(
                Build(Var("e_35"))
              , Seq(
                  CallT(SVar("l_19"), [], [])
                , Seq(
                    Match(Var("g_35"))
                  , Build(
                      Anno(Op("DeclList", [Var("g_35")]), Var("f_35"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Where_1_0"
        , [ VarDec(
              "m_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["i_35", "h_35", "j_35"]
          , Seq(
              Match(
                Anno(Op("Where", [Var("h_35")]), Var("i_35"))
              )
            , Seq(
                Build(Var("h_35"))
              , Seq(
                  CallT(SVar("m_19"), [], [])
                , Seq(
                    Match(Var("j_35"))
                  , Build(
                      Anno(Op("Where", [Var("j_35")]), Var("i_35"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "NestedFunLHS_2_0"
        , [ VarDec(
              "n_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "o_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["m_35", "k_35", "l_35", "n_35", "o_35"]
          , Seq(
              Match(
                Anno(
                  Op("NestedFunLHS", [Var("k_35"), Var("l_35")])
                , Var("m_35")
                )
              )
            , Seq(
                Build(Var("k_35"))
              , Seq(
                  CallT(SVar("n_19"), [], [])
                , Seq(
                    Match(Var("n_35"))
                  , Seq(
                      Build(Var("l_35"))
                    , Seq(
                        CallT(SVar("o_19"), [], [])
                      , Seq(
                          Match(Var("o_35"))
                        , Build(
                            Anno(
                              Op("NestedFunLHS", [Var("n_35"), Var("o_35")])
                            , Var("m_35")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "OpFunLHS_3_0"
        , [ VarDec(
              "p_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "q_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "r_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["s_35", "p_35", "q_35", "r_35", "t_35", "u_35", "v_35"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "OpFunLHS"
                  , [Var("p_35"), Var("q_35"), Var("r_35")]
                  )
                , Var("s_35")
                )
              )
            , Seq(
                Build(Var("p_35"))
              , Seq(
                  CallT(SVar("p_19"), [], [])
                , Seq(
                    Match(Var("t_35"))
                  , Seq(
                      Build(Var("q_35"))
                    , Seq(
                        CallT(SVar("q_19"), [], [])
                      , Seq(
                          Match(Var("u_35"))
                        , Seq(
                            Build(Var("r_35"))
                          , Seq(
                              CallT(SVar("r_19"), [], [])
                            , Seq(
                                Match(Var("v_35"))
                              , Build(
                                  Anno(
                                    Op(
                                      "OpFunLHS"
                                    , [Var("t_35"), Var("u_35"), Var("v_35")]
                                    )
                                  , Var("s_35")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "VarFunLHS_2_0"
        , [ VarDec(
              "s_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "t_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["y_35", "w_35", "x_35", "z_35", "a_36"]
          , Seq(
              Match(
                Anno(
                  Op("VarFunLHS", [Var("w_35"), Var("x_35")])
                , Var("y_35")
                )
              )
            , Seq(
                Build(Var("w_35"))
              , Seq(
                  CallT(SVar("s_19"), [], [])
                , Seq(
                    Match(Var("z_35"))
                  , Seq(
                      Build(Var("x_35"))
                    , Seq(
                        CallT(SVar("t_19"), [], [])
                      , Seq(
                          Match(Var("a_36"))
                        , Build(
                            Anno(
                              Op("VarFunLHS", [Var("z_35"), Var("a_36")])
                            , Var("y_35")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Guarded_2_0"
        , [ VarDec(
              "u_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "v_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["d_36", "b_36", "c_36", "e_36", "f_36"]
          , Seq(
              Match(
                Anno(
                  Op("Guarded", [Var("b_36"), Var("c_36")])
                , Var("d_36")
                )
              )
            , Seq(
                Build(Var("b_36"))
              , Seq(
                  CallT(SVar("u_19"), [], [])
                , Seq(
                    Match(Var("e_36"))
                  , Seq(
                      Build(Var("c_36"))
                    , Seq(
                        CallT(SVar("v_19"), [], [])
                      , Seq(
                          Match(Var("f_36"))
                        , Build(
                            Anno(
                              Op("Guarded", [Var("e_36"), Var("f_36")])
                            , Var("d_36")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "GdValdef_3_0"
        , [ VarDec(
              "w_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "x_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "y_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["j_36", "g_36", "h_36", "i_36", "k_36", "l_36", "m_36"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "GdValdef"
                  , [Var("g_36"), Var("h_36"), Var("i_36")]
                  )
                , Var("j_36")
                )
              )
            , Seq(
                Build(Var("g_36"))
              , Seq(
                  CallT(SVar("w_19"), [], [])
                , Seq(
                    Match(Var("k_36"))
                  , Seq(
                      Build(Var("h_36"))
                    , Seq(
                        CallT(SVar("x_19"), [], [])
                      , Seq(
                          Match(Var("l_36"))
                        , Seq(
                            Build(Var("i_36"))
                          , Seq(
                              CallT(SVar("y_19"), [], [])
                            , Seq(
                                Match(Var("m_36"))
                              , Build(
                                  Anno(
                                    Op(
                                      "GdValdef"
                                    , [Var("k_36"), Var("l_36"), Var("m_36")]
                                    )
                                  , Var("j_36")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Valdef_3_0"
        , [ VarDec(
              "z_19"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "a_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "b_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["q_36", "n_36", "o_36", "p_36", "r_36", "s_36", "t_36"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "Valdef"
                  , [Var("n_36"), Var("o_36"), Var("p_36")]
                  )
                , Var("q_36")
                )
              )
            , Seq(
                Build(Var("n_36"))
              , Seq(
                  CallT(SVar("z_19"), [], [])
                , Seq(
                    Match(Var("r_36"))
                  , Seq(
                      Build(Var("o_36"))
                    , Seq(
                        CallT(SVar("a_20"), [], [])
                      , Seq(
                          Match(Var("s_36"))
                        , Seq(
                            Build(Var("p_36"))
                          , Seq(
                              CallT(SVar("b_20"), [], [])
                            , Seq(
                                Match(Var("t_36"))
                              , Build(
                                  Anno(
                                    Op(
                                      "Valdef"
                                    , [Var("r_36"), Var("s_36"), Var("t_36")]
                                    )
                                  , Var("q_36")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "AltSeq_2_0"
        , [ VarDec(
              "c_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "d_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["w_36", "u_36", "v_36", "x_36", "y_36"]
          , Seq(
              Match(
                Anno(
                  Op("AltSeq", [Var("u_36"), Var("v_36")])
                , Var("w_36")
                )
              )
            , Seq(
                Build(Var("u_36"))
              , Seq(
                  CallT(SVar("c_20"), [], [])
                , Seq(
                    Match(Var("x_36"))
                  , Seq(
                      Build(Var("v_36"))
                    , Seq(
                        CallT(SVar("d_20"), [], [])
                      , Seq(
                          Match(Var("y_36"))
                        , Build(
                            Anno(
                              Op("AltSeq", [Var("x_36"), Var("y_36")])
                            , Var("w_36")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "AltList_1_0"
        , [ VarDec(
              "e_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["a_37", "z_36", "b_37"]
          , Seq(
              Match(
                Anno(Op("AltList", [Var("z_36")]), Var("a_37"))
              )
            , Seq(
                Build(Var("z_36"))
              , Seq(
                  CallT(SVar("e_20"), [], [])
                , Seq(
                    Match(Var("b_37"))
                  , Build(
                      Anno(Op("AltList", [Var("b_37")]), Var("a_37"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "GdPat_2_0"
        , [ VarDec(
              "f_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "g_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["e_37", "c_37", "d_37", "f_37", "g_37"]
          , Seq(
              Match(
                Anno(
                  Op("GdPat", [Var("c_37"), Var("d_37")])
                , Var("e_37")
                )
              )
            , Seq(
                Build(Var("c_37"))
              , Seq(
                  CallT(SVar("f_20"), [], [])
                , Seq(
                    Match(Var("f_37"))
                  , Seq(
                      Build(Var("d_37"))
                    , Seq(
                        CallT(SVar("g_20"), [], [])
                      , Seq(
                          Match(Var("g_37"))
                        , Build(
                            Anno(
                              Op("GdPat", [Var("f_37"), Var("g_37")])
                            , Var("e_37")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "GdAlt_3_0"
        , [ VarDec(
              "h_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "i_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "j_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["k_37", "h_37", "i_37", "j_37", "l_37", "m_37", "n_37"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "GdAlt"
                  , [Var("h_37"), Var("i_37"), Var("j_37")]
                  )
                , Var("k_37")
                )
              )
            , Seq(
                Build(Var("h_37"))
              , Seq(
                  CallT(SVar("h_20"), [], [])
                , Seq(
                    Match(Var("l_37"))
                  , Seq(
                      Build(Var("i_37"))
                    , Seq(
                        CallT(SVar("i_20"), [], [])
                      , Seq(
                          Match(Var("m_37"))
                        , Seq(
                            Build(Var("j_37"))
                          , Seq(
                              CallT(SVar("j_20"), [], [])
                            , Seq(
                                Match(Var("n_37"))
                              , Build(
                                  Anno(
                                    Op(
                                      "GdAlt"
                                    , [Var("l_37"), Var("m_37"), Var("n_37")]
                                    )
                                  , Var("k_37")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Alt_3_0"
        , [ VarDec(
              "k_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "l_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "m_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["r_37", "o_37", "p_37", "q_37", "s_37", "t_37", "u_37"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "Alt"
                  , [Var("o_37"), Var("p_37"), Var("q_37")]
                  )
                , Var("r_37")
                )
              )
            , Seq(
                Build(Var("o_37"))
              , Seq(
                  CallT(SVar("k_20"), [], [])
                , Seq(
                    Match(Var("s_37"))
                  , Seq(
                      Build(Var("p_37"))
                    , Seq(
                        CallT(SVar("l_20"), [], [])
                      , Seq(
                          Match(Var("t_37"))
                        , Seq(
                            Build(Var("q_37"))
                          , Seq(
                              CallT(SVar("m_20"), [], [])
                            , Seq(
                                Match(Var("u_37"))
                              , Build(
                                  Anno(
                                    Op(
                                      "Alt"
                                    , [Var("s_37"), Var("t_37"), Var("u_37")]
                                    )
                                  , Var("r_37")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "LabelBinds_1_0"
        , [ VarDec(
              "n_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["w_37", "v_37", "x_37"]
          , Seq(
              Match(
                Anno(Op("LabelBinds", [Var("v_37")]), Var("w_37"))
              )
            , Seq(
                Build(Var("v_37"))
              , Seq(
                  CallT(SVar("n_20"), [], [])
                , Seq(
                    Match(Var("x_37"))
                  , Build(
                      Anno(Op("LabelBinds", [Var("x_37")]), Var("w_37"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "FixDecl_3_0"
        , [ VarDec(
              "o_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "p_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "q_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["b_38", "y_37", "z_37", "a_38", "c_38", "d_38", "e_38"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "FixDecl"
                  , [Var("y_37"), Var("z_37"), Var("a_38")]
                  )
                , Var("b_38")
                )
              )
            , Seq(
                Build(Var("y_37"))
              , Seq(
                  CallT(SVar("o_20"), [], [])
                , Seq(
                    Match(Var("c_38"))
                  , Seq(
                      Build(Var("z_37"))
                    , Seq(
                        CallT(SVar("p_20"), [], [])
                      , Seq(
                          Match(Var("d_38"))
                        , Seq(
                            Build(Var("a_38"))
                          , Seq(
                              CallT(SVar("q_20"), [], [])
                            , Seq(
                                Match(Var("e_38"))
                              , Build(
                                  Anno(
                                    Op(
                                      "FixDecl"
                                    , [Var("c_38"), Var("d_38"), Var("e_38")]
                                    )
                                  , Var("b_38")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "InfixR_0_0"
        , []
        , []
        , Match(Anno(Op("InfixR", []), Wld()))
        )
      , SDefT(
          "InfixL_0_0"
        , []
        , []
        , Match(Anno(Op("InfixL", []), Wld()))
        )
      , SDefT(
          "Infix_0_0"
        , []
        , []
        , Match(Anno(Op("Infix", []), Wld()))
        )
      , SDefT(
          "ECons_2_0"
        , [ VarDec(
              "r_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "s_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["h_38", "f_38", "g_38", "i_38", "j_38"]
          , Seq(
              Match(
                Anno(
                  Op("ECons", [Var("f_38"), Var("g_38")])
                , Var("h_38")
                )
              )
            , Seq(
                Build(Var("f_38"))
              , Seq(
                  CallT(SVar("r_20"), [], [])
                , Seq(
                    Match(Var("i_38"))
                  , Seq(
                      Build(Var("g_38"))
                    , Seq(
                        CallT(SVar("s_20"), [], [])
                      , Seq(
                          Match(Var("j_38"))
                        , Build(
                            Anno(
                              Op("ECons", [Var("i_38"), Var("j_38")])
                            , Var("h_38")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrOpApp_3_0"
        , [ VarDec(
              "t_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "u_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "v_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["n_38", "k_38", "l_38", "m_38", "o_38", "p_38", "q_38"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "ArrOpApp"
                  , [Var("k_38"), Var("l_38"), Var("m_38")]
                  )
                , Var("n_38")
                )
              )
            , Seq(
                Build(Var("k_38"))
              , Seq(
                  CallT(SVar("t_20"), [], [])
                , Seq(
                    Match(Var("o_38"))
                  , Seq(
                      Build(Var("l_38"))
                    , Seq(
                        CallT(SVar("u_20"), [], [])
                      , Seq(
                          Match(Var("p_38"))
                        , Seq(
                            Build(Var("m_38"))
                          , Seq(
                              CallT(SVar("v_20"), [], [])
                            , Seq(
                                Match(Var("q_38"))
                              , Build(
                                  Anno(
                                    Op(
                                      "ArrOpApp"
                                    , [Var("o_38"), Var("p_38"), Var("q_38")]
                                    )
                                  , Var("n_38")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrForm_2_0"
        , [ VarDec(
              "w_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "x_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["t_38", "r_38", "s_38", "u_38", "v_38"]
          , Seq(
              Match(
                Anno(
                  Op("ArrForm", [Var("r_38"), Var("s_38")])
                , Var("t_38")
                )
              )
            , Seq(
                Build(Var("r_38"))
              , Seq(
                  CallT(SVar("w_20"), [], [])
                , Seq(
                    Match(Var("u_38"))
                  , Seq(
                      Build(Var("s_38"))
                    , Seq(
                        CallT(SVar("x_20"), [], [])
                      , Seq(
                          Match(Var("v_38"))
                        , Build(
                            Anno(
                              Op("ArrForm", [Var("u_38"), Var("v_38")])
                            , Var("t_38")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrAppBin_2_0"
        , [ VarDec(
              "y_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "z_20"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["y_38", "w_38", "x_38", "z_38", "a_39"]
          , Seq(
              Match(
                Anno(
                  Op("ArrAppBin", [Var("w_38"), Var("x_38")])
                , Var("y_38")
                )
              )
            , Seq(
                Build(Var("w_38"))
              , Seq(
                  CallT(SVar("y_20"), [], [])
                , Seq(
                    Match(Var("z_38"))
                  , Seq(
                      Build(Var("x_38"))
                    , Seq(
                        CallT(SVar("z_20"), [], [])
                      , Seq(
                          Match(Var("a_39"))
                        , Build(
                            Anno(
                              Op("ArrAppBin", [Var("z_38"), Var("a_39")])
                            , Var("y_38")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrDo_1_0"
        , [ VarDec(
              "a_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["c_39", "b_39", "d_39"]
          , Seq(
              Match(
                Anno(Op("ArrDo", [Var("b_39")]), Var("c_39"))
              )
            , Seq(
                Build(Var("b_39"))
              , Seq(
                  CallT(SVar("a_21"), [], [])
                , Seq(
                    Match(Var("d_39"))
                  , Build(
                      Anno(Op("ArrDo", [Var("d_39")]), Var("c_39"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrCase_2_0"
        , [ VarDec(
              "b_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "c_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["g_39", "e_39", "f_39", "h_39", "i_39"]
          , Seq(
              Match(
                Anno(
                  Op("ArrCase", [Var("e_39"), Var("f_39")])
                , Var("g_39")
                )
              )
            , Seq(
                Build(Var("e_39"))
              , Seq(
                  CallT(SVar("b_21"), [], [])
                , Seq(
                    Match(Var("h_39"))
                  , Seq(
                      Build(Var("f_39"))
                    , Seq(
                        CallT(SVar("c_21"), [], [])
                      , Seq(
                          Match(Var("i_39"))
                        , Build(
                            Anno(
                              Op("ArrCase", [Var("h_39"), Var("i_39")])
                            , Var("g_39")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrIf_3_0"
        , [ VarDec(
              "d_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "e_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "f_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["m_39", "j_39", "k_39", "l_39", "n_39", "o_39", "p_39"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "ArrIf"
                  , [Var("j_39"), Var("k_39"), Var("l_39")]
                  )
                , Var("m_39")
                )
              )
            , Seq(
                Build(Var("j_39"))
              , Seq(
                  CallT(SVar("d_21"), [], [])
                , Seq(
                    Match(Var("n_39"))
                  , Seq(
                      Build(Var("k_39"))
                    , Seq(
                        CallT(SVar("e_21"), [], [])
                      , Seq(
                          Match(Var("o_39"))
                        , Seq(
                            Build(Var("l_39"))
                          , Seq(
                              CallT(SVar("f_21"), [], [])
                            , Seq(
                                Match(Var("p_39"))
                              , Build(
                                  Anno(
                                    Op(
                                      "ArrIf"
                                    , [Var("n_39"), Var("o_39"), Var("p_39")]
                                    )
                                  , Var("m_39")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrLet_2_0"
        , [ VarDec(
              "g_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "h_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["s_39", "q_39", "r_39", "t_39", "u_39"]
          , Seq(
              Match(
                Anno(
                  Op("ArrLet", [Var("q_39"), Var("r_39")])
                , Var("s_39")
                )
              )
            , Seq(
                Build(Var("q_39"))
              , Seq(
                  CallT(SVar("g_21"), [], [])
                , Seq(
                    Match(Var("t_39"))
                  , Seq(
                      Build(Var("r_39"))
                    , Seq(
                        CallT(SVar("h_21"), [], [])
                      , Seq(
                          Match(Var("u_39"))
                        , Build(
                            Anno(
                              Op("ArrLet", [Var("t_39"), Var("u_39")])
                            , Var("s_39")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrAbs_2_0"
        , [ VarDec(
              "i_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "j_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["x_39", "v_39", "w_39", "y_39", "z_39"]
          , Seq(
              Match(
                Anno(
                  Op("ArrAbs", [Var("v_39"), Var("w_39")])
                , Var("x_39")
                )
              )
            , Seq(
                Build(Var("v_39"))
              , Seq(
                  CallT(SVar("i_21"), [], [])
                , Seq(
                    Match(Var("y_39"))
                  , Seq(
                      Build(Var("w_39"))
                    , Seq(
                        CallT(SVar("j_21"), [], [])
                      , Seq(
                          Match(Var("z_39"))
                        , Build(
                            Anno(
                              Op("ArrAbs", [Var("y_39"), Var("z_39")])
                            , Var("x_39")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrHigher_2_0"
        , [ VarDec(
              "k_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "l_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["c_40", "a_40", "b_40", "d_40", "e_40"]
          , Seq(
              Match(
                Anno(
                  Op("ArrHigher", [Var("a_40"), Var("b_40")])
                , Var("c_40")
                )
              )
            , Seq(
                Build(Var("a_40"))
              , Seq(
                  CallT(SVar("k_21"), [], [])
                , Seq(
                    Match(Var("d_40"))
                  , Seq(
                      Build(Var("b_40"))
                    , Seq(
                        CallT(SVar("l_21"), [], [])
                      , Seq(
                          Match(Var("e_40"))
                        , Build(
                            Anno(
                              Op("ArrHigher", [Var("d_40"), Var("e_40")])
                            , Var("c_40")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrFirst_2_0"
        , [ VarDec(
              "m_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "n_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["h_40", "f_40", "g_40", "i_40", "j_40"]
          , Seq(
              Match(
                Anno(
                  Op("ArrFirst", [Var("f_40"), Var("g_40")])
                , Var("h_40")
                )
              )
            , Seq(
                Build(Var("f_40"))
              , Seq(
                  CallT(SVar("m_21"), [], [])
                , Seq(
                    Match(Var("i_40"))
                  , Seq(
                      Build(Var("g_40"))
                    , Seq(
                        CallT(SVar("n_21"), [], [])
                      , Seq(
                          Match(Var("j_40"))
                        , Build(
                            Anno(
                              Op("ArrFirst", [Var("i_40"), Var("j_40")])
                            , Var("h_40")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Typed_3_0"
        , [ VarDec(
              "o_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "p_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "q_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["n_40", "k_40", "l_40", "m_40", "o_40", "p_40", "q_40"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "Typed"
                  , [Var("k_40"), Var("l_40"), Var("m_40")]
                  )
                , Var("n_40")
                )
              )
            , Seq(
                Build(Var("k_40"))
              , Seq(
                  CallT(SVar("o_21"), [], [])
                , Seq(
                    Match(Var("o_40"))
                  , Seq(
                      Build(Var("l_40"))
                    , Seq(
                        CallT(SVar("p_21"), [], [])
                      , Seq(
                          Match(Var("p_40"))
                        , Seq(
                            Build(Var("m_40"))
                          , Seq(
                              CallT(SVar("q_21"), [], [])
                            , Seq(
                                Match(Var("q_40"))
                              , Build(
                                  Anno(
                                    Op(
                                      "Typed"
                                    , [Var("o_40"), Var("p_40"), Var("q_40")]
                                    )
                                  , Var("n_40")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Negation_1_0"
        , [ VarDec(
              "r_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["s_40", "r_40", "t_40"]
          , Seq(
              Match(
                Anno(Op("Negation", [Var("r_40")]), Var("s_40"))
              )
            , Seq(
                Build(Var("r_40"))
              , Seq(
                  CallT(SVar("r_21"), [], [])
                , Seq(
                    Match(Var("t_40"))
                  , Build(
                      Anno(Op("Negation", [Var("t_40")]), Var("s_40"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Labeled_2_0"
        , [ VarDec(
              "s_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "t_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["w_40", "u_40", "v_40", "x_40", "y_40"]
          , Seq(
              Match(
                Anno(
                  Op("Labeled", [Var("u_40"), Var("v_40")])
                , Var("w_40")
                )
              )
            , Seq(
                Build(Var("u_40"))
              , Seq(
                  CallT(SVar("s_21"), [], [])
                , Seq(
                    Match(Var("x_40"))
                  , Seq(
                      Build(Var("v_40"))
                    , Seq(
                        CallT(SVar("t_21"), [], [])
                      , Seq(
                          Match(Var("y_40"))
                        , Build(
                            Anno(
                              Op("Labeled", [Var("x_40"), Var("y_40")])
                            , Var("w_40")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Named_2_0"
        , [ VarDec(
              "u_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "v_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["b_41", "z_40", "a_41", "c_41", "d_41"]
          , Seq(
              Match(
                Anno(
                  Op("Named", [Var("z_40"), Var("a_41")])
                , Var("b_41")
                )
              )
            , Seq(
                Build(Var("z_40"))
              , Seq(
                  CallT(SVar("u_21"), [], [])
                , Seq(
                    Match(Var("c_41"))
                  , Seq(
                      Build(Var("a_41"))
                    , Seq(
                        CallT(SVar("v_21"), [], [])
                      , Seq(
                          Match(Var("d_41"))
                        , Build(
                            Anno(
                              Op("Named", [Var("c_41"), Var("d_41")])
                            , Var("b_41")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "OpApp_3_0"
        , [ VarDec(
              "w_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "x_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "y_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["h_41", "e_41", "f_41", "g_41", "i_41", "j_41", "k_41"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "OpApp"
                  , [Var("e_41"), Var("f_41"), Var("g_41")]
                  )
                , Var("h_41")
                )
              )
            , Seq(
                Build(Var("e_41"))
              , Seq(
                  CallT(SVar("w_21"), [], [])
                , Seq(
                    Match(Var("i_41"))
                  , Seq(
                      Build(Var("f_41"))
                    , Seq(
                        CallT(SVar("x_21"), [], [])
                      , Seq(
                          Match(Var("j_41"))
                        , Seq(
                            Build(Var("g_41"))
                          , Seq(
                              CallT(SVar("y_21"), [], [])
                            , Seq(
                                Match(Var("k_41"))
                              , Build(
                                  Anno(
                                    Op(
                                      "OpApp"
                                    , [Var("i_41"), Var("j_41"), Var("k_41")]
                                    )
                                  , Var("h_41")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "AppBin_2_0"
        , [ VarDec(
              "z_21"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "a_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["n_41", "l_41", "m_41", "o_41", "p_41"]
          , Seq(
              Match(
                Anno(
                  Op("AppBin", [Var("l_41"), Var("m_41")])
                , Var("n_41")
                )
              )
            , Seq(
                Build(Var("l_41"))
              , Seq(
                  CallT(SVar("z_21"), [], [])
                , Seq(
                    Match(Var("o_41"))
                  , Seq(
                      Build(Var("m_41"))
                    , Seq(
                        CallT(SVar("a_22"), [], [])
                      , Seq(
                          Match(Var("p_41"))
                        , Build(
                            Anno(
                              Op("AppBin", [Var("o_41"), Var("p_41")])
                            , Var("n_41")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Case_2_0"
        , [ VarDec(
              "b_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "c_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["s_41", "q_41", "r_41", "t_41", "u_41"]
          , Seq(
              Match(
                Anno(
                  Op("Case", [Var("q_41"), Var("r_41")])
                , Var("s_41")
                )
              )
            , Seq(
                Build(Var("q_41"))
              , Seq(
                  CallT(SVar("b_22"), [], [])
                , Seq(
                    Match(Var("t_41"))
                  , Seq(
                      Build(Var("r_41"))
                    , Seq(
                        CallT(SVar("c_22"), [], [])
                      , Seq(
                          Match(Var("u_41"))
                        , Build(
                            Anno(
                              Op("Case", [Var("t_41"), Var("u_41")])
                            , Var("s_41")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Do_1_0"
        , [ VarDec(
              "d_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["w_41", "v_41", "x_41"]
          , Seq(
              Match(
                Anno(Op("Do", [Var("v_41")]), Var("w_41"))
              )
            , Seq(
                Build(Var("v_41"))
              , Seq(
                  CallT(SVar("d_22"), [], [])
                , Seq(
                    Match(Var("x_41"))
                  , Build(
                      Anno(Op("Do", [Var("x_41")]), Var("w_41"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "If_3_0"
        , [ VarDec(
              "e_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "f_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "g_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["b_42", "y_41", "z_41", "a_42", "c_42", "d_42", "e_42"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "If"
                  , [Var("y_41"), Var("z_41"), Var("a_42")]
                  )
                , Var("b_42")
                )
              )
            , Seq(
                Build(Var("y_41"))
              , Seq(
                  CallT(SVar("e_22"), [], [])
                , Seq(
                    Match(Var("c_42"))
                  , Seq(
                      Build(Var("z_41"))
                    , Seq(
                        CallT(SVar("f_22"), [], [])
                      , Seq(
                          Match(Var("d_42"))
                        , Seq(
                            Build(Var("a_42"))
                          , Seq(
                              CallT(SVar("g_22"), [], [])
                            , Seq(
                                Match(Var("e_42"))
                              , Build(
                                  Anno(
                                    Op(
                                      "If"
                                    , [Var("c_42"), Var("d_42"), Var("e_42")]
                                    )
                                  , Var("b_42")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Let_2_0"
        , [ VarDec(
              "h_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "i_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["h_42", "f_42", "g_42", "i_42", "j_42"]
          , Seq(
              Match(
                Anno(
                  Op("Let", [Var("f_42"), Var("g_42")])
                , Var("h_42")
                )
              )
            , Seq(
                Build(Var("f_42"))
              , Seq(
                  CallT(SVar("h_22"), [], [])
                , Seq(
                    Match(Var("i_42"))
                  , Seq(
                      Build(Var("g_42"))
                    , Seq(
                        CallT(SVar("i_22"), [], [])
                      , Seq(
                          Match(Var("j_42"))
                        , Build(
                            Anno(
                              Op("Let", [Var("i_42"), Var("j_42")])
                            , Var("h_42")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Abs_2_0"
        , [ VarDec(
              "j_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "k_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["m_42", "k_42", "l_42", "n_42", "o_42"]
          , Seq(
              Match(
                Anno(
                  Op("Abs", [Var("k_42"), Var("l_42")])
                , Var("m_42")
                )
              )
            , Seq(
                Build(Var("k_42"))
              , Seq(
                  CallT(SVar("j_22"), [], [])
                , Seq(
                    Match(Var("n_42"))
                  , Seq(
                      Build(Var("l_42"))
                    , Seq(
                        CallT(SVar("k_22"), [], [])
                      , Seq(
                          Match(Var("o_42"))
                        , Build(
                            Anno(
                              Op("Abs", [Var("n_42"), Var("o_42")])
                            , Var("m_42")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "RSection_2_0"
        , [ VarDec(
              "l_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "m_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["r_42", "p_42", "q_42", "s_42", "t_42"]
          , Seq(
              Match(
                Anno(
                  Op("RSection", [Var("p_42"), Var("q_42")])
                , Var("r_42")
                )
              )
            , Seq(
                Build(Var("p_42"))
              , Seq(
                  CallT(SVar("l_22"), [], [])
                , Seq(
                    Match(Var("s_42"))
                  , Seq(
                      Build(Var("q_42"))
                    , Seq(
                        CallT(SVar("m_22"), [], [])
                      , Seq(
                          Match(Var("t_42"))
                        , Build(
                            Anno(
                              Op("RSection", [Var("s_42"), Var("t_42")])
                            , Var("r_42")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "LSection_2_0"
        , [ VarDec(
              "n_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "o_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["w_42", "u_42", "v_42", "x_42", "y_42"]
          , Seq(
              Match(
                Anno(
                  Op("LSection", [Var("u_42"), Var("v_42")])
                , Var("w_42")
                )
              )
            , Seq(
                Build(Var("u_42"))
              , Seq(
                  CallT(SVar("n_22"), [], [])
                , Seq(
                    Match(Var("x_42"))
                  , Seq(
                      Build(Var("v_42"))
                    , Seq(
                        CallT(SVar("o_22"), [], [])
                      , Seq(
                          Match(Var("y_42"))
                        , Build(
                            Anno(
                              Op("LSection", [Var("x_42"), Var("y_42")])
                            , Var("w_42")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Product_1_0"
        , [ VarDec(
              "p_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["a_43", "z_42", "b_43"]
          , Seq(
              Match(
                Anno(Op("Product", [Var("z_42")]), Var("a_43"))
              )
            , Seq(
                Build(Var("z_42"))
              , Seq(
                  CallT(SVar("p_22"), [], [])
                , Seq(
                    Match(Var("b_43"))
                  , Build(
                      Anno(Op("Product", [Var("b_43")]), Var("a_43"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Lit_1_0"
        , [ VarDec(
              "q_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["d_43", "c_43", "e_43"]
          , Seq(
              Match(
                Anno(Op("Lit", [Var("c_43")]), Var("d_43"))
              )
            , Seq(
                Build(Var("c_43"))
              , Seq(
                  CallT(SVar("q_22"), [], [])
                , Seq(
                    Match(Var("e_43"))
                  , Build(
                      Anno(Op("Lit", [Var("e_43")]), Var("d_43"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Constr_1_0"
        , [ VarDec(
              "r_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["g_43", "f_43", "h_43"]
          , Seq(
              Match(
                Anno(Op("Constr", [Var("f_43")]), Var("g_43"))
              )
            , Seq(
                Build(Var("f_43"))
              , Seq(
                  CallT(SVar("r_22"), [], [])
                , Seq(
                    Match(Var("h_43"))
                  , Build(
                      Anno(Op("Constr", [Var("h_43")]), Var("g_43"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "QVar_1_0"
        , [ VarDec(
              "s_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["j_43", "i_43", "k_43"]
          , Seq(
              Match(
                Anno(Op("QVar", [Var("i_43")]), Var("j_43"))
              )
            , Seq(
                Build(Var("i_43"))
              , Seq(
                  CallT(SVar("s_22"), [], [])
                , Seq(
                    Match(Var("k_43"))
                  , Build(
                      Anno(Op("QVar", [Var("k_43")]), Var("j_43"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrProcedure_2_0"
        , [ VarDec(
              "t_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "u_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["n_43", "l_43", "m_43", "o_43", "p_43"]
          , Seq(
              Match(
                Anno(
                  Op("ArrProcedure", [Var("l_43"), Var("m_43")])
                , Var("n_43")
                )
              )
            , Seq(
                Build(Var("l_43"))
              , Seq(
                  CallT(SVar("t_22"), [], [])
                , Seq(
                    Match(Var("o_43"))
                  , Seq(
                      Build(Var("m_43"))
                    , Seq(
                        CallT(SVar("u_22"), [], [])
                      , Seq(
                          Match(Var("p_43"))
                        , Build(
                            Anno(
                              Op("ArrProcedure", [Var("o_43"), Var("p_43")])
                            , Var("n_43")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrStmtSeq_2_0"
        , [ VarDec(
              "v_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "w_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["s_43", "q_43", "r_43", "t_43", "u_43"]
          , Seq(
              Match(
                Anno(
                  Op("ArrStmtSeq", [Var("q_43"), Var("r_43")])
                , Var("s_43")
                )
              )
            , Seq(
                Build(Var("q_43"))
              , Seq(
                  CallT(SVar("v_22"), [], [])
                , Seq(
                    Match(Var("t_43"))
                  , Seq(
                      Build(Var("r_43"))
                    , Seq(
                        CallT(SVar("w_22"), [], [])
                      , Seq(
                          Match(Var("u_43"))
                        , Build(
                            Anno(
                              Op("ArrStmtSeq", [Var("t_43"), Var("u_43")])
                            , Var("s_43")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrStmtList_1_0"
        , [ VarDec(
              "x_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["w_43", "v_43", "x_43"]
          , Seq(
              Match(
                Anno(Op("ArrStmtList", [Var("v_43")]), Var("w_43"))
              )
            , Seq(
                Build(Var("v_43"))
              , Seq(
                  CallT(SVar("x_22"), [], [])
                , Seq(
                    Match(Var("x_43"))
                  , Build(
                      Anno(Op("ArrStmtList", [Var("x_43")]), Var("w_43"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrCmdStmt_1_0"
        , [ VarDec(
              "y_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["z_43", "y_43", "a_44"]
          , Seq(
              Match(
                Anno(Op("ArrCmdStmt", [Var("y_43")]), Var("z_43"))
              )
            , Seq(
                Build(Var("y_43"))
              , Seq(
                  CallT(SVar("y_22"), [], [])
                , Seq(
                    Match(Var("a_44"))
                  , Build(
                      Anno(Op("ArrCmdStmt", [Var("a_44")]), Var("z_43"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrBindStmt_2_0"
        , [ VarDec(
              "z_22"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "a_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["d_44", "b_44", "c_44", "e_44", "f_44"]
          , Seq(
              Match(
                Anno(
                  Op("ArrBindStmt", [Var("b_44"), Var("c_44")])
                , Var("d_44")
                )
              )
            , Seq(
                Build(Var("b_44"))
              , Seq(
                  CallT(SVar("z_22"), [], [])
                , Seq(
                    Match(Var("e_44"))
                  , Seq(
                      Build(Var("c_44"))
                    , Seq(
                        CallT(SVar("a_23"), [], [])
                      , Seq(
                          Match(Var("f_44"))
                        , Build(
                            Anno(
                              Op("ArrBindStmt", [Var("e_44"), Var("f_44")])
                            , Var("d_44")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrLetStmt_1_0"
        , [ VarDec(
              "b_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["h_44", "g_44", "i_44"]
          , Seq(
              Match(
                Anno(Op("ArrLetStmt", [Var("g_44")]), Var("h_44"))
              )
            , Seq(
                Build(Var("g_44"))
              , Seq(
                  CallT(SVar("b_23"), [], [])
                , Seq(
                    Match(Var("i_44"))
                  , Build(
                      Anno(Op("ArrLetStmt", [Var("i_44")]), Var("h_44"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrAltSeqOff_2_0"
        , [ VarDec(
              "c_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "d_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["l_44", "j_44", "k_44", "m_44", "n_44"]
          , Seq(
              Match(
                Anno(
                  Op("ArrAltSeqOff", [Var("j_44"), Var("k_44")])
                , Var("l_44")
                )
              )
            , Seq(
                Build(Var("j_44"))
              , Seq(
                  CallT(SVar("c_23"), [], [])
                , Seq(
                    Match(Var("m_44"))
                  , Seq(
                      Build(Var("k_44"))
                    , Seq(
                        CallT(SVar("d_23"), [], [])
                      , Seq(
                          Match(Var("n_44"))
                        , Build(
                            Anno(
                              Op("ArrAltSeqOff", [Var("m_44"), Var("n_44")])
                            , Var("l_44")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrAltSeq_2_0"
        , [ VarDec(
              "e_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "f_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["q_44", "o_44", "p_44", "r_44", "s_44"]
          , Seq(
              Match(
                Anno(
                  Op("ArrAltSeq", [Var("o_44"), Var("p_44")])
                , Var("q_44")
                )
              )
            , Seq(
                Build(Var("o_44"))
              , Seq(
                  CallT(SVar("e_23"), [], [])
                , Seq(
                    Match(Var("r_44"))
                  , Seq(
                      Build(Var("p_44"))
                    , Seq(
                        CallT(SVar("f_23"), [], [])
                      , Seq(
                          Match(Var("s_44"))
                        , Build(
                            Anno(
                              Op("ArrAltSeq", [Var("r_44"), Var("s_44")])
                            , Var("q_44")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrAltList_1_0"
        , [ VarDec(
              "g_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["u_44", "t_44", "v_44"]
          , Seq(
              Match(
                Anno(Op("ArrAltList", [Var("t_44")]), Var("u_44"))
              )
            , Seq(
                Build(Var("t_44"))
              , Seq(
                  CallT(SVar("g_23"), [], [])
                , Seq(
                    Match(Var("v_44"))
                  , Build(
                      Anno(Op("ArrAltList", [Var("v_44")]), Var("u_44"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ArrAlt_3_0"
        , [ VarDec(
              "h_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "i_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "j_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["z_44", "w_44", "x_44", "y_44", "a_45", "b_45", "c_45"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "ArrAlt"
                  , [Var("w_44"), Var("x_44"), Var("y_44")]
                  )
                , Var("z_44")
                )
              )
            , Seq(
                Build(Var("w_44"))
              , Seq(
                  CallT(SVar("h_23"), [], [])
                , Seq(
                    Match(Var("a_45"))
                  , Seq(
                      Build(Var("x_44"))
                    , Seq(
                        CallT(SVar("i_23"), [], [])
                      , Seq(
                          Match(Var("b_45"))
                        , Seq(
                            Build(Var("y_44"))
                          , Seq(
                              CallT(SVar("j_23"), [], [])
                            , Seq(
                                Match(Var("c_45"))
                              , Build(
                                  Anno(
                                    Op(
                                      "ArrAlt"
                                    , [Var("a_45"), Var("b_45"), Var("c_45")]
                                    )
                                  , Var("z_44")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "SignDecl_3_0"
        , [ VarDec(
              "k_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "l_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "m_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["g_45", "d_45", "e_45", "f_45", "h_45", "i_45", "j_45"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "SignDecl"
                  , [Var("d_45"), Var("e_45"), Var("f_45")]
                  )
                , Var("g_45")
                )
              )
            , Seq(
                Build(Var("d_45"))
              , Seq(
                  CallT(SVar("k_23"), [], [])
                , Seq(
                    Match(Var("h_45"))
                  , Seq(
                      Build(Var("e_45"))
                    , Seq(
                        CallT(SVar("l_23"), [], [])
                      , Seq(
                          Match(Var("i_45"))
                        , Seq(
                            Build(Var("f_45"))
                          , Seq(
                              CallT(SVar("m_23"), [], [])
                            , Seq(
                                Match(Var("j_45"))
                              , Build(
                                  Anno(
                                    Op(
                                      "SignDecl"
                                    , [Var("h_45"), Var("i_45"), Var("j_45")]
                                    )
                                  , Var("g_45")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ClassMulti_3_0"
        , [ VarDec(
              "n_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "o_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "p_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["n_45", "k_45", "l_45", "m_45", "o_45", "p_45", "q_45"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "ClassMulti"
                  , [Var("k_45"), Var("l_45"), Var("m_45")]
                  )
                , Var("n_45")
                )
              )
            , Seq(
                Build(Var("k_45"))
              , Seq(
                  CallT(SVar("n_23"), [], [])
                , Seq(
                    Match(Var("o_45"))
                  , Seq(
                      Build(Var("l_45"))
                    , Seq(
                        CallT(SVar("o_23"), [], [])
                      , Seq(
                          Match(Var("p_45"))
                        , Seq(
                            Build(Var("m_45"))
                          , Seq(
                              CallT(SVar("p_23"), [], [])
                            , Seq(
                                Match(Var("q_45"))
                              , Build(
                                  Anno(
                                    Op(
                                      "ClassMulti"
                                    , [Var("o_45"), Var("p_45"), Var("q_45")]
                                    )
                                  , Var("n_45")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "SimpleClass_2_0"
        , [ VarDec(
              "q_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "r_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["t_45", "r_45", "s_45", "u_45", "v_45"]
          , Seq(
              Match(
                Anno(
                  Op("SimpleClass", [Var("r_45"), Var("s_45")])
                , Var("t_45")
                )
              )
            , Seq(
                Build(Var("r_45"))
              , Seq(
                  CallT(SVar("q_23"), [], [])
                , Seq(
                    Match(Var("u_45"))
                  , Seq(
                      Build(Var("s_45"))
                    , Seq(
                        CallT(SVar("r_23"), [], [])
                      , Seq(
                          Match(Var("v_45"))
                        , Build(
                            Anno(
                              Op("SimpleClass", [Var("u_45"), Var("v_45")])
                            , Var("t_45")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "SContext_1_0"
        , [ VarDec(
              "s_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["x_45", "w_45", "y_45"]
          , Seq(
              Match(
                Anno(Op("SContext", [Var("w_45")]), Var("x_45"))
              )
            , Seq(
                Build(Var("w_45"))
              , Seq(
                  CallT(SVar("s_23"), [], [])
                , Seq(
                    Match(Var("y_45"))
                  , Build(
                      Anno(Op("SContext", [Var("y_45")]), Var("x_45"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Context_1_0"
        , [ VarDec(
              "t_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["a_46", "z_45", "b_46"]
          , Seq(
              Match(
                Anno(Op("Context", [Var("z_45")]), Var("a_46"))
              )
            , Seq(
                Build(Var("z_45"))
              , Seq(
                  CallT(SVar("t_23"), [], [])
                , Seq(
                    Match(Var("b_46"))
                  , Build(
                      Anno(Op("Context", [Var("b_46")]), Var("a_46"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "InstArrow_2_0"
        , [ VarDec(
              "u_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "v_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["e_46", "c_46", "d_46", "f_46", "g_46"]
          , Seq(
              Match(
                Anno(
                  Op("InstArrow", [Var("c_46"), Var("d_46")])
                , Var("e_46")
                )
              )
            , Seq(
                Build(Var("c_46"))
              , Seq(
                  CallT(SVar("u_23"), [], [])
                , Seq(
                    Match(Var("f_46"))
                  , Seq(
                      Build(Var("d_46"))
                    , Seq(
                        CallT(SVar("v_23"), [], [])
                      , Seq(
                          Match(Var("g_46"))
                        , Build(
                            Anno(
                              Op("InstArrow", [Var("f_46"), Var("g_46")])
                            , Var("e_46")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "InstList_1_0"
        , [ VarDec(
              "w_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["i_46", "h_46", "j_46"]
          , Seq(
              Match(
                Anno(Op("InstList", [Var("h_46")]), Var("i_46"))
              )
            , Seq(
                Build(Var("h_46"))
              , Seq(
                  CallT(SVar("w_23"), [], [])
                , Seq(
                    Match(Var("j_46"))
                  , Build(
                      Anno(Op("InstList", [Var("j_46")]), Var("i_46"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "InstTuple_2_0"
        , [ VarDec(
              "x_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "y_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["m_46", "k_46", "l_46", "n_46", "o_46"]
          , Seq(
              Match(
                Anno(
                  Op("InstTuple", [Var("k_46"), Var("l_46")])
                , Var("m_46")
                )
              )
            , Seq(
                Build(Var("k_46"))
              , Seq(
                  CallT(SVar("x_23"), [], [])
                , Seq(
                    Match(Var("n_46"))
                  , Seq(
                      Build(Var("l_46"))
                    , Seq(
                        CallT(SVar("y_23"), [], [])
                      , Seq(
                          Match(Var("o_46"))
                        , Build(
                            Anno(
                              Op("InstTuple", [Var("n_46"), Var("o_46")])
                            , Var("m_46")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "InstApp_2_0"
        , [ VarDec(
              "z_23"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "a_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["r_46", "p_46", "q_46", "s_46", "t_46"]
          , Seq(
              Match(
                Anno(
                  Op("InstApp", [Var("p_46"), Var("q_46")])
                , Var("r_46")
                )
              )
            , Seq(
                Build(Var("p_46"))
              , Seq(
                  CallT(SVar("z_23"), [], [])
                , Seq(
                    Match(Var("s_46"))
                  , Seq(
                      Build(Var("q_46"))
                    , Seq(
                        CallT(SVar("a_24"), [], [])
                      , Seq(
                          Match(Var("t_46"))
                        , Build(
                            Anno(
                              Op("InstApp", [Var("s_46"), Var("t_46")])
                            , Var("r_46")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "InstCons_1_0"
        , [ VarDec(
              "b_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["v_46", "u_46", "w_46"]
          , Seq(
              Match(
                Anno(Op("InstCons", [Var("u_46")]), Var("v_46"))
              )
            , Seq(
                Build(Var("u_46"))
              , Seq(
                  CallT(SVar("b_24"), [], [])
                , Seq(
                    Match(Var("w_46"))
                  , Build(
                      Anno(Op("InstCons", [Var("w_46")]), Var("v_46"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "InfixConstr_3_0"
        , [ VarDec(
              "c_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "d_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "e_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["a_47", "x_46", "y_46", "z_46", "b_47", "c_47", "d_47"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "InfixConstr"
                  , [Var("x_46"), Var("y_46"), Var("z_46")]
                  )
                , Var("a_47")
                )
              )
            , Seq(
                Build(Var("x_46"))
              , Seq(
                  CallT(SVar("c_24"), [], [])
                , Seq(
                    Match(Var("b_47"))
                  , Seq(
                      Build(Var("y_46"))
                    , Seq(
                        CallT(SVar("d_24"), [], [])
                      , Seq(
                          Match(Var("c_47"))
                        , Seq(
                            Build(Var("z_46"))
                          , Seq(
                              CallT(SVar("e_24"), [], [])
                            , Seq(
                                Match(Var("d_47"))
                              , Build(
                                  Anno(
                                    Op(
                                      "InfixConstr"
                                    , [Var("b_47"), Var("c_47"), Var("d_47")]
                                    )
                                  , Var("a_47")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ConstrDecl_2_0"
        , [ VarDec(
              "f_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "g_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["g_47", "e_47", "f_47", "h_47", "i_47"]
          , Seq(
              Match(
                Anno(
                  Op("ConstrDecl", [Var("e_47"), Var("f_47")])
                , Var("g_47")
                )
              )
            , Seq(
                Build(Var("e_47"))
              , Seq(
                  CallT(SVar("f_24"), [], [])
                , Seq(
                    Match(Var("h_47"))
                  , Seq(
                      Build(Var("f_47"))
                    , Seq(
                        CallT(SVar("g_24"), [], [])
                      , Seq(
                          Match(Var("i_47"))
                        , Build(
                            Anno(
                              Op("ConstrDecl", [Var("h_47"), Var("i_47")])
                            , Var("g_47")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ConstrDecls_1_0"
        , [ VarDec(
              "h_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["k_47", "j_47", "l_47"]
          , Seq(
              Match(
                Anno(Op("ConstrDecls", [Var("j_47")]), Var("k_47"))
              )
            , Seq(
                Build(Var("j_47"))
              , Seq(
                  CallT(SVar("h_24"), [], [])
                , Seq(
                    Match(Var("l_47"))
                  , Build(
                      Anno(Op("ConstrDecls", [Var("l_47")]), Var("k_47"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "NoConstrDecls_0_0"
        , []
        , []
        , Match(Anno(Op("NoConstrDecls", []), Wld()))
        )
      , SDefT(
          "Derive_1_0"
        , [ VarDec(
              "i_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["n_47", "m_47", "o_47"]
          , Seq(
              Match(
                Anno(Op("Derive", [Var("m_47")]), Var("n_47"))
              )
            , Seq(
                Build(Var("m_47"))
              , Seq(
                  CallT(SVar("i_24"), [], [])
                , Seq(
                    Match(Var("o_47"))
                  , Build(
                      Anno(Op("Derive", [Var("o_47")]), Var("n_47"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "NoDeriving_0_0"
        , []
        , []
        , Match(Anno(Op("NoDeriving", []), Wld()))
        )
      , SDefT(
          "TFunBin_2_0"
        , [ VarDec(
              "j_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "k_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["r_47", "p_47", "q_47", "s_47", "t_47"]
          , Seq(
              Match(
                Anno(
                  Op("TFunBin", [Var("p_47"), Var("q_47")])
                , Var("r_47")
                )
              )
            , Seq(
                Build(Var("p_47"))
              , Seq(
                  CallT(SVar("j_24"), [], [])
                , Seq(
                    Match(Var("s_47"))
                  , Seq(
                      Build(Var("q_47"))
                    , Seq(
                        CallT(SVar("k_24"), [], [])
                      , Seq(
                          Match(Var("t_47"))
                        , Build(
                            Anno(
                              Op("TFunBin", [Var("s_47"), Var("t_47")])
                            , Var("r_47")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TAppBin_2_0"
        , [ VarDec(
              "l_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "m_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["w_47", "u_47", "v_47", "x_47", "y_47"]
          , Seq(
              Match(
                Anno(
                  Op("TAppBin", [Var("u_47"), Var("v_47")])
                , Var("w_47")
                )
              )
            , Seq(
                Build(Var("u_47"))
              , Seq(
                  CallT(SVar("l_24"), [], [])
                , Seq(
                    Match(Var("x_47"))
                  , Seq(
                      Build(Var("v_47"))
                    , Seq(
                        CallT(SVar("m_24"), [], [])
                      , Seq(
                          Match(Var("y_47"))
                        , Build(
                            Anno(
                              Op("TAppBin", [Var("x_47"), Var("y_47")])
                            , Var("w_47")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TProd_1_0"
        , [ VarDec(
              "n_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["a_48", "z_47", "b_48"]
          , Seq(
              Match(
                Anno(Op("TProd", [Var("z_47")]), Var("a_48"))
              )
            , Seq(
                Build(Var("z_47"))
              , Seq(
                  CallT(SVar("n_24"), [], [])
                , Seq(
                    Match(Var("b_48"))
                  , Build(
                      Anno(Op("TProd", [Var("b_48")]), Var("a_48"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TList_1_0"
        , [ VarDec(
              "o_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["d_48", "c_48", "e_48"]
          , Seq(
              Match(
                Anno(Op("TList", [Var("c_48")]), Var("d_48"))
              )
            , Seq(
                Build(Var("c_48"))
              , Seq(
                  CallT(SVar("o_24"), [], [])
                , Seq(
                    Match(Var("e_48"))
                  , Build(
                      Anno(Op("TList", [Var("e_48")]), Var("d_48"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TVar_1_0"
        , [ VarDec(
              "p_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["g_48", "f_48", "h_48"]
          , Seq(
              Match(
                Anno(Op("TVar", [Var("f_48")]), Var("g_48"))
              )
            , Seq(
                Build(Var("f_48"))
              , Seq(
                  CallT(SVar("p_24"), [], [])
                , Seq(
                    Match(Var("h_48"))
                  , Build(
                      Anno(Op("TVar", [Var("h_48")]), Var("g_48"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TCon_1_0"
        , [ VarDec(
              "q_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["j_48", "i_48", "k_48"]
          , Seq(
              Match(
                Anno(Op("TCon", [Var("i_48")]), Var("j_48"))
              )
            , Seq(
                Build(Var("i_48"))
              , Seq(
                  CallT(SVar("q_24"), [], [])
                , Seq(
                    Match(Var("k_48"))
                  , Build(
                      Anno(Op("TCon", [Var("k_48")]), Var("j_48"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TCons_2_0"
        , [ VarDec(
              "r_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "s_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["n_48", "l_48", "m_48", "o_48", "p_48"]
          , Seq(
              Match(
                Anno(
                  Op("TCons", [Var("l_48"), Var("m_48")])
                , Var("n_48")
                )
              )
            , Seq(
                Build(Var("l_48"))
              , Seq(
                  CallT(SVar("r_24"), [], [])
                , Seq(
                    Match(Var("o_48"))
                  , Seq(
                      Build(Var("m_48"))
                    , Seq(
                        CallT(SVar("s_24"), [], [])
                      , Seq(
                          Match(Var("p_48"))
                        , Build(
                            Anno(
                              Op("TCons", [Var("o_48"), Var("p_48")])
                            , Var("n_48")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TListCon_0_0"
        , []
        , []
        , Match(Anno(Op("TListCon", []), Wld()))
        )
      , SDefT(
          "TUnit_0_0"
        , []
        , []
        , Match(Anno(Op("TUnit", []), Wld()))
        )
      , SDefT(
          "TArrow_0_0"
        , []
        , []
        , Match(Anno(Op("TArrow", []), Wld()))
        )
      , SDefT(
          "Hiding_1_0"
        , [ VarDec(
              "t_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["r_48", "q_48", "s_48"]
          , Seq(
              Match(
                Anno(Op("Hiding", [Var("q_48")]), Var("r_48"))
              )
            , Seq(
                Build(Var("q_48"))
              , Seq(
                  CallT(SVar("t_24"), [], [])
                , Seq(
                    Match(Var("s_48"))
                  , Build(
                      Anno(Op("Hiding", [Var("s_48")]), Var("r_48"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Impspec_1_0"
        , [ VarDec(
              "u_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["u_48", "t_48", "v_48"]
          , Seq(
              Match(
                Anno(Op("Impspec", [Var("t_48")]), Var("u_48"))
              )
            , Seq(
                Build(Var("t_48"))
              , Seq(
                  CallT(SVar("u_24"), [], [])
                , Seq(
                    Match(Var("v_48"))
                  , Build(
                      Anno(Op("Impspec", [Var("v_48")]), Var("u_48"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "As_1_0"
        , [ VarDec(
              "v_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["x_48", "w_48", "y_48"]
          , Seq(
              Match(
                Anno(Op("As", [Var("w_48")]), Var("x_48"))
              )
            , Seq(
                Build(Var("w_48"))
              , Seq(
                  CallT(SVar("v_24"), [], [])
                , Seq(
                    Match(Var("y_48"))
                  , Build(
                      Anno(Op("As", [Var("y_48")]), Var("x_48"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Qualified_0_0"
        , []
        , []
        , Match(Anno(Op("Qualified", []), Wld()))
        )
      , SDefT(
          "SOURCE_0_0"
        , []
        , []
        , Match(Anno(Op("SOURCE", []), Wld()))
        )
      , SDefT(
          "Import_5_0"
        , [ VarDec(
              "w_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "x_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "y_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "z_24"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "a_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            [ "e_49"
            , "z_48"
            , "a_49"
            , "b_49"
            , "c_49"
            , "d_49"
            , "f_49"
            , "g_49"
            , "h_49"
            , "i_49"
            , "j_49"
            ]
          , Seq(
              Match(
                Anno(
                  Op(
                    "Import"
                  , [ Var("z_48")
                    , Var("a_49")
                    , Var("b_49")
                    , Var("c_49")
                    , Var("d_49")
                    ]
                  )
                , Var("e_49")
                )
              )
            , Seq(
                Build(Var("z_48"))
              , Seq(
                  CallT(SVar("w_24"), [], [])
                , Seq(
                    Match(Var("f_49"))
                  , Seq(
                      Build(Var("a_49"))
                    , Seq(
                        CallT(SVar("x_24"), [], [])
                      , Seq(
                          Match(Var("g_49"))
                        , Seq(
                            Build(Var("b_49"))
                          , Seq(
                              CallT(SVar("y_24"), [], [])
                            , Seq(
                                Match(Var("h_49"))
                              , Seq(
                                  Build(Var("c_49"))
                                , Seq(
                                    CallT(SVar("z_24"), [], [])
                                  , Seq(
                                      Match(Var("i_49"))
                                    , Seq(
                                        Build(Var("d_49"))
                                      , Seq(
                                          CallT(SVar("a_25"), [], [])
                                        , Seq(
                                            Match(Var("j_49"))
                                          , Build(
                                              Anno(
                                                Op(
                                                  "Import"
                                                , [ Var("f_49")
                                                  , Var("g_49")
                                                  , Var("h_49")
                                                  , Var("i_49")
                                                  , Var("j_49")
                                                  ]
                                                )
                                              , Var("e_49")
                                              )
                                            )
                                          )
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Exports_1_0"
        , [ VarDec(
              "b_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["l_49", "k_49", "m_49"]
          , Seq(
              Match(
                Anno(Op("Exports", [Var("k_49")]), Var("l_49"))
              )
            , Seq(
                Build(Var("k_49"))
              , Seq(
                  CallT(SVar("b_25"), [], [])
                , Seq(
                    Match(Var("m_49"))
                  , Build(
                      Anno(Op("Exports", [Var("m_49")]), Var("l_49"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Exportlist_1_0"
        , [ VarDec(
              "c_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["o_49", "n_49", "p_49"]
          , Seq(
              Match(
                Anno(Op("Exportlist", [Var("n_49")]), Var("o_49"))
              )
            , Seq(
                Build(Var("n_49"))
              , Seq(
                  CallT(SVar("c_25"), [], [])
                , Seq(
                    Match(Var("p_49"))
                  , Build(
                      Anno(Op("Exportlist", [Var("p_49")]), Var("o_49"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TopdeclSeq_2_0"
        , [ VarDec(
              "d_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "e_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["s_49", "q_49", "r_49", "t_49", "u_49"]
          , Seq(
              Match(
                Anno(
                  Op("TopdeclSeq", [Var("q_49"), Var("r_49")])
                , Var("s_49")
                )
              )
            , Seq(
                Build(Var("q_49"))
              , Seq(
                  CallT(SVar("d_25"), [], [])
                , Seq(
                    Match(Var("t_49"))
                  , Seq(
                      Build(Var("r_49"))
                    , Seq(
                        CallT(SVar("e_25"), [], [])
                      , Seq(
                          Match(Var("u_49"))
                        , Build(
                            Anno(
                              Op("TopdeclSeq", [Var("t_49"), Var("u_49")])
                            , Var("s_49")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ImportdeclSeq_2_0"
        , [ VarDec(
              "f_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "g_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["x_49", "v_49", "w_49", "y_49", "z_49"]
          , Seq(
              Match(
                Anno(
                  Op("ImportdeclSeq", [Var("v_49"), Var("w_49")])
                , Var("x_49")
                )
              )
            , Seq(
                Build(Var("v_49"))
              , Seq(
                  CallT(SVar("f_25"), [], [])
                , Seq(
                    Match(Var("y_49"))
                  , Seq(
                      Build(Var("w_49"))
                    , Seq(
                        CallT(SVar("g_25"), [], [])
                      , Seq(
                          Match(Var("z_49"))
                        , Build(
                            Anno(
                              Op("ImportdeclSeq", [Var("y_49"), Var("z_49")])
                            , Var("x_49")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "OffBody_2_0"
        , [ VarDec(
              "h_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "i_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["c_50", "a_50", "b_50", "d_50", "e_50"]
          , Seq(
              Match(
                Anno(
                  Op("OffBody", [Var("a_50"), Var("b_50")])
                , Var("c_50")
                )
              )
            , Seq(
                Build(Var("a_50"))
              , Seq(
                  CallT(SVar("h_25"), [], [])
                , Seq(
                    Match(Var("d_50"))
                  , Seq(
                      Build(Var("b_50"))
                    , Seq(
                        CallT(SVar("i_25"), [], [])
                      , Seq(
                          Match(Var("e_50"))
                        , Build(
                            Anno(
                              Op("OffBody", [Var("d_50"), Var("e_50")])
                            , Var("c_50")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Body_2_0"
        , [ VarDec(
              "j_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "k_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["h_50", "f_50", "g_50", "i_50", "j_50"]
          , Seq(
              Match(
                Anno(
                  Op("Body", [Var("f_50"), Var("g_50")])
                , Var("h_50")
                )
              )
            , Seq(
                Build(Var("f_50"))
              , Seq(
                  CallT(SVar("j_25"), [], [])
                , Seq(
                    Match(Var("i_50"))
                  , Seq(
                      Build(Var("g_50"))
                    , Seq(
                        CallT(SVar("k_25"), [], [])
                      , Seq(
                          Match(Var("j_50"))
                        , Build(
                            Anno(
                              Op("Body", [Var("i_50"), Var("j_50")])
                            , Var("h_50")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Empty_0_0"
        , []
        , []
        , Match(Anno(Op("Empty", []), Wld()))
        )
      , SDefT(
          "FlexibleInstance_4_0"
        , [ VarDec(
              "l_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "m_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "n_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "o_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["o_50", "k_50", "l_50", "m_50", "n_50", "p_50", "q_50", "r_50", "s_50"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "FlexibleInstance"
                  , [Var("k_50"), Var("l_50"), Var("m_50"), Var("n_50")]
                  )
                , Var("o_50")
                )
              )
            , Seq(
                Build(Var("k_50"))
              , Seq(
                  CallT(SVar("l_25"), [], [])
                , Seq(
                    Match(Var("p_50"))
                  , Seq(
                      Build(Var("l_50"))
                    , Seq(
                        CallT(SVar("m_25"), [], [])
                      , Seq(
                          Match(Var("q_50"))
                        , Seq(
                            Build(Var("m_50"))
                          , Seq(
                              CallT(SVar("n_25"), [], [])
                            , Seq(
                                Match(Var("r_50"))
                              , Seq(
                                  Build(Var("n_50"))
                                , Seq(
                                    CallT(SVar("o_25"), [], [])
                                  , Seq(
                                      Match(Var("s_50"))
                                    , Build(
                                        Anno(
                                          Op(
                                            "FlexibleInstance"
                                          , [Var("p_50"), Var("q_50"), Var("r_50"), Var("s_50")]
                                          )
                                        , Var("o_50")
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Default_1_0"
        , [ VarDec(
              "p_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["u_50", "t_50", "v_50"]
          , Seq(
              Match(
                Anno(Op("Default", [Var("t_50")]), Var("u_50"))
              )
            , Seq(
                Build(Var("t_50"))
              , Seq(
                  CallT(SVar("p_25"), [], [])
                , Seq(
                    Match(Var("v_50"))
                  , Build(
                      Anno(Op("Default", [Var("v_50")]), Var("u_50"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Instance_4_0"
        , [ VarDec(
              "q_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "r_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "s_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "t_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["a_51", "w_50", "x_50", "y_50", "z_50", "b_51", "c_51", "d_51", "e_51"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "Instance"
                  , [Var("w_50"), Var("x_50"), Var("y_50"), Var("z_50")]
                  )
                , Var("a_51")
                )
              )
            , Seq(
                Build(Var("w_50"))
              , Seq(
                  CallT(SVar("q_25"), [], [])
                , Seq(
                    Match(Var("b_51"))
                  , Seq(
                      Build(Var("x_50"))
                    , Seq(
                        CallT(SVar("r_25"), [], [])
                      , Seq(
                          Match(Var("c_51"))
                        , Seq(
                            Build(Var("y_50"))
                          , Seq(
                              CallT(SVar("s_25"), [], [])
                            , Seq(
                                Match(Var("d_51"))
                              , Seq(
                                  Build(Var("z_50"))
                                , Seq(
                                    CallT(SVar("t_25"), [], [])
                                  , Seq(
                                      Match(Var("e_51"))
                                    , Build(
                                        Anno(
                                          Op(
                                            "Instance"
                                          , [Var("b_51"), Var("c_51"), Var("d_51"), Var("e_51")]
                                          )
                                        , Var("a_51")
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Class_4_0"
        , [ VarDec(
              "u_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "v_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "w_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "x_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["j_51", "f_51", "g_51", "h_51", "i_51", "k_51", "l_51", "m_51", "n_51"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "Class"
                  , [Var("f_51"), Var("g_51"), Var("h_51"), Var("i_51")]
                  )
                , Var("j_51")
                )
              )
            , Seq(
                Build(Var("f_51"))
              , Seq(
                  CallT(SVar("u_25"), [], [])
                , Seq(
                    Match(Var("k_51"))
                  , Seq(
                      Build(Var("g_51"))
                    , Seq(
                        CallT(SVar("v_25"), [], [])
                      , Seq(
                          Match(Var("l_51"))
                        , Seq(
                            Build(Var("h_51"))
                          , Seq(
                              CallT(SVar("w_25"), [], [])
                            , Seq(
                                Match(Var("m_51"))
                              , Seq(
                                  Build(Var("i_51"))
                                , Seq(
                                    CallT(SVar("x_25"), [], [])
                                  , Seq(
                                      Match(Var("n_51"))
                                    , Build(
                                        Anno(
                                          Op(
                                            "Class"
                                          , [Var("k_51"), Var("l_51"), Var("m_51"), Var("n_51")]
                                          )
                                        , Var("j_51")
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Data_4_0"
        , [ VarDec(
              "y_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "z_25"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "a_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "b_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["s_51", "o_51", "p_51", "q_51", "r_51", "t_51", "u_51", "v_51", "w_51"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "Data"
                  , [Var("o_51"), Var("p_51"), Var("q_51"), Var("r_51")]
                  )
                , Var("s_51")
                )
              )
            , Seq(
                Build(Var("o_51"))
              , Seq(
                  CallT(SVar("y_25"), [], [])
                , Seq(
                    Match(Var("t_51"))
                  , Seq(
                      Build(Var("p_51"))
                    , Seq(
                        CallT(SVar("z_25"), [], [])
                      , Seq(
                          Match(Var("u_51"))
                        , Seq(
                            Build(Var("q_51"))
                          , Seq(
                              CallT(SVar("a_26"), [], [])
                            , Seq(
                                Match(Var("v_51"))
                              , Seq(
                                  Build(Var("r_51"))
                                , Seq(
                                    CallT(SVar("b_26"), [], [])
                                  , Seq(
                                      Match(Var("w_51"))
                                    , Build(
                                        Anno(
                                          Op(
                                            "Data"
                                          , [Var("t_51"), Var("u_51"), Var("v_51"), Var("w_51")]
                                          )
                                        , Var("s_51")
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "TypeDecl_3_0"
        , [ VarDec(
              "c_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "d_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "e_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["a_52", "x_51", "y_51", "z_51", "b_52", "c_52", "d_52"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "TypeDecl"
                  , [Var("x_51"), Var("y_51"), Var("z_51")]
                  )
                , Var("a_52")
                )
              )
            , Seq(
                Build(Var("x_51"))
              , Seq(
                  CallT(SVar("c_26"), [], [])
                , Seq(
                    Match(Var("b_52"))
                  , Seq(
                      Build(Var("y_51"))
                    , Seq(
                        CallT(SVar("d_26"), [], [])
                      , Seq(
                          Match(Var("c_52"))
                        , Seq(
                            Build(Var("z_51"))
                          , Seq(
                              CallT(SVar("e_26"), [], [])
                            , Seq(
                                Match(Var("d_52"))
                              , Build(
                                  Anno(
                                    Op(
                                      "TypeDecl"
                                    , [Var("b_52"), Var("c_52"), Var("d_52")]
                                    )
                                  , Var("a_52")
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Program_1_0"
        , [ VarDec(
              "f_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["f_52", "e_52", "g_52"]
          , Seq(
              Match(
                Anno(Op("Program", [Var("e_52")]), Var("f_52"))
              )
            , Seq(
                Build(Var("e_52"))
              , Seq(
                  CallT(SVar("f_26"), [], [])
                , Seq(
                    Match(Var("g_52"))
                  , Build(
                      Anno(Op("Program", [Var("g_52")]), Var("f_52"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Module_2_0"
        , [ VarDec(
              "g_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "h_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["j_52", "h_52", "i_52", "k_52", "l_52"]
          , Seq(
              Match(
                Anno(
                  Op("Module", [Var("h_52"), Var("i_52")])
                , Var("j_52")
                )
              )
            , Seq(
                Build(Var("h_52"))
              , Seq(
                  CallT(SVar("g_26"), [], [])
                , Seq(
                    Match(Var("k_52"))
                  , Seq(
                      Build(Var("i_52"))
                    , Seq(
                        CallT(SVar("h_26"), [], [])
                      , Seq(
                          Match(Var("l_52"))
                        , Build(
                            Anno(
                              Op("Module", [Var("k_52"), Var("l_52")])
                            , Var("j_52")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ModuleDec_2_0"
        , [ VarDec(
              "i_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "j_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["o_52", "m_52", "n_52", "p_52", "q_52"]
          , Seq(
              Match(
                Anno(
                  Op("ModuleDec", [Var("m_52"), Var("n_52")])
                , Var("o_52")
                )
              )
            , Seq(
                Build(Var("m_52"))
              , Seq(
                  CallT(SVar("i_26"), [], [])
                , Seq(
                    Match(Var("p_52"))
                  , Seq(
                      Build(Var("n_52"))
                    , Seq(
                        CallT(SVar("j_26"), [], [])
                      , Seq(
                          Match(Var("q_52"))
                        , Build(
                            Anno(
                              Op("ModuleDec", [Var("p_52"), Var("q_52")])
                            , Var("o_52")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "CLitLit_1_0"
        , [ VarDec(
              "k_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["s_52", "r_52", "t_52"]
          , Seq(
              Match(
                Anno(Op("CLitLit", [Var("r_52")]), Var("s_52"))
              )
            , Seq(
                Build(Var("r_52"))
              , Seq(
                  CallT(SVar("k_26"), [], [])
                , Seq(
                    Match(Var("t_52"))
                  , Build(
                      Anno(Op("CLitLit", [Var("t_52")]), Var("s_52"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "PrimDouble_1_0"
        , [ VarDec(
              "l_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["v_52", "u_52", "w_52"]
          , Seq(
              Match(
                Anno(Op("PrimDouble", [Var("u_52")]), Var("v_52"))
              )
            , Seq(
                Build(Var("u_52"))
              , Seq(
                  CallT(SVar("l_26"), [], [])
                , Seq(
                    Match(Var("w_52"))
                  , Build(
                      Anno(Op("PrimDouble", [Var("w_52")]), Var("v_52"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "PrimFloat_1_0"
        , [ VarDec(
              "m_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["y_52", "x_52", "z_52"]
          , Seq(
              Match(
                Anno(Op("PrimFloat", [Var("x_52")]), Var("y_52"))
              )
            , Seq(
                Build(Var("x_52"))
              , Seq(
                  CallT(SVar("m_26"), [], [])
                , Seq(
                    Match(Var("z_52"))
                  , Build(
                      Anno(Op("PrimFloat", [Var("z_52")]), Var("y_52"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "PrimString_1_0"
        , [ VarDec(
              "n_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["b_53", "a_53", "c_53"]
          , Seq(
              Match(
                Anno(Op("PrimString", [Var("a_53")]), Var("b_53"))
              )
            , Seq(
                Build(Var("a_53"))
              , Seq(
                  CallT(SVar("n_26"), [], [])
                , Seq(
                    Match(Var("c_53"))
                  , Build(
                      Anno(Op("PrimString", [Var("c_53")]), Var("b_53"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "PrimChar_1_0"
        , [ VarDec(
              "o_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["e_53", "d_53", "f_53"]
          , Seq(
              Match(
                Anno(Op("PrimChar", [Var("d_53")]), Var("e_53"))
              )
            , Seq(
                Build(Var("d_53"))
              , Seq(
                  CallT(SVar("o_26"), [], [])
                , Seq(
                    Match(Var("f_53"))
                  , Build(
                      Anno(Op("PrimChar", [Var("f_53")]), Var("e_53"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "PrimInt_1_0"
        , [ VarDec(
              "p_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["h_53", "g_53", "i_53"]
          , Seq(
              Match(
                Anno(Op("PrimInt", [Var("g_53")]), Var("h_53"))
              )
            , Seq(
                Build(Var("g_53"))
              , Seq(
                  CallT(SVar("p_26"), [], [])
                , Seq(
                    Match(Var("i_53"))
                  , Build(
                      Anno(Op("PrimInt", [Var("i_53")]), Var("h_53"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Float_1_0"
        , [ VarDec(
              "q_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["k_53", "j_53", "l_53"]
          , Seq(
              Match(
                Anno(Op("Float", [Var("j_53")]), Var("k_53"))
              )
            , Seq(
                Build(Var("j_53"))
              , Seq(
                  CallT(SVar("q_26"), [], [])
                , Seq(
                    Match(Var("l_53"))
                  , Build(
                      Anno(Op("Float", [Var("l_53")]), Var("k_53"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Int_1_0"
        , [ VarDec(
              "r_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["n_53", "m_53", "o_53"]
          , Seq(
              Match(
                Anno(Op("Int", [Var("m_53")]), Var("n_53"))
              )
            , Seq(
                Build(Var("m_53"))
              , Seq(
                  CallT(SVar("r_26"), [], [])
                , Seq(
                    Match(Var("o_53"))
                  , Build(
                      Anno(Op("Int", [Var("o_53")]), Var("n_53"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "HexadecimalEsc_1_0"
        , [ VarDec(
              "s_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["q_53", "p_53", "r_53"]
          , Seq(
              Match(
                Anno(Op("HexadecimalEsc", [Var("p_53")]), Var("q_53"))
              )
            , Seq(
                Build(Var("p_53"))
              , Seq(
                  CallT(SVar("s_26"), [], [])
                , Seq(
                    Match(Var("r_53"))
                  , Build(
                      Anno(Op("HexadecimalEsc", [Var("r_53")]), Var("q_53"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "OctalEsc_1_0"
        , [ VarDec(
              "t_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["t_53", "s_53", "u_53"]
          , Seq(
              Match(
                Anno(Op("OctalEsc", [Var("s_53")]), Var("t_53"))
              )
            , Seq(
                Build(Var("s_53"))
              , Seq(
                  CallT(SVar("t_26"), [], [])
                , Seq(
                    Match(Var("u_53"))
                  , Build(
                      Anno(Op("OctalEsc", [Var("u_53")]), Var("t_53"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "DecimalEsc_1_0"
        , [ VarDec(
              "u_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["w_53", "v_53", "x_53"]
          , Seq(
              Match(
                Anno(Op("DecimalEsc", [Var("v_53")]), Var("w_53"))
              )
            , Seq(
                Build(Var("v_53"))
              , Seq(
                  CallT(SVar("u_26"), [], [])
                , Seq(
                    Match(Var("x_53"))
                  , Build(
                      Anno(Op("DecimalEsc", [Var("x_53")]), Var("w_53"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ASCIIEsc_1_0"
        , [ VarDec(
              "v_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["z_53", "y_53", "a_54"]
          , Seq(
              Match(
                Anno(Op("ASCIIEsc", [Var("y_53")]), Var("z_53"))
              )
            , Seq(
                Build(Var("y_53"))
              , Seq(
                  CallT(SVar("v_26"), [], [])
                , Seq(
                    Match(Var("a_54"))
                  , Build(
                      Anno(Op("ASCIIEsc", [Var("a_54")]), Var("z_53"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "CharEsc_1_0"
        , [ VarDec(
              "w_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["c_54", "b_54", "d_54"]
          , Seq(
              Match(
                Anno(Op("CharEsc", [Var("b_54")]), Var("c_54"))
              )
            , Seq(
                Build(Var("b_54"))
              , Seq(
                  CallT(SVar("w_26"), [], [])
                , Seq(
                    Match(Var("d_54"))
                  , Build(
                      Anno(Op("CharEsc", [Var("d_54")]), Var("c_54"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Gap_1_0"
        , [ VarDec(
              "x_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["f_54", "e_54", "g_54"]
          , Seq(
              Match(
                Anno(Op("Gap", [Var("e_54")]), Var("f_54"))
              )
            , Seq(
                Build(Var("e_54"))
              , Seq(
                  CallT(SVar("x_26"), [], [])
                , Seq(
                    Match(Var("g_54"))
                  , Build(
                      Anno(Op("Gap", [Var("g_54")]), Var("f_54"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "EscapeString_1_0"
        , [ VarDec(
              "y_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["i_54", "h_54", "j_54"]
          , Seq(
              Match(
                Anno(Op("EscapeString", [Var("h_54")]), Var("i_54"))
              )
            , Seq(
                Build(Var("h_54"))
              , Seq(
                  CallT(SVar("y_26"), [], [])
                , Seq(
                    Match(Var("j_54"))
                  , Build(
                      Anno(Op("EscapeString", [Var("j_54")]), Var("i_54"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Escape_1_0"
        , [ VarDec(
              "z_26"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["l_54", "k_54", "m_54"]
          , Seq(
              Match(
                Anno(Op("Escape", [Var("k_54")]), Var("l_54"))
              )
            , Seq(
                Build(Var("k_54"))
              , Seq(
                  CallT(SVar("z_26"), [], [])
                , Seq(
                    Match(Var("m_54"))
                  , Build(
                      Anno(Op("Escape", [Var("m_54")]), Var("l_54"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "String_1_0"
        , [ VarDec(
              "a_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["o_54", "n_54", "p_54"]
          , Seq(
              Match(
                Anno(Op("String", [Var("n_54")]), Var("o_54"))
              )
            , Seq(
                Build(Var("n_54"))
              , Seq(
                  CallT(SVar("a_27"), [], [])
                , Seq(
                    Match(Var("p_54"))
                  , Build(
                      Anno(Op("String", [Var("p_54")]), Var("o_54"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Char_1_0"
        , [ VarDec(
              "b_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["r_54", "q_54", "s_54"]
          , Seq(
              Match(
                Anno(Op("Char", [Var("q_54")]), Var("r_54"))
              )
            , Seq(
                Build(Var("q_54"))
              , Seq(
                  CallT(SVar("b_27"), [], [])
                , Seq(
                    Match(Var("s_54"))
                  , Build(
                      Anno(Op("Char", [Var("s_54")]), Var("r_54"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "QModId_2_0"
        , [ VarDec(
              "c_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "d_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["v_54", "t_54", "u_54", "w_54", "x_54"]
          , Seq(
              Match(
                Anno(
                  Op("QModId", [Var("t_54"), Var("u_54")])
                , Var("v_54")
                )
              )
            , Seq(
                Build(Var("t_54"))
              , Seq(
                  CallT(SVar("c_27"), [], [])
                , Seq(
                    Match(Var("w_54"))
                  , Seq(
                      Build(Var("u_54"))
                    , Seq(
                        CallT(SVar("d_27"), [], [])
                      , Seq(
                          Match(Var("x_54"))
                        , Build(
                            Anno(
                              Op("QModId", [Var("w_54"), Var("x_54")])
                            , Var("v_54")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "QConSym_2_0"
        , [ VarDec(
              "e_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "f_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["a_55", "y_54", "z_54", "b_55", "c_55"]
          , Seq(
              Match(
                Anno(
                  Op("QConSym", [Var("y_54"), Var("z_54")])
                , Var("a_55")
                )
              )
            , Seq(
                Build(Var("y_54"))
              , Seq(
                  CallT(SVar("e_27"), [], [])
                , Seq(
                    Match(Var("b_55"))
                  , Seq(
                      Build(Var("z_54"))
                    , Seq(
                        CallT(SVar("f_27"), [], [])
                      , Seq(
                          Match(Var("c_55"))
                        , Build(
                            Anno(
                              Op("QConSym", [Var("b_55"), Var("c_55")])
                            , Var("a_55")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "QVarSym_2_0"
        , [ VarDec(
              "g_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "h_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["f_55", "d_55", "e_55", "g_55", "h_55"]
          , Seq(
              Match(
                Anno(
                  Op("QVarSym", [Var("d_55"), Var("e_55")])
                , Var("f_55")
                )
              )
            , Seq(
                Build(Var("d_55"))
              , Seq(
                  CallT(SVar("g_27"), [], [])
                , Seq(
                    Match(Var("g_55"))
                  , Seq(
                      Build(Var("e_55"))
                    , Seq(
                        CallT(SVar("h_27"), [], [])
                      , Seq(
                          Match(Var("h_55"))
                        , Build(
                            Anno(
                              Op("QVarSym", [Var("g_55"), Var("h_55")])
                            , Var("f_55")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "QConId_2_0"
        , [ VarDec(
              "i_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "j_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["k_55", "i_55", "j_55", "l_55", "m_55"]
          , Seq(
              Match(
                Anno(
                  Op("QConId", [Var("i_55"), Var("j_55")])
                , Var("k_55")
                )
              )
            , Seq(
                Build(Var("i_55"))
              , Seq(
                  CallT(SVar("i_27"), [], [])
                , Seq(
                    Match(Var("l_55"))
                  , Seq(
                      Build(Var("j_55"))
                    , Seq(
                        CallT(SVar("j_27"), [], [])
                      , Seq(
                          Match(Var("m_55"))
                        , Build(
                            Anno(
                              Op("QConId", [Var("l_55"), Var("m_55")])
                            , Var("k_55")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "QVarId_2_0"
        , [ VarDec(
              "k_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "l_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["p_55", "n_55", "o_55", "q_55", "r_55"]
          , Seq(
              Match(
                Anno(
                  Op("QVarId", [Var("n_55"), Var("o_55")])
                , Var("p_55")
                )
              )
            , Seq(
                Build(Var("n_55"))
              , Seq(
                  CallT(SVar("k_27"), [], [])
                , Seq(
                    Match(Var("q_55"))
                  , Seq(
                      Build(Var("o_55"))
                    , Seq(
                        CallT(SVar("l_27"), [], [])
                      , Seq(
                          Match(Var("r_55"))
                        , Build(
                            Anno(
                              Op("QVarId", [Var("q_55"), Var("r_55")])
                            , Var("p_55")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "BinCon_1_0"
        , [ VarDec(
              "m_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["t_55", "s_55", "u_55"]
          , Seq(
              Match(
                Anno(Op("BinCon", [Var("s_55")]), Var("t_55"))
              )
            , Seq(
                Build(Var("s_55"))
              , Seq(
                  CallT(SVar("m_27"), [], [])
                , Seq(
                    Match(Var("u_55"))
                  , Build(
                      Anno(Op("BinCon", [Var("u_55")]), Var("t_55"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ConsOp_1_0"
        , [ VarDec(
              "n_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["w_55", "v_55", "x_55"]
          , Seq(
              Match(
                Anno(Op("ConsOp", [Var("v_55")]), Var("w_55"))
              )
            , Seq(
                Build(Var("v_55"))
              , Seq(
                  CallT(SVar("n_27"), [], [])
                , Seq(
                    Match(Var("x_55"))
                  , Build(
                      Anno(Op("ConsOp", [Var("x_55")]), Var("w_55"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "QPrefCon_1_0"
        , [ VarDec(
              "o_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["z_55", "y_55", "a_56"]
          , Seq(
              Match(
                Anno(Op("QPrefCon", [Var("y_55")]), Var("z_55"))
              )
            , Seq(
                Build(Var("y_55"))
              , Seq(
                  CallT(SVar("o_27"), [], [])
                , Seq(
                    Match(Var("a_56"))
                  , Build(
                      Anno(Op("QPrefCon", [Var("a_56")]), Var("z_55"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "PrefCon_1_0"
        , [ VarDec(
              "p_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["c_56", "b_56", "d_56"]
          , Seq(
              Match(
                Anno(Op("PrefCon", [Var("b_56")]), Var("c_56"))
              )
            , Seq(
                Build(Var("b_56"))
              , Seq(
                  CallT(SVar("p_27"), [], [])
                , Seq(
                    Match(Var("d_56"))
                  , Build(
                      Anno(Op("PrefCon", [Var("d_56")]), Var("c_56"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "QPrefOp_1_0"
        , [ VarDec(
              "q_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["f_56", "e_56", "g_56"]
          , Seq(
              Match(
                Anno(Op("QPrefOp", [Var("e_56")]), Var("f_56"))
              )
            , Seq(
                Build(Var("e_56"))
              , Seq(
                  CallT(SVar("q_27"), [], [])
                , Seq(
                    Match(Var("g_56"))
                  , Build(
                      Anno(Op("QPrefOp", [Var("g_56")]), Var("f_56"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "PrefOp_1_0"
        , [ VarDec(
              "r_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["i_56", "h_56", "j_56"]
          , Seq(
              Match(
                Anno(Op("PrefOp", [Var("h_56")]), Var("i_56"))
              )
            , Seq(
                Build(Var("h_56"))
              , Seq(
                  CallT(SVar("r_27"), [], [])
                , Seq(
                    Match(Var("j_56"))
                  , Build(
                      Anno(Op("PrefOp", [Var("j_56")]), Var("i_56"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "ConOp_1_0"
        , [ VarDec(
              "s_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["l_56", "k_56", "m_56"]
          , Seq(
              Match(
                Anno(Op("ConOp", [Var("k_56")]), Var("l_56"))
              )
            , Seq(
                Build(Var("k_56"))
              , Seq(
                  CallT(SVar("s_27"), [], [])
                , Seq(
                    Match(Var("m_56"))
                  , Build(
                      Anno(Op("ConOp", [Var("m_56")]), Var("l_56"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Op_1_0"
        , [ VarDec(
              "t_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["o_56", "n_56", "p_56"]
          , Seq(
              Match(
                Anno(Op("Op", [Var("n_56")]), Var("o_56"))
              )
            , Seq(
                Build(Var("n_56"))
              , Seq(
                  CallT(SVar("t_27"), [], [])
                , Seq(
                    Match(Var("p_56"))
                  , Build(
                      Anno(Op("Op", [Var("p_56")]), Var("o_56"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "BinOpQ_1_0"
        , [ VarDec(
              "u_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["r_56", "q_56", "s_56"]
          , Seq(
              Match(
                Anno(Op("BinOpQ", [Var("q_56")]), Var("r_56"))
              )
            , Seq(
                Build(Var("q_56"))
              , Seq(
                  CallT(SVar("u_27"), [], [])
                , Seq(
                    Match(Var("s_56"))
                  , Build(
                      Anno(Op("BinOpQ", [Var("s_56")]), Var("r_56"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "BinOp_1_0"
        , [ VarDec(
              "v_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["u_56", "t_56", "v_56"]
          , Seq(
              Match(
                Anno(Op("BinOp", [Var("t_56")]), Var("u_56"))
              )
            , Seq(
                Build(Var("t_56"))
              , Seq(
                  CallT(SVar("v_27"), [], [])
                , Seq(
                    Match(Var("v_56"))
                  , Build(
                      Anno(Op("BinOp", [Var("v_56")]), Var("u_56"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Var_1_0"
        , [ VarDec(
              "w_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["x_56", "w_56", "y_56"]
          , Seq(
              Match(
                Anno(Op("Var", [Var("w_56")]), Var("x_56"))
              )
            , Seq(
                Build(Var("w_56"))
              , Seq(
                  CallT(SVar("w_27"), [], [])
                , Seq(
                    Match(Var("y_56"))
                  , Build(
                      Anno(Op("Var", [Var("y_56")]), Var("x_56"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "EmptyList_0_0"
        , []
        , []
        , Match(Anno(Op("EmptyList", []), Wld()))
        )
      , SDefT(
          "Unit_0_0"
        , []
        , []
        , Match(Anno(Op("Unit", []), Wld()))
        )
      , SDefT(
          "Ins_1_0"
        , [ VarDec(
              "x_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["a_57", "z_56", "b_57"]
          , Seq(
              Match(
                Anno(Op("Ins", [Var("z_56")]), Var("a_57"))
              )
            , Seq(
                Build(Var("z_56"))
              , Seq(
                  CallT(SVar("x_27"), [], [])
                , Seq(
                    Match(Var("b_57"))
                  , Build(
                      Anno(Op("Ins", [Var("b_57")]), Var("a_57"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Snoc_2_0"
        , [ VarDec(
              "y_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "z_27"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["e_57", "c_57", "d_57", "f_57", "g_57"]
          , Seq(
              Match(
                Anno(
                  Op("Snoc", [Var("c_57"), Var("d_57")])
                , Var("e_57")
                )
              )
            , Seq(
                Build(Var("c_57"))
              , Seq(
                  CallT(SVar("y_27"), [], [])
                , Seq(
                    Match(Var("f_57"))
                  , Seq(
                      Build(Var("d_57"))
                    , Seq(
                        CallT(SVar("z_27"), [], [])
                      , Seq(
                          Match(Var("g_57"))
                        , Build(
                            Anno(
                              Op("Snoc", [Var("f_57"), Var("g_57")])
                            , Var("e_57")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "DR__UNDEFINE_1_0"
        , [ VarDec(
              "a_28"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["i_57", "h_57", "j_57"]
          , Seq(
              Match(
                Anno(Op("DR_UNDEFINE", [Var("h_57")]), Var("i_57"))
              )
            , Seq(
                Build(Var("h_57"))
              , Seq(
                  CallT(SVar("a_28"), [], [])
                , Seq(
                    Match(Var("j_57"))
                  , Build(
                      Anno(Op("DR_UNDEFINE", [Var("j_57")]), Var("i_57"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "DR__DUMMY_0_0"
        , []
        , []
        , Match(Anno(Op("DR_DUMMY", []), Wld()))
        )
      ]
    )
  ]
)
