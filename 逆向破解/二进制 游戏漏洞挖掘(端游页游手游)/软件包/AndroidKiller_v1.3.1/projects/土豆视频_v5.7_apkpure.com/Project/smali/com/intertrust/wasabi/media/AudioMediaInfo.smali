.class public Lcom/intertrust/wasabi/media/AudioMediaInfo;
.super Lcom/intertrust/wasabi/media/MediaInfo;
.source "AudioMediaInfo.java"


# instance fields
.field private channelCount:I

.field private sampleRate:I

.field private sampleSize:I


# direct methods
.method constructor <init>(IIIIIII)V
    .locals 6

    .prologue
    .line 29
    sget-object v1, Lcom/intertrust/wasabi/media/MediaInfo$Type;->AUDIO:Lcom/intertrust/wasabi/media/MediaInfo$Type;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/intertrust/wasabi/media/MediaInfo;-><init>(Lcom/intertrust/wasabi/media/MediaInfo$Type;IIII)V

    .line 30
    iput p5, p0, Lcom/intertrust/wasabi/media/AudioMediaInfo;->channelCount:I

    .line 31
    iput p7, p0, Lcom/intertrust/wasabi/media/AudioMediaInfo;->sampleRate:I

    .line 32
    iput p6, p0, Lcom/intertrust/wasabi/media/AudioMediaInfo;->sampleSize:I

    .line 33
    return-void
.end method


# virtual methods
.method public getChannelCount()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/intertrust/wasabi/media/AudioMediaInfo;->channelCount:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/intertrust/wasabi/media/AudioMediaInfo;->sampleRate:I

    return v0
.end method

.method public getSampleSize()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/intertrust/wasabi/media/AudioMediaInfo;->sampleSize:I

    return v0
.end method
