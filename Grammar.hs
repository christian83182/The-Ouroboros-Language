{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,313) ([0,16735,170,49152,36951,42,61440,42005,10,0,0,8,0,0,2,0,32780,0,0,8194,0,0,0,0,0,0,0,0,128,0,16608,416,0,5632,8,0,0,0,0,0,0,0,0,0,16,512,0,4,0,0,32,0,0,32768,0,4096,40960,2,1792,43584,0,320,10768,0,80,3716,0,16,672,0,0,0,49152,36951,42,0,0,0,0,64,16,0,32,0,0,16384,0,64,2048,0,49152,0,0,0,64,0,896,256,0,0,0,0,192,0,0,32,0,32768,3,0,57344,32832,1,0,0,0,0,0,0,0,0,28672,41984,10,4096,0,0,8192,0,0,0,0,0,112,2724,0,28,681,0,16391,170,0,0,0,20480,33792,10,5120,41216,2,1280,43072,0,320,10768,0,0,0,0,20,673,0,16389,168,0,0,0,20480,33792,10,0,0,0,1024,43008,0,320,10768,0,0,0,0,0,0,0,0,0,0,896,0,0,0,0,0,56,0,0,14,0,32768,3,0,57344,0,0,0,0,0,2048,0,0,512,0,0,6144,0,0,0,0,0,0,0,256,8192,0,0,0,0,0,86,0,16389,168,16384,4097,42,20480,33792,10,5120,41216,2,1280,43072,0,320,10768,0,0,0,0,32768,0,0,0,0,0,1,42,0,0,0,5120,41216,2,0,0,0,32768,1027,0,57344,256,0,0,64,0,2048,16,0,512,4,0,32768,0,0,0,0,24320,43585,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,224,1,0,16384,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseTokens","StatementList","Statement","Print","VarDec","StreamExpr","StreamBlockWrapper","StreamBlock","StreamWrapper","Stream","Loop","Import","NumExpr","BoolExpr","intVar","boolVar","varName","'print'","'var'","'='","'import'","'as'","'loop'","'+'","'-'","'*'","'&'","'@'","'#'","'AND'","'OR'","'NOT'","'=='","'('","')'","'['","']'","'{'","'}'","';'","','","'<'","'>'","%eof"]
        bit_start = st * 46
        bit_end = (st + 1) * 46
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..45]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (17) = happyShift action_12
action_0 (18) = happyShift action_13
action_0 (19) = happyShift action_14
action_0 (20) = happyShift action_15
action_0 (21) = happyShift action_16
action_0 (23) = happyShift action_17
action_0 (25) = happyShift action_18
action_0 (31) = happyShift action_19
action_0 (34) = happyShift action_20
action_0 (36) = happyShift action_21
action_0 (38) = happyShift action_22
action_0 (40) = happyShift action_23
action_0 (4) = happyGoto action_24
action_0 (5) = happyGoto action_25
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 (8) = happyGoto action_5
action_0 (9) = happyGoto action_6
action_0 (11) = happyGoto action_7
action_0 (13) = happyGoto action_8
action_0 (14) = happyGoto action_9
action_0 (15) = happyGoto action_10
action_0 (16) = happyGoto action_11
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (17) = happyShift action_12
action_1 (18) = happyShift action_13
action_1 (19) = happyShift action_14
action_1 (20) = happyShift action_15
action_1 (21) = happyShift action_16
action_1 (23) = happyShift action_17
action_1 (25) = happyShift action_18
action_1 (31) = happyShift action_19
action_1 (34) = happyShift action_20
action_1 (36) = happyShift action_21
action_1 (38) = happyShift action_22
action_1 (40) = happyShift action_23
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 (8) = happyGoto action_5
action_1 (9) = happyGoto action_6
action_1 (11) = happyGoto action_7
action_1 (13) = happyGoto action_8
action_1 (14) = happyGoto action_9
action_1 (15) = happyGoto action_10
action_1 (16) = happyGoto action_11
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (17) = happyShift action_12
action_2 (18) = happyShift action_13
action_2 (19) = happyShift action_14
action_2 (20) = happyShift action_15
action_2 (21) = happyShift action_16
action_2 (23) = happyShift action_17
action_2 (25) = happyShift action_18
action_2 (31) = happyShift action_19
action_2 (34) = happyShift action_20
action_2 (36) = happyShift action_21
action_2 (38) = happyShift action_22
action_2 (40) = happyShift action_23
action_2 (4) = happyGoto action_26
action_2 (5) = happyGoto action_25
action_2 (6) = happyGoto action_3
action_2 (7) = happyGoto action_4
action_2 (8) = happyGoto action_5
action_2 (9) = happyGoto action_6
action_2 (11) = happyGoto action_7
action_2 (13) = happyGoto action_8
action_2 (14) = happyGoto action_9
action_2 (15) = happyGoto action_10
action_2 (16) = happyGoto action_11
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (42) = happyShift action_64
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (42) = happyShift action_63
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (29) = happyShift action_60
action_5 (30) = happyShift action_61
action_5 (42) = happyShift action_62
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (30) = happyShift action_58
action_6 (42) = happyShift action_59
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_14

action_8 _ = happyReduce_3

action_9 (42) = happyShift action_57
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (26) = happyShift action_50
action_10 (27) = happyShift action_51
action_10 (28) = happyShift action_52
action_10 (35) = happyShift action_53
action_10 (42) = happyShift action_54
action_10 (44) = happyShift action_55
action_10 (45) = happyShift action_56
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (32) = happyShift action_46
action_11 (33) = happyShift action_47
action_11 (35) = happyShift action_48
action_11 (42) = happyShift action_49
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_33

action_13 _ = happyReduce_45

action_14 _ = happyReduce_16

action_15 (19) = happyShift action_14
action_15 (40) = happyShift action_23
action_15 (9) = happyGoto action_45
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (19) = happyShift action_44
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (24) = happyShift action_43
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (36) = happyShift action_42
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (19) = happyShift action_14
action_19 (36) = happyShift action_30
action_19 (38) = happyShift action_22
action_19 (40) = happyShift action_23
action_19 (8) = happyGoto action_40
action_19 (9) = happyGoto action_41
action_19 (11) = happyGoto action_7
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (17) = happyShift action_12
action_20 (18) = happyShift action_13
action_20 (19) = happyShift action_14
action_20 (31) = happyShift action_19
action_20 (34) = happyShift action_20
action_20 (36) = happyShift action_21
action_20 (38) = happyShift action_22
action_20 (40) = happyShift action_23
action_20 (8) = happyGoto action_31
action_20 (9) = happyGoto action_28
action_20 (11) = happyGoto action_7
action_20 (15) = happyGoto action_38
action_20 (16) = happyGoto action_39
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (17) = happyShift action_12
action_21 (19) = happyShift action_14
action_21 (31) = happyShift action_19
action_21 (36) = happyShift action_21
action_21 (38) = happyShift action_22
action_21 (40) = happyShift action_23
action_21 (8) = happyGoto action_35
action_21 (9) = happyGoto action_36
action_21 (11) = happyGoto action_7
action_21 (15) = happyGoto action_37
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (17) = happyShift action_12
action_22 (19) = happyShift action_14
action_22 (31) = happyShift action_19
action_22 (36) = happyShift action_21
action_22 (38) = happyShift action_22
action_22 (39) = happyShift action_34
action_22 (40) = happyShift action_23
action_22 (8) = happyGoto action_31
action_22 (9) = happyGoto action_28
action_22 (11) = happyGoto action_7
action_22 (12) = happyGoto action_32
action_22 (15) = happyGoto action_33
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (19) = happyShift action_14
action_23 (36) = happyShift action_30
action_23 (38) = happyShift action_22
action_23 (40) = happyShift action_23
action_23 (8) = happyGoto action_27
action_23 (9) = happyGoto action_28
action_23 (10) = happyGoto action_29
action_23 (11) = happyGoto action_7
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (46) = happyAccept
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (17) = happyShift action_12
action_25 (18) = happyShift action_13
action_25 (19) = happyShift action_14
action_25 (20) = happyShift action_15
action_25 (21) = happyShift action_16
action_25 (23) = happyShift action_17
action_25 (25) = happyShift action_18
action_25 (31) = happyShift action_19
action_25 (34) = happyShift action_20
action_25 (36) = happyShift action_21
action_25 (38) = happyShift action_22
action_25 (40) = happyShift action_23
action_25 (4) = happyGoto action_26
action_25 (5) = happyGoto action_25
action_25 (6) = happyGoto action_3
action_25 (7) = happyGoto action_4
action_25 (8) = happyGoto action_5
action_25 (9) = happyGoto action_6
action_25 (11) = happyGoto action_7
action_25 (13) = happyGoto action_8
action_25 (14) = happyGoto action_9
action_25 (15) = happyGoto action_10
action_25 (16) = happyGoto action_11
action_25 _ = happyReduce_2

action_26 _ = happyReduce_1

action_27 (29) = happyShift action_60
action_27 (43) = happyShift action_89
action_27 _ = happyReduce_18

action_28 (30) = happyShift action_58
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (41) = happyShift action_88
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (19) = happyShift action_14
action_30 (40) = happyShift action_23
action_30 (9) = happyGoto action_87
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (29) = happyShift action_60
action_31 (30) = happyShift action_61
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (39) = happyShift action_86
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (26) = happyShift action_50
action_33 (27) = happyShift action_51
action_33 (28) = happyShift action_52
action_33 (43) = happyShift action_85
action_33 _ = happyReduce_24

action_34 _ = happyReduce_20

action_35 (29) = happyShift action_60
action_35 (30) = happyShift action_84
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (30) = happyShift action_83
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (26) = happyShift action_80
action_37 (27) = happyShift action_81
action_37 (28) = happyShift action_82
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (26) = happyShift action_50
action_38 (27) = happyShift action_51
action_38 (28) = happyShift action_52
action_38 (35) = happyShift action_53
action_38 (44) = happyShift action_55
action_38 (45) = happyShift action_56
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_40

action_40 _ = happyReduce_36

action_41 _ = happyReduce_37

action_42 (17) = happyShift action_12
action_42 (18) = happyShift action_13
action_42 (19) = happyShift action_14
action_42 (31) = happyShift action_19
action_42 (34) = happyShift action_20
action_42 (36) = happyShift action_21
action_42 (38) = happyShift action_22
action_42 (40) = happyShift action_23
action_42 (8) = happyGoto action_31
action_42 (9) = happyGoto action_28
action_42 (11) = happyGoto action_7
action_42 (15) = happyGoto action_38
action_42 (16) = happyGoto action_79
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (19) = happyShift action_78
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (22) = happyShift action_77
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_11

action_46 (17) = happyShift action_12
action_46 (18) = happyShift action_13
action_46 (19) = happyShift action_14
action_46 (31) = happyShift action_19
action_46 (34) = happyShift action_20
action_46 (36) = happyShift action_21
action_46 (38) = happyShift action_22
action_46 (40) = happyShift action_23
action_46 (8) = happyGoto action_31
action_46 (9) = happyGoto action_28
action_46 (11) = happyGoto action_7
action_46 (15) = happyGoto action_38
action_46 (16) = happyGoto action_76
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (17) = happyShift action_12
action_47 (18) = happyShift action_13
action_47 (19) = happyShift action_14
action_47 (31) = happyShift action_19
action_47 (34) = happyShift action_20
action_47 (36) = happyShift action_21
action_47 (38) = happyShift action_22
action_47 (40) = happyShift action_23
action_47 (8) = happyGoto action_31
action_47 (9) = happyGoto action_28
action_47 (11) = happyGoto action_7
action_47 (15) = happyGoto action_38
action_47 (16) = happyGoto action_75
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (17) = happyShift action_12
action_48 (18) = happyShift action_13
action_48 (19) = happyShift action_14
action_48 (31) = happyShift action_19
action_48 (34) = happyShift action_20
action_48 (36) = happyShift action_21
action_48 (38) = happyShift action_22
action_48 (40) = happyShift action_23
action_48 (8) = happyGoto action_31
action_48 (9) = happyGoto action_28
action_48 (11) = happyGoto action_7
action_48 (15) = happyGoto action_38
action_48 (16) = happyGoto action_74
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_6

action_50 (17) = happyShift action_12
action_50 (19) = happyShift action_14
action_50 (31) = happyShift action_19
action_50 (36) = happyShift action_21
action_50 (38) = happyShift action_22
action_50 (40) = happyShift action_23
action_50 (8) = happyGoto action_31
action_50 (9) = happyGoto action_28
action_50 (11) = happyGoto action_7
action_50 (15) = happyGoto action_73
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (17) = happyShift action_12
action_51 (19) = happyShift action_14
action_51 (31) = happyShift action_19
action_51 (36) = happyShift action_21
action_51 (38) = happyShift action_22
action_51 (40) = happyShift action_23
action_51 (8) = happyGoto action_31
action_51 (9) = happyGoto action_28
action_51 (11) = happyGoto action_7
action_51 (15) = happyGoto action_72
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (17) = happyShift action_12
action_52 (19) = happyShift action_14
action_52 (31) = happyShift action_19
action_52 (36) = happyShift action_21
action_52 (38) = happyShift action_22
action_52 (40) = happyShift action_23
action_52 (8) = happyGoto action_31
action_52 (9) = happyGoto action_28
action_52 (11) = happyGoto action_7
action_52 (15) = happyGoto action_71
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (17) = happyShift action_12
action_53 (19) = happyShift action_14
action_53 (31) = happyShift action_19
action_53 (36) = happyShift action_21
action_53 (38) = happyShift action_22
action_53 (40) = happyShift action_23
action_53 (8) = happyGoto action_31
action_53 (9) = happyGoto action_28
action_53 (11) = happyGoto action_7
action_53 (15) = happyGoto action_70
action_53 _ = happyFail (happyExpListPerState 53)

action_54 _ = happyReduce_5

action_55 (17) = happyShift action_12
action_55 (19) = happyShift action_14
action_55 (31) = happyShift action_19
action_55 (36) = happyShift action_21
action_55 (38) = happyShift action_22
action_55 (40) = happyShift action_23
action_55 (8) = happyGoto action_31
action_55 (9) = happyGoto action_28
action_55 (11) = happyGoto action_7
action_55 (15) = happyGoto action_69
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (17) = happyShift action_12
action_56 (19) = happyShift action_14
action_56 (31) = happyShift action_19
action_56 (36) = happyShift action_21
action_56 (38) = happyShift action_22
action_56 (40) = happyShift action_23
action_56 (8) = happyGoto action_31
action_56 (9) = happyGoto action_28
action_56 (11) = happyGoto action_7
action_56 (15) = happyGoto action_68
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_4

action_58 (17) = happyShift action_12
action_58 (19) = happyShift action_14
action_58 (31) = happyShift action_19
action_58 (36) = happyShift action_21
action_58 (38) = happyShift action_22
action_58 (40) = happyShift action_23
action_58 (8) = happyGoto action_31
action_58 (9) = happyGoto action_28
action_58 (11) = happyGoto action_7
action_58 (15) = happyGoto action_67
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_8

action_60 (19) = happyShift action_14
action_60 (36) = happyShift action_30
action_60 (38) = happyShift action_22
action_60 (40) = happyShift action_23
action_60 (8) = happyGoto action_66
action_60 (9) = happyGoto action_28
action_60 (11) = happyGoto action_7
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (17) = happyShift action_12
action_61 (19) = happyShift action_14
action_61 (31) = happyShift action_19
action_61 (36) = happyShift action_21
action_61 (38) = happyShift action_22
action_61 (40) = happyShift action_23
action_61 (8) = happyGoto action_31
action_61 (9) = happyGoto action_28
action_61 (11) = happyGoto action_7
action_61 (15) = happyGoto action_65
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_7

action_63 _ = happyReduce_10

action_64 _ = happyReduce_9

action_65 (26) = happyShift action_50
action_65 (27) = happyShift action_51
action_65 (28) = happyShift action_52
action_65 _ = happyReduce_34

action_66 _ = happyReduce_13

action_67 (26) = happyShift action_50
action_67 (27) = happyShift action_51
action_67 (28) = happyShift action_52
action_67 _ = happyReduce_21

action_68 (26) = happyShift action_50
action_68 (27) = happyShift action_51
action_68 (28) = happyShift action_52
action_68 _ = happyReduce_42

action_69 (26) = happyShift action_50
action_69 (27) = happyShift action_51
action_69 (28) = happyShift action_52
action_69 _ = happyReduce_41

action_70 (26) = happyShift action_50
action_70 (27) = happyShift action_51
action_70 (28) = happyShift action_52
action_70 _ = happyReduce_44

action_71 _ = happyReduce_29

action_72 (28) = happyShift action_52
action_72 _ = happyReduce_28

action_73 (28) = happyShift action_52
action_73 _ = happyReduce_27

action_74 (32) = happyShift action_46
action_74 (33) = happyShift action_47
action_74 _ = happyReduce_43

action_75 _ = happyReduce_39

action_76 _ = happyReduce_38

action_77 (19) = happyShift action_14
action_77 (40) = happyShift action_23
action_77 (9) = happyGoto action_99
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_26

action_79 (32) = happyShift action_46
action_79 (33) = happyShift action_47
action_79 (35) = happyShift action_48
action_79 (37) = happyShift action_98
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (17) = happyShift action_12
action_80 (19) = happyShift action_14
action_80 (31) = happyShift action_19
action_80 (36) = happyShift action_21
action_80 (38) = happyShift action_22
action_80 (40) = happyShift action_23
action_80 (8) = happyGoto action_31
action_80 (9) = happyGoto action_28
action_80 (11) = happyGoto action_7
action_80 (15) = happyGoto action_97
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (17) = happyShift action_12
action_81 (19) = happyShift action_14
action_81 (31) = happyShift action_19
action_81 (36) = happyShift action_21
action_81 (38) = happyShift action_22
action_81 (40) = happyShift action_23
action_81 (8) = happyGoto action_31
action_81 (9) = happyGoto action_28
action_81 (11) = happyGoto action_7
action_81 (15) = happyGoto action_96
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (17) = happyShift action_12
action_82 (19) = happyShift action_14
action_82 (31) = happyShift action_19
action_82 (36) = happyShift action_21
action_82 (38) = happyShift action_22
action_82 (40) = happyShift action_23
action_82 (8) = happyGoto action_31
action_82 (9) = happyGoto action_28
action_82 (11) = happyGoto action_7
action_82 (15) = happyGoto action_95
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (17) = happyShift action_12
action_83 (19) = happyShift action_14
action_83 (31) = happyShift action_19
action_83 (36) = happyShift action_21
action_83 (38) = happyShift action_22
action_83 (40) = happyShift action_23
action_83 (8) = happyGoto action_31
action_83 (9) = happyGoto action_28
action_83 (11) = happyGoto action_7
action_83 (15) = happyGoto action_94
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (17) = happyShift action_12
action_84 (19) = happyShift action_14
action_84 (31) = happyShift action_19
action_84 (36) = happyShift action_21
action_84 (38) = happyShift action_22
action_84 (40) = happyShift action_23
action_84 (8) = happyGoto action_31
action_84 (9) = happyGoto action_28
action_84 (11) = happyGoto action_7
action_84 (15) = happyGoto action_93
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (17) = happyShift action_12
action_85 (19) = happyShift action_14
action_85 (31) = happyShift action_19
action_85 (36) = happyShift action_21
action_85 (38) = happyShift action_22
action_85 (40) = happyShift action_23
action_85 (8) = happyGoto action_31
action_85 (9) = happyGoto action_28
action_85 (11) = happyGoto action_7
action_85 (12) = happyGoto action_92
action_85 (15) = happyGoto action_33
action_85 _ = happyFail (happyExpListPerState 85)

action_86 _ = happyReduce_19

action_87 (30) = happyShift action_91
action_87 _ = happyFail (happyExpListPerState 87)

action_88 _ = happyReduce_15

action_89 (19) = happyShift action_14
action_89 (36) = happyShift action_30
action_89 (38) = happyShift action_22
action_89 (40) = happyShift action_23
action_89 (8) = happyGoto action_27
action_89 (9) = happyGoto action_28
action_89 (10) = happyGoto action_90
action_89 (11) = happyGoto action_7
action_89 _ = happyFail (happyExpListPerState 89)

action_90 _ = happyReduce_17

action_91 (17) = happyShift action_12
action_91 (19) = happyShift action_14
action_91 (31) = happyShift action_19
action_91 (36) = happyShift action_21
action_91 (38) = happyShift action_22
action_91 (40) = happyShift action_23
action_91 (8) = happyGoto action_31
action_91 (9) = happyGoto action_28
action_91 (11) = happyGoto action_7
action_91 (15) = happyGoto action_106
action_91 _ = happyFail (happyExpListPerState 91)

action_92 _ = happyReduce_23

action_93 (26) = happyShift action_50
action_93 (27) = happyShift action_51
action_93 (28) = happyShift action_52
action_93 (37) = happyShift action_105
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (26) = happyShift action_50
action_94 (27) = happyShift action_51
action_94 (28) = happyShift action_52
action_94 (37) = happyShift action_104
action_94 _ = happyReduce_21

action_95 (37) = happyShift action_103
action_95 _ = happyReduce_29

action_96 (28) = happyShift action_52
action_96 (37) = happyShift action_102
action_96 _ = happyReduce_28

action_97 (28) = happyShift action_52
action_97 (37) = happyShift action_101
action_97 _ = happyReduce_27

action_98 (36) = happyShift action_100
action_98 _ = happyFail (happyExpListPerState 98)

action_99 _ = happyReduce_12

action_100 (17) = happyShift action_12
action_100 (18) = happyShift action_13
action_100 (19) = happyShift action_14
action_100 (20) = happyShift action_15
action_100 (21) = happyShift action_16
action_100 (23) = happyShift action_17
action_100 (25) = happyShift action_18
action_100 (31) = happyShift action_19
action_100 (34) = happyShift action_20
action_100 (36) = happyShift action_21
action_100 (38) = happyShift action_22
action_100 (40) = happyShift action_23
action_100 (4) = happyGoto action_107
action_100 (5) = happyGoto action_25
action_100 (6) = happyGoto action_3
action_100 (7) = happyGoto action_4
action_100 (8) = happyGoto action_5
action_100 (9) = happyGoto action_6
action_100 (11) = happyGoto action_7
action_100 (13) = happyGoto action_8
action_100 (14) = happyGoto action_9
action_100 (15) = happyGoto action_10
action_100 (16) = happyGoto action_11
action_100 _ = happyFail (happyExpListPerState 100)

action_101 _ = happyReduce_30

action_102 _ = happyReduce_31

action_103 _ = happyReduce_32

action_104 _ = happyReduce_22

action_105 _ = happyReduce_35

action_106 (26) = happyShift action_50
action_106 (27) = happyShift action_51
action_106 (28) = happyShift action_52
action_106 (37) = happyShift action_104
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (37) = happyShift action_108
action_107 _ = happyFail (happyExpListPerState 107)

action_108 _ = happyReduce_25

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (MultiStatement happy_var_1 happy_var_2
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (SingleStatement happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn5
		 (LoopStat happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_2  5 happyReduction_4
happyReduction_4 _
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn5
		 (ImportStat happy_var_1
	)
happyReduction_4 _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_2  5 happyReduction_5
happyReduction_5 _
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn5
		 (NumStat happy_var_1
	)
happyReduction_5 _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_2  5 happyReduction_6
happyReduction_6 _
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn5
		 (BoolStat happy_var_1
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_2  5 happyReduction_7
happyReduction_7 _
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn5
		 (StreamStat happy_var_1
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  5 happyReduction_8
happyReduction_8 _
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn5
		 (BlockStat happy_var_1
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  5 happyReduction_9
happyReduction_9 _
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (PrintStat happy_var_1
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  5 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 (VarDecStat happy_var_1
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  6 happyReduction_11
happyReduction_11 (HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (PrintBlock happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 4 7 happyReduction_12
happyReduction_12 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVarName happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (VarDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_3  8 happyReduction_13
happyReduction_13 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (ConcExpr happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  8 happyReduction_14
happyReduction_14 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn8
		 (StreamVal happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  9 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (BasicBlockWrapper happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  9 happyReduction_16
happyReduction_16 (HappyTerminal (TokenVarName happy_var_1))
	 =  HappyAbsSyn9
		 (VarBlock happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  10 happyReduction_17
happyReduction_17 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (BasicBlock happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  10 happyReduction_18
happyReduction_18 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (SingletonBlock happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  11 happyReduction_19
happyReduction_19 _
	(HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (BasicStreamWrapper happy_var_2
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  11 happyReduction_20
happyReduction_20 _
	_
	 =  HappyAbsSyn11
		 (BasicStreamWrapper (EmptyStream)
	)

happyReduce_21 = happySpecReduce_3  11 happyReduction_21
happyReduction_21 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn11
		 (StreamBlockIndex happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happyReduce 5 11 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (StreamBlockIndex happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_3  12 happyReduction_23
happyReduction_23 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn12
		 (BasicStream happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  12 happyReduction_24
happyReduction_24 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn12
		 (SingletonStream happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happyReduce 7 13 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (BoolLoop happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_3  14 happyReduction_26
happyReduction_26 (HappyTerminal (TokenVarName happy_var_3))
	_
	_
	 =  HappyAbsSyn14
		 (FileImport happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  15 happyReduction_27
happyReduction_27 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  15 happyReduction_28
happyReduction_28 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  15 happyReduction_29
happyReduction_29 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Multi happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happyReduce 5 15 happyReduction_30
happyReduction_30 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (Plus happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 5 15 happyReduction_31
happyReduction_31 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (Minus happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 5 15 happyReduction_32
happyReduction_32 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (Multi happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_33 = happySpecReduce_1  15 happyReduction_33
happyReduction_33 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn15
		 (NumVal happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  15 happyReduction_34
happyReduction_34 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn15
		 (StreamIndex happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happyReduce 5 15 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (StreamIndex happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_36 = happySpecReduce_2  15 happyReduction_36
happyReduction_36 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (StreamLength happy_var_2
	)
happyReduction_36 _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_2  15 happyReduction_37
happyReduction_37 (HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (StreamBlockLength happy_var_2
	)
happyReduction_37 _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  16 happyReduction_38
happyReduction_38 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (And happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  16 happyReduction_39
happyReduction_39 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Or happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_2  16 happyReduction_40
happyReduction_40 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (Not happy_var_2
	)
happyReduction_40 _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  16 happyReduction_41
happyReduction_41 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn16
		 (LessThan happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  16 happyReduction_42
happyReduction_42 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn16
		 (GreaterThan happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  16 happyReduction_43
happyReduction_43 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (BoolEq happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  16 happyReduction_44
happyReduction_44 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn16
		 (NumEq happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  16 happyReduction_45
happyReduction_45 (HappyTerminal (TokenBoolean happy_var_1))
	 =  HappyAbsSyn16
		 (BoolVal happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 46 46 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenInt happy_dollar_dollar -> cont 17;
	TokenBoolean happy_dollar_dollar -> cont 18;
	TokenVarName happy_dollar_dollar -> cont 19;
	TokenPrint -> cont 20;
	TokenVarDec -> cont 21;
	TokenVarEq -> cont 22;
	TokenImport -> cont 23;
	TokenAs -> cont 24;
	TokenLoop -> cont 25;
	TokenPlus -> cont 26;
	TokenMinus -> cont 27;
	TokenMulti -> cont 28;
	TokenConc -> cont 29;
	TokenIndex -> cont 30;
	TokenLength -> cont 31;
	TokenAND -> cont 32;
	TokenOR -> cont 33;
	TokenNOT -> cont 34;
	TokenEq -> cont 35;
	TokenLParen -> cont 36;
	TokenRParen -> cont 37;
	TokenLBracket -> cont 38;
	TokenRBracket -> cont 39;
	TokenLBrace -> cont 40;
	TokenRBrace -> cont 41;
	TokenSemiColon -> cont 42;
	TokenComa -> cont 43;
	TokenLessThan -> cont 44;
	TokenGreaterThan -> cont 45;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 46 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parseTokens tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Parse error" 

data StatementList = MultiStatement Statement StatementList
                   | SingleStatement Statement
                   deriving Show

data Statement = LoopStat Loop
               | ImportStat Import
               | NumStat NumExpr
               | BoolStat BoolExpr
               | StreamStat StreamExpr
               | BlockStat BlockWrapper
               | PrintStat Print
               | VarDecStat VarDec 
               deriving Show 

data Print = PrintBlock BlockWrapper
           deriving Show
           
data VarDec = VarDec String BlockWrapper
            deriving Show
               
data Import = FileImport String
            deriving Show

data Loop = BoolLoop BoolExpr StatementList
          deriving Show
          
data StreamExpr = ConcExpr StreamExpr StreamExpr
                | StreamVal StreamWrapper
                deriving Show
          
data StreamWrapper = BasicStreamWrapper Stream
                   | StreamBlockIndex BlockWrapper NumExpr
                   deriving Show

data Stream = BasicStream NumExpr Stream
            | SingletonStream NumExpr
            | EmptyStream
            deriving Show
            
data BlockWrapper = BasicBlockWrapper Block
                  | VarBlock String
                  deriving Show

data Block = BasicBlock StreamExpr Block
           | SingletonBlock StreamExpr
           deriving Show

data NumExpr = Plus NumExpr NumExpr 
             | Minus NumExpr NumExpr 
             | Multi NumExpr NumExpr
             | NumVal Int 
             | StreamIndex StreamExpr NumExpr
             | StreamLength StreamExpr
             | StreamBlockLength BlockWrapper
             deriving Show 

data BoolExpr = And BoolExpr BoolExpr
              | Or BoolExpr BoolExpr
              | Not BoolExpr
              | LessThan NumExpr NumExpr
              | GreaterThan NumExpr NumExpr
              | NumEq NumExpr NumExpr
              | BoolEq BoolExpr BoolExpr
              | BoolVal Bool
              deriving Show
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "D:/GitHub/haskell-platform/build/ghc-bindist/local/lib/include/ghcversion.h" #-}















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "F:/Users/randy/AppData/Local/Temp/ghc15608_0/ghc_2.h" #-}














































































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates\\\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates\\\\GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 75 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 84 "templates\\\\GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 147 "templates\\\\GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates\\\\GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates\\\\GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
