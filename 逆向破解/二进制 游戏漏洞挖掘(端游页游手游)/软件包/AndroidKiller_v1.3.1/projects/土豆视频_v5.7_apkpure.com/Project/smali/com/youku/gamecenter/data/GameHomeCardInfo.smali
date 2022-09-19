.class public Lcom/youku/gamecenter/data/GameHomeCardInfo;
.super Ljava/lang/Object;
.source "GameHomeCardInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/data/GameHomeCardInfo$GameGameCenterVideoInfo;,
        Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;,
        Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeJumpInfo;,
        Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeTagInfo;
    }
.end annotation


# static fields
.field public static final CARD_TYPE_2_2:I = 0x4

.field public static final CARD_TYPE_4_0:I = 0x2

.field public static final CARD_TYPE_8_0:I = 0x3

.field public static final JUMP_TYPE_GAME:Ljava/lang/String; = "jump_to_game"

.field public static final JUMP_TYPE_GAME_LIST:Ljava/lang/String; = "jump_to_game_list"

.field public static final JUMP_TYPE_HOTWORD:Ljava/lang/String; = "jump_to_hotword"

.field public static final JUMP_TYPE_SUB_CHANNEL:Ljava/lang/String; = "jump_to_sub_channel"


# instance fields
.field public card_type:I

.field public cid:Ljava/lang/String;

.field public column_id:I

.field public homeJumpInfo:Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeJumpInfo;

.field public homeTagInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeTagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public homeVideoInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public image:Ljava/lang/String;

.field public image_link:Ljava/lang/String;

.field public isCanGoTop:Z

.field public pos:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v1, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo;->column_id:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo;->cid:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo;->title:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo;->image:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo;->image_link:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo;->card_type:I

    .line 33
    iput v1, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo;->pos:I

    .line 36
    iput-boolean v1, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo;->isCanGoTop:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo;->homeJumpInfo:Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeJumpInfo;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo;->homeTagInfos:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo;->homeVideoInfos:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public isCanJumpSubChannel()Z
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo;->homeJumpInfo:Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeJumpInfo;

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo;->homeJumpInfo:Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeJumpInfo;

    iget-object v0, v0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeJumpInfo;->type:Ljava/lang/String;

    const-string v1, "jump_to_sub_channel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
