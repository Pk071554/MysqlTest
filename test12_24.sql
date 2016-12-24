create database  myBBS;
  use myBBS;
---------------------------Board论坛版------------------------------
create table Board(
                Board_ID int primary key not null,                              -----论坛ID
                Board_name            varchar(32),                              -----论坛名
                Board_Time            datetime,                                 -----创建日期
                Board_describe        varchar(32)                               -----描述
);

insert into Board  values(1,'beer',now(),'cool');
insert into Board  values(2,'smoki',now(),'goodcool');
----------------------------Forum------------------------------
create table Forum(
                Forum_ID int primary key not null,                              -----论坛ID
                Forum_name            varchar(32),                              -----论坛名
                Forum_time            datetime,                                 -----创建日期
                Board_ID              int,                                      -----BoardId
                foreign key(Board_ID) references Board(Board_ID)                ----- 上层ID
);
insert into Forum values(1,'beergood',now(),1);
insert into Forum values(1,'smokigood',now(),1);


--------------------Article-------------------------
create table Article(
                Article_ID int primary key not null,                            -----帖子ID
                Article_Theme         varchar(32),                              -----帖子名字
                Article_Theme_time    datetime,                                 -----发帖时间
                Article_views         int,                                      -----浏览次数
                Article_content       varchar(1314),                            -----内容
                UID                   int,                                      -----发帖用户ID
                Article_LastReplyDate varchar(32),                              -----最后回复时间
                Article_LastReplyUID  int,                                      -----最后回复用户
                Forum_ID              int,                                      -----版页ID
                foreign key(Forum_ID) references Forum(Forum_ID)                -----外联到Forum_IDID
              );
              insert into Article values(1,'beer',now(),50,'dring',1,now(),1,1);
              insert into Article values(2,'smoki',now(),50,'smoki',2,now(),2,2);

----------------------Reply-------------------------
create table Reply(
               ReplyDate    date primary key not null,                          ----- 回帖时间
               Content      varchar(520),                                       ----- 回复内容
               Title        varchar(32),                                        ----- 标题
               UID          int,                                                ----- 用户ID
               Reply_Date   timestamp,                                          ----- 回帖时间
               Article_ID   int,                                                ----- 帖ID
               foreign key(Article_ID) references Article(Article_ID)           -----外联
);
             insert into Reply values(now(),'CCC','fXXKGOOD',1,now(),1);
             insert into Reply values(now(),'WWW','fXXKGOOD',2,now(),2);


----------------------用户方面-------------------------
----------------------版主----------------------------
create table  Moderator(
               Forum_ID int   primary key,                                      -----板块ID
               User_ID  int   primary key,                                      -----用户ID
              foreign key(User_ID) references User(User_ID),                    -----外联
              foreign key(Forum_ID) references Forum(Forum_ID),                 -----外联
              Moderator_operUid   int,                                          -----版主ID
              Moderator_operDate  datetime                                      -----版主时间
 );
   insert into Moderator values(1,1,1,1,now());
   insert into Moderator values(2,2,2,2,now());

----------------------用户User表---------------------------
create table  User(
              User_ID   int primary key not null                                -----用户ID
              User_name varchar(16)     not null                                -----用户名
              User_password varchar(18) not null                                -----用户密码
)
insert into User values(1,'beeri',password);
insert into User values(2,'smokij',password);
------------------------UserDesc---------------------------
create table UserDesc(
             User_ID   int   primary key,                                       -----用户ID
             UserDesc_Desci     varchar(32),                                    -----描述
             UserDesc_Name      varchar(32),                                    -----姓名
             UserDesc_Sex       varchar(8),                                     -----性别
             UserDesc_Birthday  date,                                           -----生日
             foreign key(User_ID) references User(User_ID)                      -----外联
           );
           insert into UserDesc values(1,'hejiu,chouyan','beeri','nan',now(),);
           insert into UserDesc values(2,'hejiu,chouyan','smokij','nan',now(),);

-------------------------角色表RolelD---------------------------
create table Roleld(
            Rolel_ID  int primary key not null,                                 -----角色ID
            Rolel_name varchar(16)                                              -----角色名
);
        insert into  Roleld values(1,'BOSS');
        insert into  Roleld values(2,'BOSS');

-----------------------------权限表Permission---------------------------------
create table Permission(
             Permission_ID int primary key not null,                            -----权限ID
             PermissionName     varchar(32)                                     -----权限名字
           );
           insert into  Roleld values(1,'BIGBOSS');
           insert into  Roleld values(2,'BIGBOSS');


------------------------------Entity9---------------------------------------
create table Entity9(
            Permission_ID  int  primary key not null,                           --------权限ID
            Rolel_ID       int  primary key not null,                           --------角色ID
            foreign key(Permission_ID) references Permission(Permission_ID),    --------外联
            foreign key(Rolel_ID)      references Roleld(Rolel_ID)              --------外联
);
         insert into Entity7 values(1,1)
         insert into Entity7 values(2,2)
------------------------------Entity7---------------------------------------
create table Entity9(
            User_ID               int  primary key not null,                    --------用户ID
            Roleld_ID             int  primary key not null,                    --------角色ID
            foreign key(User_ID)  references User(User_ID),                     --------外联
            foreign key(Rolel_ID) references Roleld(Rolel_ID)                   --------外联
);
  insert into Entity9 values(1,1)
  insert into Entity9 values(2,2)
