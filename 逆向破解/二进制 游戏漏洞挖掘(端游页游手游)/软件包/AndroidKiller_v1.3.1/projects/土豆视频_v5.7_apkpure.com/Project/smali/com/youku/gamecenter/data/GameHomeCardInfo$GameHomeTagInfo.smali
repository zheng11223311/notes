.class public Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeTagInfo;
.super Ljava/lang/Object;
.source "GameHomeCardInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/data/GameHomeCardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameHomeTagInfo"
.end annotation


# instance fields
.field public cid:Ljava/lang/String;

.field public game_id:Ljava/lang/String;

.field public hotword:Ljava/lang/String;

.field public sub_channel_id:I

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeTagInfo;->type:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeTagInfo;->cid:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeTagInfo;->title:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeTagInfo;->sub_channel_id:I

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeTagInfo;->game_id:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeTagInfo;->hotword:Ljava/lang/String;

    .line 58
    return-void
.end method
