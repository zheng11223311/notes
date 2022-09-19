.class public Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;
.super Ljava/lang/Object;
.source "LiveDanmakuInfo.java"


# instance fields
.field public color:I

.field public pub_time:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;->title:Ljava/lang/String;

    .line 6
    const v0, 0xffffff

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;->color:I

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;->pub_time:J

    .line 3
    return-void
.end method
