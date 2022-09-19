.class public Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeJumpInfo;
.super Ljava/lang/Object;
.source "GameHomeCardInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/data/GameHomeCardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameHomeJumpInfo"
.end annotation


# instance fields
.field public cid:Ljava/lang/String;

.field public game_id:Ljava/lang/String;

.field public sub_channel_id:I

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeJumpInfo;->type:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeJumpInfo;->cid:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeJumpInfo;->title:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeJumpInfo;->sub_channel_id:I

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeJumpInfo;->game_id:Ljava/lang/String;

    .line 78
    return-void
.end method
