.class public Lcn/com/iresearch/mvideotracker/VideoPlayInfo;
.super Ljava/lang/Object;
.source "VideoPlayInfo.java"


# annotations
.annotation runtime Lcn/com/iresearch/mvideotracker/db/annotation/sqlite/Table;
    name = "VideoPlayInfo"
.end annotation


# instance fields
.field private _id:I

.field private action:Ljava/lang/String;

.field private customVal:Ljava/lang/String;

.field private heartTime:I

.field private lastActionTime:J

.field private pauseCount:I

.field private playTime:J

.field private preActionTime:J

.field private uid:Ljava/lang/String;

.field private videoID:Ljava/lang/String;

.field private videoLength:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->uid:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->videoID:Ljava/lang/String;

    .line 11
    iput-wide v2, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->videoLength:J

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->customVal:Ljava/lang/String;

    .line 13
    iput-wide v2, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->playTime:J

    .line 14
    iput v1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->heartTime:I

    .line 15
    iput v1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->pauseCount:I

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->action:Ljava/lang/String;

    .line 17
    iput-wide v2, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->lastActionTime:J

    .line 18
    iput-wide v2, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->preActionTime:J

    .line 6
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->customVal:Ljava/lang/String;

    return-object v0
.end method

.method public getHeartTime()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->heartTime:I

    return v0
.end method

.method public getLastActionTime()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->lastActionTime:J

    return-wide v0
.end method

.method public getPauseCount()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->pauseCount:I

    return v0
.end method

.method public getPlayTime()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->playTime:J

    return-wide v0
.end method

.method public getPreActionTime()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->preActionTime:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->videoID:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoLength()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->videoLength:J

    return-wide v0
.end method

.method public get_id()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->_id:I

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->action:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setCustomVal(Ljava/lang/String;)V
    .locals 0
    .param p1, "customVal"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->customVal:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setHeartTime(I)V
    .locals 0
    .param p1, "heartTime"    # I

    .prologue
    .line 97
    iput p1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->heartTime:I

    .line 98
    return-void
.end method

.method public setLastActionTime(J)V
    .locals 1
    .param p1, "lastActionTime"    # J

    .prologue
    .line 89
    iput-wide p1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->lastActionTime:J

    .line 90
    return-void
.end method

.method public setPauseCount(I)V
    .locals 0
    .param p1, "pauseCount"    # I

    .prologue
    .line 73
    iput p1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->pauseCount:I

    .line 74
    return-void
.end method

.method public setPlayTime(J)V
    .locals 1
    .param p1, "playTime"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->playTime:J

    .line 66
    return-void
.end method

.method public setPreActionTime(J)V
    .locals 1
    .param p1, "preActionTime"    # J

    .prologue
    .line 105
    iput-wide p1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->preActionTime:J

    .line 106
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->uid:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setVideoID(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoID"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->videoID:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setVideoLength(J)V
    .locals 1
    .param p1, "videoLength"    # J

    .prologue
    .line 49
    iput-wide p1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->videoLength:J

    .line 50
    return-void
.end method

.method public set_id(I)V
    .locals 0
    .param p1, "_id"    # I

    .prologue
    .line 25
    iput p1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->_id:I

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoPlayInfo [_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->videoID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->videoLength:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customVal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->customVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->playTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    iget v1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->heartTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pauseCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->pauseCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastActionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->lastActionTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    const-string v1, ", preActionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->preActionTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
