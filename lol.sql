create database game;
use game;
-------------------------用户表-------------------------------
create table  uses(ID    int primary key not null,      --用户编码
                  Uname varchar(18),                   --用户名
                  Pword varchar(8),                    -- 用户密码
                  Region varchar(128),                 --所在大区
                  Lv int,                              --等级
                  G  int,                              --金币
                 )

insert into  uses      values(1,'BIGLadyiller','88888','High',10,5000);


------------------------用户英雄表-----------------------------

create table  heroU(ID    int primary key not null,      --用户编码
                    Uname varchar(18),                   --用户名
                    Ryze tinyint(1)，                    --瑞兹
                    Lux  tinyint(1),                     --光辉
                    Lissandra  tinyint(1),               --丽桑卓
                    Khazix  tinyint(1),                  --卡兹克
                    Jinx  tinyint(1),                    --金克丝
                    Garen  tinyint(1),                   --盖伦
                    Shyvana  tinyint(1)                  --洗碗娜
                )
insert into heroU values(1,'GIGLadyiller',1,1,1,1,1,1,1);


---------------------------英雄表-----------------------------
create table   HeroT(
                     name varchar(16),              --名字
                     CAREER  varchar(12),           --职业
                     Define  varchar(12),           --定位
                     PassiveSkill varchar(128)       --被动技能
                     Q       varchar(128),           --Q技能介绍
                     W       varchar(128),           --W技能介绍
                     E       varchar(128),           --E技能介绍
                     R       varchar(128),           --R技能介绍
                     Commission int                 --价格
               )


---------------------------插入英雄表数据------------------------------
insert into   HeroT       values(
                        'Ryze',             --名字
                        'Mage',             --职业
                        'Up',               --定位
                        'Arcane Mastery',          --被动技能
                        'Overload',            --Q技能介绍
                        'Rune Prison',          --W技能介绍
                        'Spell Flux',          --E技能介绍
                        'Realm Warp',          --R技能介绍
                        450                 --价格
);
insert into   HeroT       values(
                        'Lux',                          --名字
                        'Mage',                         --职业
                        'Up',                           --定位
                        'Illumination',                 --被动技能
                        'Light Binding',                --Q技能介绍
                        'Prismatic Barrier',            --W技能介绍
                        'Lucent Singularity',           --E技能介绍
                        'Final Spark',                  --R技能介绍
                        450                             --价格
);

insert into   HeroT       values(
                        'Lissandra',                    --名字
                        'Mage',                         --职业
                        'Up',                           --定位
                        'Iceborn',                      --被动技能
                        'Ice Shard',                    --Q技能介绍
                        'Ring of Frost',                --W技能介绍
                        'Glacial Path',                 --E技能介绍
                        'Frozen Tomb',                  --R技能介绍
                        450                             --价格
);
insert into   HeroT       values(
                        'Khazix',                       --名字
                        'Assassin',                     --职业
                        'Up',                           --定位
                        'Unseen Threat',                --被动技能
                        'Taste Their Fear',             --Q技能介绍
                        'Void Spike',                   --W技能介绍
                        'Leap',                         --E技能介绍
                        'Void Assault',                 --R技能介绍
                        450                             --价格
);
insert into   HeroT       values(
                        'Jinx',                         --名字
                        'Marksman',                     --职业
                        'Up',                           --定位
                        'Get Excited!',                 --被动技能
                        'Switcheroo！',                 --Q技能介绍
                        'Zap!',                         --W技能介绍
                        'Flame Chompers!',              --E技能介绍
                        'Super Mega Death Rocket!',     --R技能介绍
                        450                             --价格
);
insert into   HeroT       values(
                        'Garen',                        --名字
                        'Fighter',                      --职业
                        'Up',                           --定位
                        'Perseverance',                 --被动技能
                        'Decisive Strike',              --Q技能介绍
                        'Courage',                      --W技能介绍
                        'Judgment',                     --E技能介绍
                        'Demacian Justice',             --R技能介绍
                        450                             --价格
);
insert into   HeroT       values(
                        'Shyvana',                      --名字
                        'Fighter',                      --职业
                        'Up',                           --定位
                        'Fury of the Dragonborn',       --被动技能
                        'Twin Bite',                    --Q技能介绍
                        'Burnout',                      --W技能介绍
                        'Flame Breath',                 --E技能介绍
                        'Dragons Descent',              --R技能
                        450                             --价格
);


-------------------------------英雄属性表HeroAttributes----------------------------------------
create table HeroAt(
------------------------------------基础属性-----------------------------------------
                    H_name varchar(16),                 --name
                    Health float(8.3),                  --初始生命值
                 PerHealth float(8.3),                    --生命值成长
                    HealthRegen float(8.3),             --初始生命回复
                 PerHealthRegen float(8.3),             --生命回复成长
                    Mage         float(8.3),            --初始魔力值
                 PerMage         float(8.3),              --法力值成长
                    AttackDamage float(8.3),              --初始攻击力
                 PerAttackDamage float(8.3),            --攻击力成长
                    AbilityPower float(8.3),              --初始法强
                 PerAbilityPower float(8.3),            --法强成长
                    Armor float(8.3),                     --初始护甲
                 PerArmor float(8.3),                   --护甲成长
                    AttackSpeed float(8.3),               --初始攻击速度
                 PerAttackSpeed float(8.8),             --攻击速度成长
                    Magic Resist float(8.3),              --初始魔抗抗性
                 PerMagic Resist float(8.3),            --魔抗抗性成长
                    MovementSpeed float(8.3),             --初始移动速度

-----------------------------------附加属性-------------------------------------
                    Life Steal    float(3.3),             --生命偷取
                    Mage Life Steal    float(3.3),        --法力吸血偷取
                    Critical Strike Chance float(3.3),    --暴击率
                    Critical Strike Damege float(3.3),     --暴击伤害
                    Armor Penetration      float(3.3),    --护甲穿透
                    Lethality              float(3.3),     --破甲
                    Cooldown Reduction     float(3.3)      --冷却缩减

                  )

                  insert into   HeroAt       values(
                  'Ryze',
                  558.48,                  --生命值
                  86,                      --生命值成长
                  7,                       --生命值回复
                  0.55,                    --生命值回复成长
                  250,                     --初始魔力值
                  55,                      --法力值成长
                  55.04,                   --攻击力
                  3,                       --攻击力成长
                  0,                       --初始法强
                  0,                       --法强成长
                  21.552,                  --物理防御
                  3,                       --物理防御成长
                  0.625,                   --攻击速度
                  0.02112,                 --攻击速度增加
                  30,                      --魔法抗性
                  0,                       --魔法抗性成长
                  340,                      --移动速度
                  0,                       --生命偷取
                  0,                       --法力吸血偷取
                  0,                       --暴击率
                  2,                       --暴击伤害
                  0,                        --护甲穿透
                  0,                        --破甲
                  1                         --冷却缩减
                  );
                  insert into   HeroAt      values(
                  'Lux',
                  477.72,                  --生命值
                  79,                      --生命值成长
                  5.42,                       --生命值回复
                  0.55,                    --生命值回复成长
                  250,                     --初始魔力值
                  55,                      --法力值成长
                  53.544,                   --攻击力
                  3.3,                       --攻击力成长
                  0,                       --初始法强
                  0,                         --法强成长
                  18.72,                  --物理防御
                  4,                       --物理防御成长
                  0.625,                   --攻击速度
                  0.0136,                 --攻击速度增加
                  30,                      --魔法抗性
                  0,                      --魔法抗性成长
                  330,                      --移动速度
                  0,                       --生命偷取
                  0,                       --法力吸血偷取
                  0,                       --暴击率
                  2,                       --暴击伤害
                  0,                        --护甲穿透
                  0,                        --破甲
                  1                         --冷却缩减
                  );

                  insert into   HeroAt      values(
                  'Lissandra',
                  506.12,                  --生命值
                  75,                      --生命值成长
                  6.92,                       --生命值回复
                  0.55,                    --生命值回复成长
                  304,                     --初始魔力值
                  50,                      --法力值成长
                  50.536,                   --攻击力
                  2.7,                       --攻击力成长
                  0,                       --初始法强
                  0,                         --法强成长
                  20.216,                  --物理防御
                  3.7,                       --物理防御成长
                  0.625,                   --攻击速度
                  0.0136,                 --攻击速度增加
                  30,                      --魔法抗性
                  0,                      --魔法抗性成长
                  325,                      --移动速度
                  0,                       --生命偷取
                  0,                       --法力吸血偷取
                  0,                       --暴击率
                  2,                       --暴击伤害
                  0,                        --护甲穿透
                  0,                        --破甲
                  1                         --冷却缩减
                  );


                  insert into   HeroAt      values(
                  'Khazix',
                  572.8,                   --生命值
                  85,                      --生命值成长
                  7.51,                    --生命值回复
                  0.75,                    --生命值回复成长
                  260,                     --初始魔力值
                  40,                      --法力值成长
                  55.21,                   --攻击力
                  3.1,                     --攻击力成长
                  0,                       --初始法强
                  0,                         --法强成长
                  27,                      --物理防御
                  3,                       --物理防御成长
                  0.668,                   --攻击速度
                  0.027,                   --攻击速度增加
                  32.1,                    --魔法抗性
                  1.25,                   --魔法抗性成长
                  350,                      --移动速度
                  0,                       --生命偷取
                  0,                       --法力吸血偷取
                  0,                       --暴击率
                  2,                       --暴击伤害
                  0,                        --护甲穿透
                  0,                        --破甲
                  1                         --冷却缩减
                  );

                  insert into   HeroAt      values(
                  'Jinx',
                  517.76,                  --生命值
                  82,                      --生命值成长
                  5.84,                    --生命值回复
                  0.5,                     --生命值回复成长
                  170,                     --初始魔力值
                  45,                      --法力值成长
                  58.46,                   --攻击力
                  2.41,                    --攻击力成长
                  0,                       --初始法强
                  0,                         --法强成长
                  22.88,                   --物理防御
                  3.5,                     --物理防御成长
                  0.625,                   --攻击速度
                  0.01,                    --攻击速度增加
                  30,                      --魔法抗性
                  0,                       --魔法抗性成长
                  325,                      --移动速度
                  0,                       --生命偷取
                  0,                       --法力吸血偷取
                  0,                       --暴击率
                  2,                       --暴击伤害
                  0,                        --护甲穿透
                  0,                        --破甲
                  1                         --冷却缩减
                  );

                  insert into   HeroAt      values(
                  'Garen',
                  616.28,                  --生命值
                  84.25,                   --生命值成长
                  7.84,                    --生命值回复
                  0.5,                     --生命值回复成长
                  0,                      --初始魔力值
                  0,                       --法力值成长
                  57.88,                   --攻击力
                  4.5,                     --攻击力成长
                  0,                       --初始法强
                  0,                         --法强成长
                  27.536,                  --物理防御
                  3,                       --物理防御成长
                  0.625,                   --攻击速度
                  0.029,                   --攻击速度增加
                  32.1,                    --魔法抗性
                  1.25,                   --魔法抗性成长
                  340,                      --移动速度
                  0,                       --生命偷取
                  0,                       --法力吸血偷取
                  0,                       --暴击率
                  2,                       --暴击伤害
                  0,                        --护甲穿透
                  0,                        --破甲
                  1                         --冷却缩减
                  );


                  insert into   HeroAt      values(
                  'Shyvana',
                  595,                     --生命值
                  95,                      --生命值成长
                  8.6,                     --生命值回复
                  0.8,                     --生命值回复成长
                  0,                     --初始魔力值
                  0,                      --法力值成长
                  60,                      --攻击力
                  3.4,                     --攻击力成长
                  0,                       --初始法强
                  0,                         --法强成长
                  27.628,                  --物理防御
                  3.35,                    --物理防御成长
                  0.625,                   --攻击速度
                  0.025,                   --攻击速度增加
                  32.1,                    --魔法抗性
                  1.25,                    --魔法抗性成长
                  350,                     --移动速度
                  0,                       --生命偷取
                  0,                       --法力吸血偷取
                  0,                       --暴击率
                  2,                       --暴击伤害
                  0,                       --护甲穿透
                  0,                       --破甲
                  1                        --冷却缩减
                  );

--------------------------------Items and Equipment物品装备表--------------------
