.class public Lnet/iab/vast/ad/VASTLinear;
.super Lnet/iab/vast/ad/VASTCreative;


# instance fields
.field private mAdParameters:Ljava/lang/String;

.field private mDurationInSeconds:J

.field private mMediaFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTMediaFile;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTTracking;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoClicks:Lnet/iab/vast/ad/VASTVideoClicks;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/iab/vast/ad/VASTCreative;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/iab/vast/ad/VASTLinear;->mTrackingEvents:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/iab/vast/ad/VASTLinear;->mMediaFiles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAdParameters()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTLinear;->mAdParameters:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationInSeconds()J
    .locals 2

    iget-wide v0, p0, Lnet/iab/vast/ad/VASTLinear;->mDurationInSeconds:J

    return-wide v0
.end method

.method public getMediaFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTMediaFile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/iab/vast/ad/VASTLinear;->mMediaFiles:Ljava/util/List;

    return-object v0
.end method

.method public getTrackingEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTTracking;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/iab/vast/ad/VASTLinear;->mTrackingEvents:Ljava/util/List;

    return-object v0
.end method

.method public getVideoClicks()Lnet/iab/vast/ad/VASTVideoClicks;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTLinear;->mVideoClicks:Lnet/iab/vast/ad/VASTVideoClicks;

    return-object v0
.end method

.method public setAdParameters(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTLinear;->mAdParameters:Ljava/lang/String;

    return-void
.end method

.method public setDurationInSeconds(J)V
    .locals 1

    iput-wide p1, p0, Lnet/iab/vast/ad/VASTLinear;->mDurationInSeconds:J

    return-void
.end method

.method public setMediaFiles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTMediaFile;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/iab/vast/ad/VASTLinear;->mMediaFiles:Ljava/util/List;

    return-void
.end method

.method public setTrackingEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTTracking;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/iab/vast/ad/VASTLinear;->mTrackingEvents:Ljava/util/List;

    return-void
.end method

.method public setVideoClicks(Lnet/iab/vast/ad/VASTVideoClicks;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTLinear;->mVideoClicks:Lnet/iab/vast/ad/VASTVideoClicks;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Linear [mDurationInSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnet/iab/vast/ad/VASTLinear;->mDurationInSeconds:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTrackingEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTLinear;->mTrackingEvents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTLinear;->mAdParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVideoClicks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTLinear;->mVideoClicks:Lnet/iab/vast/ad/VASTVideoClicks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMediaFiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTLinear;->mMediaFiles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
