.class public Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;
.super Ljava/lang/Object;
.source "GameHomeCardInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/data/GameHomeCardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameHomeVideoInfo"
.end annotation


# static fields
.field public static final TYPE_APP_MARKET:I = 0x7

.field public static final TYPE_DOWNLOAD_APK:I = 0x8

.field public static final TYPE_GAMECENTER_DETAIL:I = 0x9

.field public static final TYPE_GAMECENTER_GIFT_BAG:I = 0xe

.field public static final TYPE_LIVE:I = 0xa

.field public static final TYPE_PLAYLIST:I = 0x3

.field public static final TYPE_SHOW:I = 0x2

.field public static final TYPE_URL:I = 0x4

.field public static final TYPE_VIDEO:I = 0x1

.field public static final TYPE_VIDEOLIST:I = 0x5


# instance fields
.field public cid:Ljava/lang/String;

.field public gameCenterVideoInfo:Lcom/youku/gamecenter/data/GameHomeCardInfo$GameGameCenterVideoInfo;

.field public gameInfo:Lcom/youku/gamecenter/data/GameInfo;

.field public game_page_id:Ljava/lang/String;

.field public game_relation:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public paid:I

.field public pgc_uid:Ljava/lang/String;

.field public playlist_id:Ljava/lang/String;

.field public pos:I

.field public profile_image_url:Ljava/lang/String;

.field public subtitle:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public tid:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;

.field public username:Ljava/lang/String;

.field public videoid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->title:Ljava/lang/String;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->subtitle:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->summary:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->image:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->tid:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->videoid:Ljava/lang/String;

    .line 125
    iput v1, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->paid:I

    .line 128
    iput v1, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->type:I

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->playlist_id:Ljava/lang/String;

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->url:Ljava/lang/String;

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->cid:Ljava/lang/String;

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->pgc_uid:Ljava/lang/String;

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->username:Ljava/lang/String;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->profile_image_url:Ljava/lang/String;

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->game_page_id:Ljava/lang/String;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->game_relation:Ljava/lang/String;

    .line 146
    iput v1, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->pos:I

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameHomeCardInfo$GameHomeVideoInfo;->gameInfo:Lcom/youku/gamecenter/data/GameInfo;

    .line 107
    return-void
.end method
