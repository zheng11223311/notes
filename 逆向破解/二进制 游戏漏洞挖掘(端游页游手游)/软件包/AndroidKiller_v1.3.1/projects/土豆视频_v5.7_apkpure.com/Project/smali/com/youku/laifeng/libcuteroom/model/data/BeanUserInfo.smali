.class public Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
.super Ljava/lang/Object;
.source "BeanUserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anchorLevel:Ljava/lang/String;

.field private attention:Ljava/lang/String;

.field private banSpeak:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private coins:Ljava/lang/String;

.field private faceUrl:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private hasExp:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isAnchor:Ljava/lang/String;

.field private kickOut:Ljava/lang/String;

.field private logined:Ljava/lang/String;

.field private needExp:Ljava/lang/String;

.field private newFeeds:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private nobleLevel:Ljava/lang/String;

.field private posterUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo$1;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo$1;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "0"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->id:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->nickName:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->faceUrl:Ljava/lang/String;

    .line 11
    const-string v0, "0"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->nobleLevel:Ljava/lang/String;

    .line 12
    const-string v0, "0"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->hasExp:Ljava/lang/String;

    .line 13
    const-string v0, "0"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->needExp:Ljava/lang/String;

    .line 14
    const-string v0, "0"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->anchorLevel:Ljava/lang/String;

    .line 15
    const-string v0, "false"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->isAnchor:Ljava/lang/String;

    .line 16
    const-string v0, "false"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->logined:Ljava/lang/String;

    .line 17
    const-string v0, "0"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->coins:Ljava/lang/String;

    .line 18
    const-string v0, "false"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->banSpeak:Ljava/lang/String;

    .line 19
    const-string v0, "false"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->kickOut:Ljava/lang/String;

    .line 20
    const-string v0, "0"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->gender:Ljava/lang/String;

    .line 21
    const-string v0, "0"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->city:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->birthday:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->posterUrl:Ljava/lang/String;

    .line 24
    const-string v0, "false"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->attention:Ljava/lang/String;

    .line 25
    const-string v0, "0"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->newFeeds:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "nickName"    # Ljava/lang/String;
    .param p3, "faceUrl"    # Ljava/lang/String;
    .param p4, "nobleLevel"    # Ljava/lang/String;
    .param p5, "hasExp"    # Ljava/lang/String;
    .param p6, "needExp"    # Ljava/lang/String;
    .param p7, "anchorLevel"    # Ljava/lang/String;
    .param p8, "isAnchor"    # Ljava/lang/String;
    .param p9, "logined"    # Ljava/lang/String;
    .param p10, "coins"    # Ljava/lang/String;
    .param p11, "banSpeak"    # Ljava/lang/String;
    .param p12, "kickOut"    # Ljava/lang/String;
    .param p13, "gender"    # Ljava/lang/String;
    .param p14, "city"    # Ljava/lang/String;
    .param p15, "birthday"    # Ljava/lang/String;
    .param p16, "posterUrl"    # Ljava/lang/String;
    .param p17, "attention"    # Ljava/lang/String;
    .param p18, "newFeeds"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v1, "0"

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->id:Ljava/lang/String;

    .line 9
    const-string v1, ""

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->nickName:Ljava/lang/String;

    .line 10
    const-string v1, ""

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->faceUrl:Ljava/lang/String;

    .line 11
    const-string v1, "0"

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->nobleLevel:Ljava/lang/String;

    .line 12
    const-string v1, "0"

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->hasExp:Ljava/lang/String;

    .line 13
    const-string v1, "0"

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->needExp:Ljava/lang/String;

    .line 14
    const-string v1, "0"

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->anchorLevel:Ljava/lang/String;

    .line 15
    const-string v1, "false"

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->isAnchor:Ljava/lang/String;

    .line 16
    const-string v1, "false"

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->logined:Ljava/lang/String;

    .line 17
    const-string v1, "0"

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->coins:Ljava/lang/String;

    .line 18
    const-string v1, "false"

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->banSpeak:Ljava/lang/String;

    .line 19
    const-string v1, "false"

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->kickOut:Ljava/lang/String;

    .line 20
    const-string v1, "0"

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->gender:Ljava/lang/String;

    .line 21
    const-string v1, "0"

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->city:Ljava/lang/String;

    .line 22
    const-string v1, ""

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->birthday:Ljava/lang/String;

    .line 23
    const-string v1, ""

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->posterUrl:Ljava/lang/String;

    .line 24
    const-string v1, "false"

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->attention:Ljava/lang/String;

    .line 25
    const-string v1, "0"

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->newFeeds:Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->id:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->nickName:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->faceUrl:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->nobleLevel:Ljava/lang/String;

    .line 124
    iput-object p5, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->hasExp:Ljava/lang/String;

    .line 125
    iput-object p6, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->needExp:Ljava/lang/String;

    .line 126
    iput-object p7, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->anchorLevel:Ljava/lang/String;

    .line 127
    iput-object p8, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->isAnchor:Ljava/lang/String;

    .line 128
    iput-object p9, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->logined:Ljava/lang/String;

    .line 129
    iput-object p10, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->coins:Ljava/lang/String;

    .line 130
    iput-object p11, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->banSpeak:Ljava/lang/String;

    .line 131
    iput-object p12, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->kickOut:Ljava/lang/String;

    .line 132
    iput-object p13, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->gender:Ljava/lang/String;

    .line 133
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->city:Ljava/lang/String;

    .line 134
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->birthday:Ljava/lang/String;

    .line 135
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->posterUrl:Ljava/lang/String;

    .line 136
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->attention:Ljava/lang/String;

    .line 137
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->newFeeds:Ljava/lang/String;

    .line 138
    return-void
.end method

.method static synthetic access$002(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->banSpeak:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->nickName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->kickOut:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->gender:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->city:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->birthday:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->posterUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->attention:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->newFeeds:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->faceUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->nobleLevel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->hasExp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->needExp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->anchorLevel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->isAnchor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->logined:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->coins:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public getAnchorLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->anchorLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getAttention()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->attention:Ljava/lang/String;

    return-object v0
.end method

.method public getBanSpeak()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->banSpeak:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCoins()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->coins:Ljava/lang/String;

    return-object v0
.end method

.method public getFaceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->faceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getHasExp()J
    .locals 2

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->hasExp:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 49
    :goto_0
    return-wide v0

    .line 46
    :catch_0
    move-exception v0

    .line 49
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->isAnchor:Ljava/lang/String;

    return-object v0
.end method

.method public getKickOut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->kickOut:Ljava/lang/String;

    return-object v0
.end method

.method public getLogined()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->logined:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedExp()J
    .locals 2

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->needExp:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 58
    :goto_0
    return-wide v0

    .line 55
    :catch_0
    move-exception v0

    .line 58
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getNewFeeds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->newFeeds:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getNobleLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->nobleLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getPosterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->posterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 176
    return-void
.end method

.method public setNewFeeds(Ljava/lang/String;)V
    .locals 0
    .param p1, "newFeeds"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->newFeeds:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BeanUserInfo{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nickName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", faceUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->faceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nobleLevel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->nobleLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasExp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->hasExp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needExp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->needExp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", anchorLevel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->anchorLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAnchor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->isAnchor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logined=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->logined:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coins=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->coins:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", banSpeak=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->banSpeak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", kickOut=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->kickOut:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gender=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", birthday=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", posterUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->posterUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attention=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->attention:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newFeeds=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->newFeeds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->faceUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->nobleLevel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->hasExp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->needExp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->anchorLevel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->isAnchor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->logined:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->coins:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->banSpeak:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->kickOut:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->gender:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->birthday:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->posterUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->attention:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->newFeeds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    return-void
.end method
