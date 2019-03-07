Specification(
  [ Signature(
      [ Constructors(
          [ OpDecl(
              "Var"
            , FunType([ConstType(SortNoArgs("String"))], ConstType(SortNoArgs("Exp")))
            )
          , OpDecl(
              "App"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "Abs"
            , FunType(
                [ConstType(SortNoArgs("String")), ConstType(SortNoArgs("Type")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl("Zero", ConstType(SortNoArgs("Exp")))
          , OpDecl(
              "Succ"
            , FunType([ConstType(SortNoArgs("Exp"))], ConstType(SortNoArgs("Exp")))
            )
          , OpDecl(
              "Pred"
            , FunType([ConstType(SortNoArgs("Exp"))], ConstType(SortNoArgs("Exp")))
            )
          , OpDecl(
              "Ifz"
            , FunType(
                [ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp")), ConstType(SortNoArgs("Exp"))]
              , ConstType(SortNoArgs("Exp"))
              )
            )
          , OpDecl(
              "Closure"
            , FunType(
                [ ConstType(SortNoArgs("Exp"))
                , ConstType(Sort("List", [SortNoArgs("String"), SortNoArgs("Val")]))
                ]
              , ConstType(SortNoArgs("Val"))
              )
            )
          , OpDecl("Z", ConstType(SortNoArgs("Val")))
          , OpDecl(
              "S"
            , FunType([ConstType(SortNoArgs("Val"))], ConstType(SortNoArgs("Val")))
            )
          , OpDecl("Num", ConstType(SortNoArgs("Type")))
          , OpDecl(
              "Fun"
            , FunType(
                [ConstType(SortNoArgs("Type")), ConstType(SortNoArgs("Type"))]
              , ConstType(SortNoArgs("Type"))
              )
            )
          , OpDecl("Nil", ConstType(Sort("List", [SortVar("a")])))
          , OpDecl(
              "Cons"
            , FunType(
                [ConstType(SortVar("a")), ConstType(Sort("List", [SortVar("a")]))]
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
          ]
        )
      ]
    )
  , Strategies(
      [ SDefT(
          "check_0_0"
        , []
        , []
        , GuardedLChoice(
            Scope(
              ["c_2", "d_2"]
            , Seq(
                Match(
                  Anno(
                    Op(
                      ""
                    , [Var("d_2"), Anno(Op("Var", [Var("c_2")]), Wld())]
                    )
                  , Wld()
                  )
                )
              , Seq(
                  Build(
                    Anno(
                      Op("", [Var("c_2"), Var("d_2")])
                    , Op("Nil", [])
                    )
                  )
                , CallT(SVar("lookup_0_0"), [], [])
                )
              )
            )
          , Id()
          , GuardedLChoice(
              Scope(
                ["y_1", "z_1", "a_2", "b_2"]
              , Seq(
                  Match(
                    Anno(
                      Op(
                        ""
                      , [ Var("a_2")
                        , Anno(
                            Op(
                              "Abs"
                            , [Var("y_1"), Var("z_1"), Var("b_2")]
                            )
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
                                "Cons"
                              , [ Anno(
                                    Op("", [Var("y_1"), Var("z_1")])
                                  , Op("Nil", [])
                                  )
                                , Var("a_2")
                                ]
                              )
                            , Op("Nil", [])
                            )
                          , Var("b_2")
                          ]
                        )
                      , Op("Nil", [])
                      )
                    )
                  , CallT(SVar("check_0_0"), [], [])
                  )
                )
              )
            , Id()
            , GuardedLChoice(
                Scope(
                  ["s_1", "t_1", "u_1", "v_1", "w_1", "x_1"]
                , Seq(
                    Match(
                      Anno(
                        Op(
                          ""
                        , [ Var("u_1")
                          , Anno(
                              Op("App", [Var("s_1"), Var("v_1")])
                            , Wld()
                            )
                          ]
                        )
                      , Wld()
                      )
                    )
                  , Seq(
                      Match(Var("x_1"))
                    , Seq(
                        Build(
                          Anno(
                            Op("", [Var("u_1"), Var("s_1")])
                          , Op("Nil", [])
                          )
                        )
                      , Seq(
                          CallT(SVar("check_0_0"), [], [])
                        , Seq(
                            Match(
                              Anno(
                                Op("Fun", [Var("w_1"), Var("t_1")])
                              , Wld()
                              )
                            )
                          , Seq(
                              Build(
                                Anno(
                                  Op("", [Var("u_1"), Var("v_1")])
                                , Op("Nil", [])
                                )
                              )
                            , Seq(
                                CallT(SVar("check_0_0"), [], [])
                              , Seq(
                                  Match(Var("w_1"))
                                , Seq(Build(Var("x_1")), Build(Var("t_1")))
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
                    Match(
                      Anno(
                        Op(
                          ""
                        , [Wld(), Anno(Op("Zero", []), Wld())]
                        )
                      , Wld()
                      )
                    )
                  , Build(Anno(Op("Num", []), Op("Nil", [])))
                  )
                , Id()
                , GuardedLChoice(
                    Scope(
                      ["p_1", "q_1", "r_1"]
                    , Seq(
                        Match(
                          Anno(
                            Op(
                              ""
                            , [Var("p_1"), Anno(Op("Succ", [Var("q_1")]), Wld())]
                            )
                          , Wld()
                          )
                        )
                      , Seq(
                          Match(Var("r_1"))
                        , Seq(
                            Build(
                              Anno(
                                Op("", [Var("p_1"), Var("q_1")])
                              , Op("Nil", [])
                              )
                            )
                          , Seq(
                              CallT(SVar("check_0_0"), [], [])
                            , Seq(
                                Match(Anno(Op("Num", []), Wld()))
                              , Seq(
                                  Build(Var("r_1"))
                                , Build(Anno(Op("Num", []), Op("Nil", [])))
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  , Id()
                  , GuardedLChoice(
                      Scope(
                        ["m_1", "n_1", "o_1"]
                      , Seq(
                          Match(
                            Anno(
                              Op(
                                ""
                              , [Var("m_1"), Anno(Op("Pred", [Var("n_1")]), Wld())]
                              )
                            , Wld()
                            )
                          )
                        , Seq(
                            Match(Var("o_1"))
                          , Seq(
                              Build(
                                Anno(
                                  Op("", [Var("m_1"), Var("n_1")])
                                , Op("Nil", [])
                                )
                              )
                            , Seq(
                                CallT(SVar("check_0_0"), [], [])
                              , Seq(
                                  Match(Anno(Op("Num", []), Wld()))
                                , Seq(
                                    Build(Var("o_1"))
                                  , Build(Anno(Op("Num", []), Op("Nil", [])))
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    , Id()
                    , Scope(
                        ["g_1", "h_1", "i_1", "j_1", "k_1", "l_1"]
                      , Seq(
                          Match(
                            Anno(
                              Op(
                                ""
                              , [ Var("i_1")
                                , Anno(
                                    Op(
                                      "Ifz"
                                    , [Var("h_1"), Var("j_1"), Var("g_1")]
                                    )
                                  , Wld()
                                  )
                                ]
                              )
                            , Wld()
                            )
                          )
                        , Seq(
                            Match(Var("l_1"))
                          , Seq(
                              Build(
                                Anno(
                                  Op("", [Var("i_1"), Var("h_1")])
                                , Op("Nil", [])
                                )
                              )
                            , Seq(
                                CallT(SVar("check_0_0"), [], [])
                              , Seq(
                                  Match(Anno(Op("Num", []), Wld()))
                                , Seq(
                                    Build(
                                      Anno(
                                        Op("", [Var("i_1"), Var("j_1")])
                                      , Op("Nil", [])
                                      )
                                    )
                                  , Seq(
                                      CallT(SVar("check_0_0"), [], [])
                                    , Seq(
                                        Match(Var("k_1"))
                                      , Seq(
                                          Build(
                                            Anno(
                                              Op("", [Var("i_1"), Var("j_1")])
                                            , Op("Nil", [])
                                            )
                                          )
                                        , Seq(
                                            CallT(SVar("check_0_0"), [], [])
                                          , Seq(
                                              Match(Var("k_1"))
                                            , Seq(Build(Var("l_1")), Build(Var("k_1")))
                                            )
                                          )
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
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
          "eval_0_0"
        , []
        , []
        , GuardedLChoice(
            Scope(
              ["i_3", "j_3"]
            , Seq(
                Match(
                  Anno(
                    Op(
                      ""
                    , [Var("j_3"), Anno(Op("Var", [Var("i_3")]), Wld())]
                    )
                  , Wld()
                  )
                )
              , Seq(
                  Build(
                    Anno(
                      Op("", [Var("i_3"), Var("j_3")])
                    , Op("Nil", [])
                    )
                  )
                , CallT(SVar("lookup_0_0"), [], [])
                )
              )
            )
          , Id()
          , GuardedLChoice(
              Scope(
                ["e_3", "f_3", "g_3", "h_3"]
              , Seq(
                  Match(
                    Anno(
                      Op(
                        ""
                      , [ Var("h_3")
                        , Anno(
                            Op(
                              "Abs"
                            , [Var("e_3"), Var("f_3"), Var("g_3")]
                            )
                          , Wld()
                          )
                        ]
                      )
                    , Wld()
                    )
                  )
                , Build(
                    Anno(
                      Op(
                        "Closure"
                      , [ Anno(
                            Op(
                              "Abs"
                            , [Var("e_3"), Var("f_3"), Var("g_3")]
                            )
                          , Op("Nil", [])
                          )
                        , Var("h_3")
                        ]
                      )
                    , Op("Nil", [])
                    )
                  )
                )
              )
            , Id()
            , GuardedLChoice(
                Scope(
                  ["w_2", "x_2", "y_2", "z_2", "a_3", "b_3", "c_3", "d_3"]
                , Seq(
                    Match(
                      Anno(
                        Op(
                          ""
                        , [ Var("a_3")
                          , Anno(
                              Op("App", [Var("w_2"), Var("b_3")])
                            , Wld()
                            )
                          ]
                        )
                      , Wld()
                      )
                    )
                  , Seq(
                      Match(Var("d_3"))
                    , Seq(
                        Build(
                          Anno(
                            Op("", [Var("a_3"), Var("w_2")])
                          , Op("Nil", [])
                          )
                        )
                      , Seq(
                          CallT(SVar("eval_0_0"), [], [])
                        , Seq(
                            Match(
                              Anno(
                                Op(
                                  "Closure"
                                , [ Anno(
                                      Op("Abs", [Var("x_2"), Wld(), Var("y_2")])
                                    , Wld()
                                    )
                                  , Var("z_2")
                                  ]
                                )
                              , Wld()
                              )
                            )
                          , Seq(
                              Build(
                                Anno(
                                  Op("", [Var("a_3"), Var("b_3")])
                                , Op("Nil", [])
                                )
                              )
                            , Seq(
                                CallT(SVar("eval_0_0"), [], [])
                              , Seq(
                                  Match(Var("c_3"))
                                , Seq(
                                    Build(Var("d_3"))
                                  , Seq(
                                      Build(
                                        Anno(
                                          Op(
                                            ""
                                          , [ Anno(
                                                Op(
                                                  "Cons"
                                                , [ Anno(
                                                      Op("", [Var("x_2"), Var("c_3")])
                                                    , Op("Nil", [])
                                                    )
                                                  , Var("z_2")
                                                  ]
                                                )
                                              , Op("Nil", [])
                                              )
                                            , Var("y_2")
                                            ]
                                          )
                                        , Op("Nil", [])
                                        )
                                      )
                                    , CallT(SVar("eval_0_0"), [], [])
                                    )
                                  )
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
                    Match(
                      Anno(
                        Op(
                          ""
                        , [Wld(), Anno(Op("Zero", []), Wld())]
                        )
                      , Wld()
                      )
                    )
                  , Build(Anno(Op("Z", []), Op("Nil", [])))
                  )
                , Id()
                , GuardedLChoice(
                    Scope(
                      ["s_2", "t_2", "u_2", "v_2"]
                    , Seq(
                        Match(
                          Anno(
                            Op(
                              ""
                            , [Var("s_2"), Anno(Op("Succ", [Var("t_2")]), Wld())]
                            )
                          , Wld()
                          )
                        )
                      , Seq(
                          Match(Var("v_2"))
                        , Seq(
                            Build(
                              Anno(
                                Op("", [Var("s_2"), Var("t_2")])
                              , Op("Nil", [])
                              )
                            )
                          , Seq(
                              CallT(SVar("eval_0_0"), [], [])
                            , Seq(
                                Match(Var("u_2"))
                              , Seq(
                                  Build(Var("v_2"))
                                , Build(
                                    Anno(
                                      Op("S", [Var("u_2")])
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
                  , Id()
                  , GuardedLChoice(
                      Scope(
                        ["o_2", "p_2", "q_2", "r_2"]
                      , Seq(
                          Match(
                            Anno(
                              Op(
                                ""
                              , [Var("o_2"), Anno(Op("Pred", [Var("p_2")]), Wld())]
                              )
                            , Wld()
                            )
                          )
                        , Seq(
                            Match(Var("r_2"))
                          , Seq(
                              Build(
                                Anno(
                                  Op("", [Var("o_2"), Var("p_2")])
                                , Op("Nil", [])
                                )
                              )
                            , Seq(
                                CallT(SVar("eval_0_0"), [], [])
                              , Seq(
                                  Match(Anno(Op("S", [Var("q_2")]), Wld()))
                                , Seq(Build(Var("r_2")), Build(Var("q_2")))
                                )
                              )
                            )
                          )
                        )
                      )
                    , Id()
                    , GuardedLChoice(
                        Scope(
                          ["j_2", "k_2", "l_2", "m_2", "n_2"]
                        , Seq(
                            Match(
                              Anno(
                                Op(
                                  ""
                                , [ Var("l_2")
                                  , Anno(
                                      Op(
                                        "Ifz"
                                      , [Var("m_2"), Var("k_2"), Var("j_2")]
                                      )
                                    , Wld()
                                    )
                                  ]
                                )
                              , Wld()
                              )
                            )
                          , Seq(
                              Match(Var("n_2"))
                            , Seq(
                                Build(
                                  Anno(
                                    Op("", [Var("l_2"), Var("m_2")])
                                  , Op("Nil", [])
                                  )
                                )
                              , Seq(
                                  CallT(SVar("eval_0_0"), [], [])
                                , Seq(
                                    Match(Anno(Op("Z", []), Wld()))
                                  , Seq(
                                      Build(Var("n_2"))
                                    , Seq(
                                        Build(
                                          Anno(
                                            Op("", [Var("l_2"), Var("k_2")])
                                          , Op("Nil", [])
                                          )
                                        )
                                      , CallT(SVar("eval_0_0"), [], [])
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
                          ["e_2", "f_2", "g_2", "h_2", "i_2"]
                        , Seq(
                            Match(
                              Anno(
                                Op(
                                  ""
                                , [ Var("g_2")
                                  , Anno(
                                      Op(
                                        "Ifz"
                                      , [Var("e_2"), Var("h_2"), Var("f_2")]
                                      )
                                    , Wld()
                                    )
                                  ]
                                )
                              , Wld()
                              )
                            )
                          , Seq(
                              Match(Var("i_2"))
                            , Seq(
                                Build(
                                  Anno(
                                    Op("", [Var("g_2"), Var("h_2")])
                                  , Op("Nil", [])
                                  )
                                )
                              , Seq(
                                  CallT(SVar("eval_0_0"), [], [])
                                , Seq(
                                    Match(Anno(Op("S", [Wld()]), Wld()))
                                  , Seq(
                                      Build(Var("i_2"))
                                    , Seq(
                                        Build(
                                          Anno(
                                            Op("", [Var("g_2"), Var("f_2")])
                                          , Op("Nil", [])
                                          )
                                        )
                                      , CallT(SVar("eval_0_0"), [], [])
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
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
          "check_eval_0_0"
        , []
        , []
        , Scope(
            ["k_3", "l_3"]
          , Seq(
              Match(Var("k_3"))
            , Seq(
                Match(Var("l_3"))
              , Seq(
                  Build(
                    Anno(
                      Op(
                        ""
                      , [Anno(Op("Nil", []), Op("Nil", [])), Var("k_3")]
                      )
                    , Op("Nil", [])
                    )
                  )
                , Seq(
                    CallT(SVar("check_0_0"), [], [])
                  , Seq(
                      Build(Var("l_3"))
                    , Seq(
                        Build(
                          Anno(
                            Op(
                              ""
                            , [Anno(Op("Nil", []), Op("Nil", [])), Var("k_3")]
                            )
                          , Op("Nil", [])
                          )
                        )
                      , CallT(SVar("eval_0_0"), [], [])
                      )
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "lookup_0_0"
        , []
        , []
        , Scope(
            ["m_3", "n_3", "o_3"]
          , GuardedLChoice(
              Seq(
                Match(
                  Anno(
                    Op(
                      ""
                    , [ Var("n_3")
                      , Anno(
                          Op(
                            "Cons"
                          , [ Anno(
                                Op("", [Var("n_3"), Var("m_3")])
                              , Wld()
                              )
                            , Wld()
                            ]
                          )
                        , Wld()
                        )
                      ]
                    )
                  , Wld()
                  )
                )
              , Build(Var("m_3"))
              )
            , Id()
            , Seq(
                Match(
                  Anno(
                    Op(
                      ""
                    , [ Var("n_3")
                      , Anno(Op("Cons", [Wld(), Var("o_3")]), Wld())
                      ]
                    )
                  , Wld()
                  )
                )
              , Seq(
                  Build(
                    Anno(
                      Op("", [Var("n_3"), Var("o_3")])
                    , Op("Nil", [])
                    )
                  )
                , CallT(SVar("lookup_0_0"), [], [])
                )
              )
            )
          )
        )
      , SDefT(
          "Anno__Cong_____2_0"
        , [ VarDec(
              "t_3"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "u_3"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["p_3", "q_3", "r_3", "s_3"]
          , Seq(
              Match(Anno(Var("p_3"), Var("q_3")))
            , Seq(
                Build(Var("p_3"))
              , Seq(
                  CallT(SVar("t_3"), [], [])
                , Seq(
                    Match(Var("r_3"))
                  , Seq(
                      Build(Var("q_3"))
                    , Seq(
                        CallT(SVar("u_3"), [], [])
                      , Seq(
                          Match(Var("s_3"))
                        , Build(Anno(Var("r_3"), Var("s_3")))
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
          "Var_1_0"
        , [ VarDec(
              "v_3"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["v_4", "u_4", "w_4"]
          , Seq(
              Match(
                Anno(Op("Var", [Var("u_4")]), Var("v_4"))
              )
            , Seq(
                Build(Var("u_4"))
              , Seq(
                  CallT(SVar("v_3"), [], [])
                , Seq(
                    Match(Var("w_4"))
                  , Build(
                      Anno(Op("Var", [Var("w_4")]), Var("v_4"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "App_2_0"
        , [ VarDec(
              "w_3"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "x_3"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["z_4", "x_4", "y_4", "a_5", "b_5"]
          , Seq(
              Match(
                Anno(
                  Op("App", [Var("x_4"), Var("y_4")])
                , Var("z_4")
                )
              )
            , Seq(
                Build(Var("x_4"))
              , Seq(
                  CallT(SVar("w_3"), [], [])
                , Seq(
                    Match(Var("a_5"))
                  , Seq(
                      Build(Var("y_4"))
                    , Seq(
                        CallT(SVar("x_3"), [], [])
                      , Seq(
                          Match(Var("b_5"))
                        , Build(
                            Anno(
                              Op("App", [Var("a_5"), Var("b_5")])
                            , Var("z_4")
                            )
                          )
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
          "Abs_3_0"
        , [ VarDec(
              "y_3"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "z_3"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "a_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["f_5", "c_5", "d_5", "e_5", "g_5", "h_5", "i_5"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "Abs"
                  , [Var("c_5"), Var("d_5"), Var("e_5")]
                  )
                , Var("f_5")
                )
              )
            , Seq(
                Build(Var("c_5"))
              , Seq(
                  CallT(SVar("y_3"), [], [])
                , Seq(
                    Match(Var("g_5"))
                  , Seq(
                      Build(Var("d_5"))
                    , Seq(
                        CallT(SVar("z_3"), [], [])
                      , Seq(
                          Match(Var("h_5"))
                        , Seq(
                            Build(Var("e_5"))
                          , Seq(
                              CallT(SVar("a_4"), [], [])
                            , Seq(
                                Match(Var("i_5"))
                              , Build(
                                  Anno(
                                    Op(
                                      "Abs"
                                    , [Var("g_5"), Var("h_5"), Var("i_5")]
                                    )
                                  , Var("f_5")
                                  )
                                )
                              )
                            )
                          )
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
          "Zero_0_0"
        , []
        , []
        , Match(Anno(Op("Zero", []), Wld()))
        )
      , SDefT(
          "Succ_1_0"
        , [ VarDec(
              "b_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["k_5", "j_5", "l_5"]
          , Seq(
              Match(
                Anno(Op("Succ", [Var("j_5")]), Var("k_5"))
              )
            , Seq(
                Build(Var("j_5"))
              , Seq(
                  CallT(SVar("b_4"), [], [])
                , Seq(
                    Match(Var("l_5"))
                  , Build(
                      Anno(Op("Succ", [Var("l_5")]), Var("k_5"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Pred_1_0"
        , [ VarDec(
              "c_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["n_5", "m_5", "o_5"]
          , Seq(
              Match(
                Anno(Op("Pred", [Var("m_5")]), Var("n_5"))
              )
            , Seq(
                Build(Var("m_5"))
              , Seq(
                  CallT(SVar("c_4"), [], [])
                , Seq(
                    Match(Var("o_5"))
                  , Build(
                      Anno(Op("Pred", [Var("o_5")]), Var("n_5"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Ifz_3_0"
        , [ VarDec(
              "d_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "e_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "f_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["s_5", "p_5", "q_5", "r_5", "t_5", "u_5", "v_5"]
          , Seq(
              Match(
                Anno(
                  Op(
                    "Ifz"
                  , [Var("p_5"), Var("q_5"), Var("r_5")]
                  )
                , Var("s_5")
                )
              )
            , Seq(
                Build(Var("p_5"))
              , Seq(
                  CallT(SVar("d_4"), [], [])
                , Seq(
                    Match(Var("t_5"))
                  , Seq(
                      Build(Var("q_5"))
                    , Seq(
                        CallT(SVar("e_4"), [], [])
                      , Seq(
                          Match(Var("u_5"))
                        , Seq(
                            Build(Var("r_5"))
                          , Seq(
                              CallT(SVar("f_4"), [], [])
                            , Seq(
                                Match(Var("v_5"))
                              , Build(
                                  Anno(
                                    Op(
                                      "Ifz"
                                    , [Var("t_5"), Var("u_5"), Var("v_5")]
                                    )
                                  , Var("s_5")
                                  )
                                )
                              )
                            )
                          )
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
          "Closure_2_0"
        , [ VarDec(
              "g_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "h_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["y_5", "w_5", "x_5", "z_5", "a_6"]
          , Seq(
              Match(
                Anno(
                  Op("Closure", [Var("w_5"), Var("x_5")])
                , Var("y_5")
                )
              )
            , Seq(
                Build(Var("w_5"))
              , Seq(
                  CallT(SVar("g_4"), [], [])
                , Seq(
                    Match(Var("z_5"))
                  , Seq(
                      Build(Var("x_5"))
                    , Seq(
                        CallT(SVar("h_4"), [], [])
                      , Seq(
                          Match(Var("a_6"))
                        , Build(
                            Anno(
                              Op("Closure", [Var("z_5"), Var("a_6")])
                            , Var("y_5")
                            )
                          )
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
          "Z_0_0"
        , []
        , []
        , Match(Anno(Op("Z", []), Wld()))
        )
      , SDefT(
          "S_1_0"
        , [ VarDec(
              "i_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["c_6", "b_6", "d_6"]
          , Seq(
              Match(
                Anno(Op("S", [Var("b_6")]), Var("c_6"))
              )
            , Seq(
                Build(Var("b_6"))
              , Seq(
                  CallT(SVar("i_4"), [], [])
                , Seq(
                    Match(Var("d_6"))
                  , Build(
                      Anno(Op("S", [Var("d_6")]), Var("c_6"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "Num_0_0"
        , []
        , []
        , Match(Anno(Op("Num", []), Wld()))
        )
      , SDefT(
          "Fun_2_0"
        , [ VarDec(
              "j_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "k_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["g_6", "e_6", "f_6", "h_6", "i_6"]
          , Seq(
              Match(
                Anno(
                  Op("Fun", [Var("e_6"), Var("f_6")])
                , Var("g_6")
                )
              )
            , Seq(
                Build(Var("e_6"))
              , Seq(
                  CallT(SVar("j_4"), [], [])
                , Seq(
                    Match(Var("h_6"))
                  , Seq(
                      Build(Var("f_6"))
                    , Seq(
                        CallT(SVar("k_4"), [], [])
                      , Seq(
                          Match(Var("i_6"))
                        , Build(
                            Anno(
                              Op("Fun", [Var("h_6"), Var("i_6")])
                            , Var("g_6")
                            )
                          )
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
              "l_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "m_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["l_6", "j_6", "k_6", "m_6", "n_6"]
          , Seq(
              Match(
                Anno(
                  Op("Cons", [Var("j_6"), Var("k_6")])
                , Var("l_6")
                )
              )
            , Seq(
                Build(Var("j_6"))
              , Seq(
                  CallT(SVar("l_4"), [], [])
                , Seq(
                    Match(Var("m_6"))
                  , Seq(
                      Build(Var("k_6"))
                    , Seq(
                        CallT(SVar("m_4"), [], [])
                      , Seq(
                          Match(Var("n_6"))
                        , Build(
                            Anno(
                              Op("Cons", [Var("m_6"), Var("n_6")])
                            , Var("l_6")
                            )
                          )
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
          "_1_0"
        , [ VarDec(
              "n_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["p_6", "o_6", "q_6"]
          , Seq(
              Match(
                Anno(Op("", [Var("o_6")]), Var("p_6"))
              )
            , Seq(
                Build(Var("o_6"))
              , Seq(
                  CallT(SVar("n_4"), [], [])
                , Seq(
                    Match(Var("q_6"))
                  , Build(
                      Anno(Op("", [Var("q_6")]), Var("p_6"))
                    )
                  )
                )
              )
            )
          )
        )
      , SDefT(
          "_2_0"
        , [ VarDec(
              "o_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "p_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["t_6", "r_6", "s_6", "u_6", "v_6"]
          , Seq(
              Match(
                Anno(
                  Op("", [Var("r_6"), Var("s_6")])
                , Var("t_6")
                )
              )
            , Seq(
                Build(Var("r_6"))
              , Seq(
                  CallT(SVar("o_4"), [], [])
                , Seq(
                    Match(Var("u_6"))
                  , Seq(
                      Build(Var("s_6"))
                    , Seq(
                        CallT(SVar("p_4"), [], [])
                      , Seq(
                          Match(Var("v_6"))
                        , Build(
                            Anno(
                              Op("", [Var("u_6"), Var("v_6")])
                            , Var("t_6")
                            )
                          )
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
              "q_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "r_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          , VarDec(
              "s_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["z_6", "w_6", "x_6", "y_6", "a_7", "b_7", "c_7"]
          , Seq(
              Match(
                Anno(
                  Op(
                    ""
                  , [Var("w_6"), Var("x_6"), Var("y_6")]
                  )
                , Var("z_6")
                )
              )
            , Seq(
                Build(Var("w_6"))
              , Seq(
                  CallT(SVar("q_4"), [], [])
                , Seq(
                    Match(Var("a_7"))
                  , Seq(
                      Build(Var("x_6"))
                    , Seq(
                        CallT(SVar("r_4"), [], [])
                      , Seq(
                          Match(Var("b_7"))
                        , Seq(
                            Build(Var("y_6"))
                          , Seq(
                              CallT(SVar("s_4"), [], [])
                            , Seq(
                                Match(Var("c_7"))
                              , Build(
                                  Anno(
                                    Op(
                                      ""
                                    , [Var("a_7"), Var("b_7"), Var("c_7")]
                                    )
                                  , Var("z_6")
                                  )
                                )
                              )
                            )
                          )
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
              "t_4"
            , FunType(
                [ConstType(Sort("ATerm", []))]
              , ConstType(Sort("ATerm", []))
              )
            )
          ]
        , []
        , Scope(
            ["e_7", "d_7", "f_7"]
          , Seq(
              Match(
                Anno(Op("DR_UNDEFINE", [Var("d_7")]), Var("e_7"))
              )
            , Seq(
                Build(Var("d_7"))
              , Seq(
                  CallT(SVar("t_4"), [], [])
                , Seq(
                    Match(Var("f_7"))
                  , Build(
                      Anno(Op("DR_UNDEFINE", [Var("f_7")]), Var("e_7"))
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
