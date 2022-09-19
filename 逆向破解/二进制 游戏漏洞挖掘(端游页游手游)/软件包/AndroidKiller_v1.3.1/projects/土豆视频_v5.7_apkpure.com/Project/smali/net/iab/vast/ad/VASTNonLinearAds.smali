.class public Lnet/iab/vast/ad/VASTNonLinearAds;
.super Lnet/iab/vast/ad/VASTCreative;


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTNonLinearAd;",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/iab/vast/ad/VASTCreative;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/iab/vast/ad/VASTNonLinearAds;->mTrackingEvents:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/iab/vast/ad/VASTNonLinearAds;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTNonLinearAd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/iab/vast/ad/VASTNonLinearAds;->mList:Ljava/util/List;

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

    iget-object v0, p0, Lnet/iab/vast/ad/VASTNonLinearAds;->mTrackingEvents:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTNonLinearAd;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/iab/vast/ad/VASTNonLinearAds;->mList:Ljava/util/List;

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

    iput-object p1, p0, Lnet/iab/vast/ad/VASTNonLinearAds;->mTrackingEvents:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NonLinearAds [ads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTNonLinearAds;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackingEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTNonLinearAds;->mTrackingEvents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
