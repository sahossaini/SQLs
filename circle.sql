with inputs as (
    select 30 r
        , 0 xc
        , 0 yc
        , 'O' chtr
    from dual
)
, circleBres (x, y, d) as (
    select 0 x 
        , (select r from inputs) y
        , 3 - 2 * (select r from inputs) d
    from dual
    union all
    select x + 1 x
        , case when d > 0
                then y - 1  
                else y
            end y
        , case when d > 0
                then d + 4 * ((x + 1) - (y - 1)) + 10
                else d + 4 * (x + 1) + 6
            end d
    from circleBres
    where y >= x
)
, drawCircle as (
    select 
        xc+x x1
        , yc+y y1
        , xc-x x2
        , yc+y y2
        , xc+x x3
        , yc-y y3
        , xc-x x4
        , yc-y y4
        , xc+y x5
        , yc+x y5
        , xc-y x6
        , yc+x y6
        , xc+y x7
        , yc-x y7
        , xc-y x8
        , yc-x y8
    from (
        select 
              (select xc from inputs) xc
            , (select yc from inputs) yc
            , c.*
        from circleBres c
    )
)
, formatPoints as (
    select x1 x, y1 y from drawCircle
    union
    select x2 x, y2 y from drawCircle
    union
    select x3 x, y3 y from drawCircle
    union
    select x4 x, y4 y from drawCircle
    union
    select x5 x, y5 y from drawCircle
    union
    select x6 x, y6 y from drawCircle
    union
    select x7 x, y7 y from drawCircle
    union
    select x8 x, y8 y from drawCircle
)
, reformatPoints as (
    select x + 1 + (select min(x) * -1 from formatPoints) x
        , y + 1 + (select min(y) * -1 from formatPoints) y
    from formatPoints
)
, drawBoard as (
    select (select (select chtr from inputs) from reformatPoints where x = 1 and y = row_num) c1
        , (select (select chtr from inputs) from reformatPoints where x = 2 and y = row_num) c2
        , (select (select chtr from inputs) from reformatPoints where x = 3 and y = row_num) c3
        , (select (select chtr from inputs) from reformatPoints where x = 4 and y = row_num) c4
        , (select (select chtr from inputs) from reformatPoints where x = 5 and y = row_num) c5
        , (select (select chtr from inputs) from reformatPoints where x = 6 and y = row_num) c6
        , (select (select chtr from inputs) from reformatPoints where x = 7 and y = row_num) c7
        , (select (select chtr from inputs) from reformatPoints where x = 8 and y = row_num) c8
        , (select (select chtr from inputs) from reformatPoints where x = 9 and y = row_num) c9
        , (select (select chtr from inputs) from reformatPoints where x = 10 and y = row_num) c10
        , (select (select chtr from inputs) from reformatPoints where x = 11 and y = row_num) c11
        , (select (select chtr from inputs) from reformatPoints where x = 12 and y = row_num) c12
        , (select (select chtr from inputs) from reformatPoints where x = 13 and y = row_num) c13
        , (select (select chtr from inputs) from reformatPoints where x = 14 and y = row_num) c14
        , (select (select chtr from inputs) from reformatPoints where x = 15 and y = row_num) c15
        , (select (select chtr from inputs) from reformatPoints where x = 16 and y = row_num) c16
        , (select (select chtr from inputs) from reformatPoints where x = 17 and y = row_num) c17
        , (select (select chtr from inputs) from reformatPoints where x = 18 and y = row_num) c18
        , (select (select chtr from inputs) from reformatPoints where x = 19 and y = row_num) c19
        , (select (select chtr from inputs) from reformatPoints where x = 20 and y = row_num) c20
        , (select (select chtr from inputs) from reformatPoints where x = 21 and y = row_num) c21
        , (select (select chtr from inputs) from reformatPoints where x = 22 and y = row_num) c22
        , (select (select chtr from inputs) from reformatPoints where x = 23 and y = row_num) c23
        , (select (select chtr from inputs) from reformatPoints where x = 24 and y = row_num) c24
        , (select (select chtr from inputs) from reformatPoints where x = 25 and y = row_num) c25
        , (select (select chtr from inputs) from reformatPoints where x = 26 and y = row_num) c26
        , (select (select chtr from inputs) from reformatPoints where x = 27 and y = row_num) c27
        , (select (select chtr from inputs) from reformatPoints where x = 28 and y = row_num) c28
        , (select (select chtr from inputs) from reformatPoints where x = 29 and y = row_num) c29
        , (select (select chtr from inputs) from reformatPoints where x = 30 and y = row_num) c30
        , (select (select chtr from inputs) from reformatPoints where x = 31 and y = row_num) c31
        , (select (select chtr from inputs) from reformatPoints where x = 32 and y = row_num) c32
        , (select (select chtr from inputs) from reformatPoints where x = 33 and y = row_num) c33
        , (select (select chtr from inputs) from reformatPoints where x = 34 and y = row_num) c34
        , (select (select chtr from inputs) from reformatPoints where x = 35 and y = row_num) c35
        , (select (select chtr from inputs) from reformatPoints where x = 36 and y = row_num) c36
        , (select (select chtr from inputs) from reformatPoints where x = 37 and y = row_num) c37
        , (select (select chtr from inputs) from reformatPoints where x = 38 and y = row_num) c38
        , (select (select chtr from inputs) from reformatPoints where x = 39 and y = row_num) c39
        , (select (select chtr from inputs) from reformatPoints where x = 40 and y = row_num) c40
        , (select (select chtr from inputs) from reformatPoints where x = 41 and y = row_num) c41
        , (select (select chtr from inputs) from reformatPoints where x = 42 and y = row_num) c42
        , (select (select chtr from inputs) from reformatPoints where x = 43 and y = row_num) c43
        , (select (select chtr from inputs) from reformatPoints where x = 44 and y = row_num) c44
        , (select (select chtr from inputs) from reformatPoints where x = 45 and y = row_num) c45
        , (select (select chtr from inputs) from reformatPoints where x = 46 and y = row_num) c46
        , (select (select chtr from inputs) from reformatPoints where x = 47 and y = row_num) c47
        , (select (select chtr from inputs) from reformatPoints where x = 48 and y = row_num) c48
        , (select (select chtr from inputs) from reformatPoints where x = 49 and y = row_num) c49
        , (select (select chtr from inputs) from reformatPoints where x = 50 and y = row_num) c50
        , (select (select chtr from inputs) from reformatPoints where x = 51 and y = row_num) c51
        , (select (select chtr from inputs) from reformatPoints where x = 52 and y = row_num) c52
        , (select (select chtr from inputs) from reformatPoints where x = 53 and y = row_num) c53
        , (select (select chtr from inputs) from reformatPoints where x = 54 and y = row_num) c54
        , (select (select chtr from inputs) from reformatPoints where x = 55 and y = row_num) c55
        , (select (select chtr from inputs) from reformatPoints where x = 56 and y = row_num) c56
        , (select (select chtr from inputs) from reformatPoints where x = 57 and y = row_num) c57
        , (select (select chtr from inputs) from reformatPoints where x = 58 and y = row_num) c58
        , (select (select chtr from inputs) from reformatPoints where x = 59 and y = row_num) c59
        , (select (select chtr from inputs) from reformatPoints where x = 60 and y = row_num) c60
        , (select (select chtr from inputs) from reformatPoints where x = 61 and y = row_num) c61
        , (select (select chtr from inputs) from reformatPoints where x = 62 and y = row_num) c62
        , (select (select chtr from inputs) from reformatPoints where x = 63 and y = row_num) c63
        , (select (select chtr from inputs) from reformatPoints where x = 64 and y = row_num) c64
        , (select (select chtr from inputs) from reformatPoints where x = 65 and y = row_num) c65
        , (select (select chtr from inputs) from reformatPoints where x = 66 and y = row_num) c66
        , (select (select chtr from inputs) from reformatPoints where x = 67 and y = row_num) c67
        , (select (select chtr from inputs) from reformatPoints where x = 68 and y = row_num) c68
        , (select (select chtr from inputs) from reformatPoints where x = 69 and y = row_num) c69
        , (select (select chtr from inputs) from reformatPoints where x = 70 and y = row_num) c70
        , (select (select chtr from inputs) from reformatPoints where x = 71 and y = row_num) c71
        , (select (select chtr from inputs) from reformatPoints where x = 72 and y = row_num) c72
        , (select (select chtr from inputs) from reformatPoints where x = 73 and y = row_num) c73
        , (select (select chtr from inputs) from reformatPoints where x = 74 and y = row_num) c74
        , (select (select chtr from inputs) from reformatPoints where x = 75 and y = row_num) c75
        , (select (select chtr from inputs) from reformatPoints where x = 76 and y = row_num) c76
        , (select (select chtr from inputs) from reformatPoints where x = 77 and y = row_num) c77
        , (select (select chtr from inputs) from reformatPoints where x = 78 and y = row_num) c78
        , (select (select chtr from inputs) from reformatPoints where x = 79 and y = row_num) c79
        , (select (select chtr from inputs) from reformatPoints where x = 80 and y = row_num) c80
        , (select (select chtr from inputs) from reformatPoints where x = 81 and y = row_num) c81
        , (select (select chtr from inputs) from reformatPoints where x = 82 and y = row_num) c82
        , (select (select chtr from inputs) from reformatPoints where x = 83 and y = row_num) c83
        , (select (select chtr from inputs) from reformatPoints where x = 84 and y = row_num) c84
        , (select (select chtr from inputs) from reformatPoints where x = 85 and y = row_num) c85
        , (select (select chtr from inputs) from reformatPoints where x = 86 and y = row_num) c86
        , (select (select chtr from inputs) from reformatPoints where x = 87 and y = row_num) c87
        , (select (select chtr from inputs) from reformatPoints where x = 88 and y = row_num) c88
        , (select (select chtr from inputs) from reformatPoints where x = 89 and y = row_num) c89
        , (select (select chtr from inputs) from reformatPoints where x = 90 and y = row_num) c90
        , (select (select chtr from inputs) from reformatPoints where x = 91 and y = row_num) c91
        , (select (select chtr from inputs) from reformatPoints where x = 92 and y = row_num) c92
        , (select (select chtr from inputs) from reformatPoints where x = 93 and y = row_num) c93
        , (select (select chtr from inputs) from reformatPoints where x = 94 and y = row_num) c94
        , (select (select chtr from inputs) from reformatPoints where x = 95 and y = row_num) c95
        , (select (select chtr from inputs) from reformatPoints where x = 96 and y = row_num) c96
        , (select (select chtr from inputs) from reformatPoints where x = 97 and y = row_num) c97
        , (select (select chtr from inputs) from reformatPoints where x = 98 and y = row_num) c98
        , (select (select chtr from inputs) from reformatPoints where x = 99 and y = row_num) c99
        , (select (select chtr from inputs) from reformatPoints where x = 100 and y = row_num) c100
        , (select (select chtr from inputs) from reformatPoints where x = 101 and y = row_num) c101
        , (select (select chtr from inputs) from reformatPoints where x = 102 and y = row_num) c102
        , (select (select chtr from inputs) from reformatPoints where x = 103 and y = row_num) c103
        , (select (select chtr from inputs) from reformatPoints where x = 104 and y = row_num) c104
        , (select (select chtr from inputs) from reformatPoints where x = 105 and y = row_num) c105
        , (select (select chtr from inputs) from reformatPoints where x = 106 and y = row_num) c106
        , (select (select chtr from inputs) from reformatPoints where x = 107 and y = row_num) c107
        , (select (select chtr from inputs) from reformatPoints where x = 108 and y = row_num) c108
        , (select (select chtr from inputs) from reformatPoints where x = 109 and y = row_num) c109
        , (select (select chtr from inputs) from reformatPoints where x = 110 and y = row_num) c110
        , (select (select chtr from inputs) from reformatPoints where x = 111 and y = row_num) c111
        , (select (select chtr from inputs) from reformatPoints where x = 112 and y = row_num) c112
        , (select (select chtr from inputs) from reformatPoints where x = 113 and y = row_num) c113
        , (select (select chtr from inputs) from reformatPoints where x = 114 and y = row_num) c114
        , (select (select chtr from inputs) from reformatPoints where x = 115 and y = row_num) c115
        , (select (select chtr from inputs) from reformatPoints where x = 116 and y = row_num) c116
        , (select (select chtr from inputs) from reformatPoints where x = 117 and y = row_num) c117
        , (select (select chtr from inputs) from reformatPoints where x = 118 and y = row_num) c118
        , (select (select chtr from inputs) from reformatPoints where x = 119 and y = row_num) c119
        , (select (select chtr from inputs) from reformatPoints where x = 120 and y = row_num) c120
        , (select (select chtr from inputs) from reformatPoints where x = 121 and y = row_num) c121
        , (select (select chtr from inputs) from reformatPoints where x = 122 and y = row_num) c122
        , (select (select chtr from inputs) from reformatPoints where x = 123 and y = row_num) c123
        , (select (select chtr from inputs) from reformatPoints where x = 124 and y = row_num) c124
        , (select (select chtr from inputs) from reformatPoints where x = 125 and y = row_num) c125
        , (select (select chtr from inputs) from reformatPoints where x = 126 and y = row_num) c126
        , (select (select chtr from inputs) from reformatPoints where x = 127 and y = row_num) c127
        , (select (select chtr from inputs) from reformatPoints where x = 128 and y = row_num) c128
        , (select (select chtr from inputs) from reformatPoints where x = 129 and y = row_num) c129
        , (select (select chtr from inputs) from reformatPoints where x = 130 and y = row_num) c130
        , (select (select chtr from inputs) from reformatPoints where x = 131 and y = row_num) c131
        , (select (select chtr from inputs) from reformatPoints where x = 132 and y = row_num) c132
        , (select (select chtr from inputs) from reformatPoints where x = 133 and y = row_num) c133
        , (select (select chtr from inputs) from reformatPoints where x = 134 and y = row_num) c134
        , (select (select chtr from inputs) from reformatPoints where x = 135 and y = row_num) c135
        , (select (select chtr from inputs) from reformatPoints where x = 136 and y = row_num) c136
        , (select (select chtr from inputs) from reformatPoints where x = 137 and y = row_num) c137
        , (select (select chtr from inputs) from reformatPoints where x = 138 and y = row_num) c138
        , (select (select chtr from inputs) from reformatPoints where x = 139 and y = row_num) c139
        , (select (select chtr from inputs) from reformatPoints where x = 140 and y = row_num) c140
        , (select (select chtr from inputs) from reformatPoints where x = 141 and y = row_num) c141
        , (select (select chtr from inputs) from reformatPoints where x = 142 and y = row_num) c142
        , (select (select chtr from inputs) from reformatPoints where x = 143 and y = row_num) c143
        , (select (select chtr from inputs) from reformatPoints where x = 144 and y = row_num) c144
        , (select (select chtr from inputs) from reformatPoints where x = 145 and y = row_num) c145
        , (select (select chtr from inputs) from reformatPoints where x = 146 and y = row_num) c146
        , (select (select chtr from inputs) from reformatPoints where x = 147 and y = row_num) c147
        , (select (select chtr from inputs) from reformatPoints where x = 148 and y = row_num) c148
        , (select (select chtr from inputs) from reformatPoints where x = 149 and y = row_num) c149
        , (select (select chtr from inputs) from reformatPoints where x = 150 and y = row_num) c150
    from (
        select level row_num
        from dual
        connect by level <= 200
    ) 
    order by row_num asc
)
select *
from drawBoard;






-- select ', (select (select chtr from inputs) from reformatPoints where x = '||level||' and y = row_num) c'||level
-- from dual
-- connect by level <= 200;


