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
happyExpList = Happy_Data_Array.listArray (0,263) ([0,33463,324,32768,16731,162,49152,8365,81,0,0,128,0,0,64,0,768,32,0,256,16,0,0,0,0,0,0,0,0,2,0,519,13,0,33120,0,0,0,0,0,0,0,0,0,0,8,512,0,4,0,0,4,0,0,0,4,32768,0,40,28672,18432,20,10240,1024,10,4096,0,5,0,0,0,46848,17538,1,0,0,0,0,8,2,0,8,0,0,8192,0,0,3,0,0,512,0,14336,4096,0,7168,12296,0,0,0,0,0,0,0,0,0,28672,18432,20,0,8,0,0,1,0,0,0,0,1792,17536,1,896,41536,0,448,20768,0,0,0,0,80,5128,0,40,2564,0,20,1282,0,10,641,0,0,0,32768,16386,160,16384,8193,80,0,0,0,20480,2048,20,0,0,0,4096,0,5,2560,33024,2,0,0,0,0,0,0,0,0,0,32768,3,0,0,0,0,57344,0,0,28672,0,0,14336,0,0,7168,0,0,0,0,0,1024,0,0,512,0,0,12288,0,0,0,0,0,0,0,2048,0,2,1024,0,0,0,5504,0,320,20512,0,0,0,0,0,0,0,32,2560,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,57344,36950,40,0,0,2,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseTokens","StatementList","Statement","Print","VarDec","StreamExpr","StreamBlockWrapper","StreamBlock","StreamWrapper","Stream","Loop","Import","NumExpr","BoolExpr","intVar","boolVar","varName","fileName","'print'","'var'","'='","'import'","'as'","'loop'","'+'","'-'","'*'","'&'","'@'","'#'","'AND'","'OR'","'NOT'","'=='","'('","')'","'['","']'","'{'","'}'","';'","','","'<'","'>'","%eof"]
        bit_start = st * 47
        bit_end = (st + 1) * 47
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..46]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (17) = happyShift action_12
action_0 (18) = happyShift action_13
action_0 (19) = happyShift action_14
action_0 (21) = happyShift action_15
action_0 (22) = happyShift action_16
action_0 (24) = happyShift action_17
action_0 (26) = happyShift action_18
action_0 (32) = happyShift action_19
action_0 (35) = happyShift action_20
action_0 (39) = happyShift action_21
action_0 (41) = happyShift action_22
action_0 (4) = happyGoto action_23
action_0 (5) = happyGoto action_24
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
action_1 (21) = happyShift action_15
action_1 (22) = happyShift action_16
action_1 (24) = happyShift action_17
action_1 (26) = happyShift action_18
action_1 (32) = happyShift action_19
action_1 (35) = happyShift action_20
action_1 (39) = happyShift action_21
action_1 (41) = happyShift action_22
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
action_2 (21) = happyShift action_15
action_2 (22) = happyShift action_16
action_2 (24) = happyShift action_17
action_2 (26) = happyShift action_18
action_2 (32) = happyShift action_19
action_2 (35) = happyShift action_20
action_2 (39) = happyShift action_21
action_2 (41) = happyShift action_22
action_2 (4) = happyGoto action_25
action_2 (5) = happyGoto action_24
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

action_3 (43) = happyShift action_58
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (43) = happyShift action_57
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (30) = happyShift action_54
action_5 (31) = happyShift action_55
action_5 (43) = happyShift action_56
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (31) = happyShift action_52
action_6 (43) = happyShift action_53
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_14

action_8 _ = happyReduce_3

action_9 (43) = happyShift action_51
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (27) = happyShift action_44
action_10 (28) = happyShift action_45
action_10 (29) = happyShift action_46
action_10 (36) = happyShift action_47
action_10 (43) = happyShift action_48
action_10 (45) = happyShift action_49
action_10 (46) = happyShift action_50
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (33) = happyShift action_40
action_11 (34) = happyShift action_41
action_11 (36) = happyShift action_42
action_11 (43) = happyShift action_43
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_28

action_13 _ = happyReduce_39

action_14 _ = happyReduce_16

action_15 (19) = happyShift action_14
action_15 (41) = happyShift action_22
action_15 (9) = happyGoto action_39
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (19) = happyShift action_38
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (20) = happyShift action_37
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (37) = happyShift action_36
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (19) = happyShift action_14
action_19 (39) = happyShift action_21
action_19 (41) = happyShift action_22
action_19 (8) = happyGoto action_34
action_19 (9) = happyGoto action_35
action_19 (11) = happyGoto action_7
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (17) = happyShift action_12
action_20 (18) = happyShift action_13
action_20 (19) = happyShift action_14
action_20 (32) = happyShift action_19
action_20 (35) = happyShift action_20
action_20 (39) = happyShift action_21
action_20 (41) = happyShift action_22
action_20 (8) = happyGoto action_29
action_20 (9) = happyGoto action_27
action_20 (11) = happyGoto action_7
action_20 (15) = happyGoto action_32
action_20 (16) = happyGoto action_33
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (17) = happyShift action_12
action_21 (19) = happyShift action_14
action_21 (32) = happyShift action_19
action_21 (39) = happyShift action_21
action_21 (41) = happyShift action_22
action_21 (8) = happyGoto action_29
action_21 (9) = happyGoto action_27
action_21 (11) = happyGoto action_7
action_21 (12) = happyGoto action_30
action_21 (15) = happyGoto action_31
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (19) = happyShift action_14
action_22 (39) = happyShift action_21
action_22 (41) = happyShift action_22
action_22 (8) = happyGoto action_26
action_22 (9) = happyGoto action_27
action_22 (10) = happyGoto action_28
action_22 (11) = happyGoto action_7
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (47) = happyAccept
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (17) = happyShift action_12
action_24 (18) = happyShift action_13
action_24 (19) = happyShift action_14
action_24 (21) = happyShift action_15
action_24 (22) = happyShift action_16
action_24 (24) = happyShift action_17
action_24 (26) = happyShift action_18
action_24 (32) = happyShift action_19
action_24 (35) = happyShift action_20
action_24 (39) = happyShift action_21
action_24 (41) = happyShift action_22
action_24 (4) = happyGoto action_25
action_24 (5) = happyGoto action_24
action_24 (6) = happyGoto action_3
action_24 (7) = happyGoto action_4
action_24 (8) = happyGoto action_5
action_24 (9) = happyGoto action_6
action_24 (11) = happyGoto action_7
action_24 (13) = happyGoto action_8
action_24 (14) = happyGoto action_9
action_24 (15) = happyGoto action_10
action_24 (16) = happyGoto action_11
action_24 _ = happyReduce_2

action_25 _ = happyReduce_1

action_26 (30) = happyShift action_54
action_26 (44) = happyShift action_77
action_26 _ = happyReduce_18

action_27 (31) = happyShift action_52
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (42) = happyShift action_76
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (30) = happyShift action_54
action_29 (31) = happyShift action_55
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (40) = happyShift action_75
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (27) = happyShift action_44
action_31 (28) = happyShift action_45
action_31 (29) = happyShift action_46
action_31 (44) = happyShift action_74
action_31 _ = happyReduce_22

action_32 (27) = happyShift action_44
action_32 (28) = happyShift action_45
action_32 (29) = happyShift action_46
action_32 (36) = happyShift action_47
action_32 (45) = happyShift action_49
action_32 (46) = happyShift action_50
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_34

action_34 _ = happyReduce_30

action_35 _ = happyReduce_31

action_36 (17) = happyShift action_12
action_36 (18) = happyShift action_13
action_36 (19) = happyShift action_14
action_36 (32) = happyShift action_19
action_36 (35) = happyShift action_20
action_36 (39) = happyShift action_21
action_36 (41) = happyShift action_22
action_36 (8) = happyGoto action_29
action_36 (9) = happyGoto action_27
action_36 (11) = happyGoto action_7
action_36 (15) = happyGoto action_32
action_36 (16) = happyGoto action_73
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (25) = happyShift action_72
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (23) = happyShift action_71
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_11

action_40 (17) = happyShift action_12
action_40 (18) = happyShift action_13
action_40 (19) = happyShift action_14
action_40 (32) = happyShift action_19
action_40 (35) = happyShift action_20
action_40 (39) = happyShift action_21
action_40 (41) = happyShift action_22
action_40 (8) = happyGoto action_29
action_40 (9) = happyGoto action_27
action_40 (11) = happyGoto action_7
action_40 (15) = happyGoto action_32
action_40 (16) = happyGoto action_70
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (17) = happyShift action_12
action_41 (18) = happyShift action_13
action_41 (19) = happyShift action_14
action_41 (32) = happyShift action_19
action_41 (35) = happyShift action_20
action_41 (39) = happyShift action_21
action_41 (41) = happyShift action_22
action_41 (8) = happyGoto action_29
action_41 (9) = happyGoto action_27
action_41 (11) = happyGoto action_7
action_41 (15) = happyGoto action_32
action_41 (16) = happyGoto action_69
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (17) = happyShift action_12
action_42 (18) = happyShift action_13
action_42 (19) = happyShift action_14
action_42 (32) = happyShift action_19
action_42 (35) = happyShift action_20
action_42 (39) = happyShift action_21
action_42 (41) = happyShift action_22
action_42 (8) = happyGoto action_29
action_42 (9) = happyGoto action_27
action_42 (11) = happyGoto action_7
action_42 (15) = happyGoto action_32
action_42 (16) = happyGoto action_68
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_6

action_44 (17) = happyShift action_12
action_44 (19) = happyShift action_14
action_44 (32) = happyShift action_19
action_44 (39) = happyShift action_21
action_44 (41) = happyShift action_22
action_44 (8) = happyGoto action_29
action_44 (9) = happyGoto action_27
action_44 (11) = happyGoto action_7
action_44 (15) = happyGoto action_67
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (17) = happyShift action_12
action_45 (19) = happyShift action_14
action_45 (32) = happyShift action_19
action_45 (39) = happyShift action_21
action_45 (41) = happyShift action_22
action_45 (8) = happyGoto action_29
action_45 (9) = happyGoto action_27
action_45 (11) = happyGoto action_7
action_45 (15) = happyGoto action_66
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (17) = happyShift action_12
action_46 (19) = happyShift action_14
action_46 (32) = happyShift action_19
action_46 (39) = happyShift action_21
action_46 (41) = happyShift action_22
action_46 (8) = happyGoto action_29
action_46 (9) = happyGoto action_27
action_46 (11) = happyGoto action_7
action_46 (15) = happyGoto action_65
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (17) = happyShift action_12
action_47 (19) = happyShift action_14
action_47 (32) = happyShift action_19
action_47 (39) = happyShift action_21
action_47 (41) = happyShift action_22
action_47 (8) = happyGoto action_29
action_47 (9) = happyGoto action_27
action_47 (11) = happyGoto action_7
action_47 (15) = happyGoto action_64
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_5

action_49 (17) = happyShift action_12
action_49 (19) = happyShift action_14
action_49 (32) = happyShift action_19
action_49 (39) = happyShift action_21
action_49 (41) = happyShift action_22
action_49 (8) = happyGoto action_29
action_49 (9) = happyGoto action_27
action_49 (11) = happyGoto action_7
action_49 (15) = happyGoto action_63
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (17) = happyShift action_12
action_50 (19) = happyShift action_14
action_50 (32) = happyShift action_19
action_50 (39) = happyShift action_21
action_50 (41) = happyShift action_22
action_50 (8) = happyGoto action_29
action_50 (9) = happyGoto action_27
action_50 (11) = happyGoto action_7
action_50 (15) = happyGoto action_62
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_4

action_52 (17) = happyShift action_12
action_52 (19) = happyShift action_14
action_52 (32) = happyShift action_19
action_52 (39) = happyShift action_21
action_52 (41) = happyShift action_22
action_52 (8) = happyGoto action_29
action_52 (9) = happyGoto action_27
action_52 (11) = happyGoto action_7
action_52 (15) = happyGoto action_61
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_8

action_54 (19) = happyShift action_14
action_54 (39) = happyShift action_21
action_54 (41) = happyShift action_22
action_54 (8) = happyGoto action_60
action_54 (9) = happyGoto action_27
action_54 (11) = happyGoto action_7
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (17) = happyShift action_12
action_55 (19) = happyShift action_14
action_55 (32) = happyShift action_19
action_55 (39) = happyShift action_21
action_55 (41) = happyShift action_22
action_55 (8) = happyGoto action_29
action_55 (9) = happyGoto action_27
action_55 (11) = happyGoto action_7
action_55 (15) = happyGoto action_59
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_7

action_57 _ = happyReduce_10

action_58 _ = happyReduce_9

action_59 (27) = happyShift action_44
action_59 (28) = happyShift action_45
action_59 (29) = happyShift action_46
action_59 _ = happyReduce_29

action_60 _ = happyReduce_13

action_61 (27) = happyShift action_44
action_61 (28) = happyShift action_45
action_61 (29) = happyShift action_46
action_61 _ = happyReduce_20

action_62 (27) = happyShift action_44
action_62 (28) = happyShift action_45
action_62 (29) = happyShift action_46
action_62 _ = happyReduce_36

action_63 (27) = happyShift action_44
action_63 (28) = happyShift action_45
action_63 (29) = happyShift action_46
action_63 _ = happyReduce_35

action_64 (27) = happyShift action_44
action_64 (28) = happyShift action_45
action_64 (29) = happyShift action_46
action_64 _ = happyReduce_38

action_65 _ = happyReduce_27

action_66 (29) = happyShift action_46
action_66 _ = happyReduce_26

action_67 (29) = happyShift action_46
action_67 _ = happyReduce_25

action_68 (33) = happyShift action_40
action_68 (34) = happyShift action_41
action_68 _ = happyReduce_37

action_69 _ = happyReduce_33

action_70 _ = happyReduce_32

action_71 (19) = happyShift action_14
action_71 (41) = happyShift action_22
action_71 (9) = happyGoto action_82
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (19) = happyShift action_81
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (33) = happyShift action_40
action_73 (34) = happyShift action_41
action_73 (36) = happyShift action_42
action_73 (38) = happyShift action_80
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (17) = happyShift action_12
action_74 (19) = happyShift action_14
action_74 (32) = happyShift action_19
action_74 (39) = happyShift action_21
action_74 (41) = happyShift action_22
action_74 (8) = happyGoto action_29
action_74 (9) = happyGoto action_27
action_74 (11) = happyGoto action_7
action_74 (12) = happyGoto action_79
action_74 (15) = happyGoto action_31
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_19

action_76 _ = happyReduce_15

action_77 (19) = happyShift action_14
action_77 (39) = happyShift action_21
action_77 (41) = happyShift action_22
action_77 (8) = happyGoto action_26
action_77 (9) = happyGoto action_27
action_77 (10) = happyGoto action_78
action_77 (11) = happyGoto action_7
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_17

action_79 _ = happyReduce_21

action_80 (37) = happyShift action_83
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_24

action_82 _ = happyReduce_12

action_83 (17) = happyShift action_12
action_83 (18) = happyShift action_13
action_83 (19) = happyShift action_14
action_83 (21) = happyShift action_15
action_83 (22) = happyShift action_16
action_83 (24) = happyShift action_17
action_83 (26) = happyShift action_18
action_83 (32) = happyShift action_19
action_83 (35) = happyShift action_20
action_83 (39) = happyShift action_21
action_83 (41) = happyShift action_22
action_83 (4) = happyGoto action_84
action_83 (5) = happyGoto action_24
action_83 (6) = happyGoto action_3
action_83 (7) = happyGoto action_4
action_83 (8) = happyGoto action_5
action_83 (9) = happyGoto action_6
action_83 (11) = happyGoto action_7
action_83 (13) = happyGoto action_8
action_83 (14) = happyGoto action_9
action_83 (15) = happyGoto action_10
action_83 (16) = happyGoto action_11
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (38) = happyShift action_85
action_84 _ = happyFail (happyExpListPerState 84)

action_85 _ = happyReduce_23

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

happyReduce_20 = happySpecReduce_3  11 happyReduction_20
happyReduction_20 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn11
		 (StreamBlockIndex happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  12 happyReduction_21
happyReduction_21 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn12
		 (BasicStream happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  12 happyReduction_22
happyReduction_22 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn12
		 (SingletonStream happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happyReduce 7 13 happyReduction_23
happyReduction_23 (_ `HappyStk`
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

happyReduce_24 = happyReduce 4 14 happyReduction_24
happyReduction_24 ((HappyTerminal (TokenVarName happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenFileName happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (FileImport happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_25 = happySpecReduce_3  15 happyReduction_25
happyReduction_25 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  15 happyReduction_26
happyReduction_26 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  15 happyReduction_27
happyReduction_27 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (Multi happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  15 happyReduction_28
happyReduction_28 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn15
		 (NumVal happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  15 happyReduction_29
happyReduction_29 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn15
		 (StreamIndex happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_2  15 happyReduction_30
happyReduction_30 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (StreamLength happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_2  15 happyReduction_31
happyReduction_31 (HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (StreamBlockLength happy_var_2
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  16 happyReduction_32
happyReduction_32 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (And happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  16 happyReduction_33
happyReduction_33 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (Or happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_2  16 happyReduction_34
happyReduction_34 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (Not happy_var_2
	)
happyReduction_34 _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  16 happyReduction_35
happyReduction_35 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn16
		 (LessThan happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  16 happyReduction_36
happyReduction_36 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn16
		 (GreaterThan happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  16 happyReduction_37
happyReduction_37 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (BoolEq happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  16 happyReduction_38
happyReduction_38 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn16
		 (NumEq happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  16 happyReduction_39
happyReduction_39 (HappyTerminal (TokenBoolean happy_var_1))
	 =  HappyAbsSyn16
		 (BoolVal happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 47 47 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenInt happy_dollar_dollar -> cont 17;
	TokenBoolean happy_dollar_dollar -> cont 18;
	TokenVarName happy_dollar_dollar -> cont 19;
	TokenFileName happy_dollar_dollar -> cont 20;
	TokenPrint -> cont 21;
	TokenVarDec -> cont 22;
	TokenVarEq -> cont 23;
	TokenImport -> cont 24;
	TokenAs -> cont 25;
	TokenLoop -> cont 26;
	TokenPlus -> cont 27;
	TokenMinus -> cont 28;
	TokenMulti -> cont 29;
	TokenConc -> cont 30;
	TokenIndex -> cont 31;
	TokenLength -> cont 32;
	TokenAND -> cont 33;
	TokenOR -> cont 34;
	TokenNOT -> cont 35;
	TokenEq -> cont 36;
	TokenLParen -> cont 37;
	TokenRParen -> cont 38;
	TokenLBracket -> cont 39;
	TokenRBracket -> cont 40;
	TokenLBrace -> cont 41;
	TokenRBrace -> cont 42;
	TokenSemiColon -> cont 43;
	TokenComa -> cont 44;
	TokenLessThan -> cont 45;
	TokenGreaterThan -> cont 46;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 47 tk tks = happyError' (tks, explist)
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
               
data Import = FileImport String String
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
