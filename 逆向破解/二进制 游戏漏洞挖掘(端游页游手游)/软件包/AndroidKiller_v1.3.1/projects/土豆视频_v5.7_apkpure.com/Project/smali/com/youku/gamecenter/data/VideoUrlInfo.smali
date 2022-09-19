.class public Lcom/youku/gamecenter/data/VideoUrlInfo;
.super Ljava/lang/Object;
.source "VideoUrlInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/youku/gamecenter/data/IResponseable;


# instance fields
.field public channelId:Ljava/lang/String;

.field public code:I

.field public copyright:Ljava/lang/String;

.field public duration:I

.field public finalUrl:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public interact:Z

.field public mp4_field_id:Ljava/lang/String;

.field public mp4_url:Ljava/lang/String;

.field public oip:Ljava/lang/String;

.field public paystate:Ljava/lang/String;

.field public piddecode:Ljava/lang/String;

.field public playlistchannelid:Ljava/lang/String;

.field public schannelid:Ljava/lang/String;

.field public showchannelid:Ljava/lang/String;

.field public sid:Ljava/lang/String;

.field public siddecode:Ljava/lang/String;

.field public splaylistchannelid:Ljava/lang/String;

.field public sshowchannelid:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public trailers:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public vid:Ljava/lang/String;

.field public viddecode:Ljava/lang/String;

.field public videoLanguage:Ljava/lang/String;

.field public weburl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/VideoUrlInfo;->uid:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/VideoUrlInfo;->siddecode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setDurationSecs(D)V
    .locals 3
    .param p1, "durationSecs"    # D

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lcom/youku/gamecenter/data/VideoUrlInfo;->duration:I

    goto :goto_0
.end method
