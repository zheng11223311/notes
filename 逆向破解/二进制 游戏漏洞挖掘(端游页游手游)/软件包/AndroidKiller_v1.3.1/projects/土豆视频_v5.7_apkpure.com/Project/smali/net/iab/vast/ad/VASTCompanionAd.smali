.class public Lnet/iab/vast/ad/VASTCompanionAd;
.super Ljava/lang/Object;


# instance fields
.field private mAdParameters:Ljava/lang/String;

.field private mAltText:Ljava/lang/String;

.field private mApiFramework:Ljava/lang/String;

.field private mClickThrough:Ljava/lang/String;

.field private mExpandedHeight:I

.field private mExpandedWidth:I

.field private mHeight:I

.field private mId:Ljava/lang/String;

.field private mResource:Lnet/iab/vast/ad/VASTCompanionResource;

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

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mTrackingEvents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAdParameters()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mAdParameters:Ljava/lang/String;

    return-object v0
.end method

.method public getAltText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mAltText:Ljava/lang/String;

    return-object v0
.end method

.method public getApiFramework()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mApiFramework:Ljava/lang/String;

    return-object v0
.end method

.method public getClickThrough()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mClickThrough:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandedHeight()I
    .locals 1

    iget v0, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mExpandedHeight:I

    return v0
.end method

.method public getExpandedWidth()I
    .locals 1

    iget v0, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mExpandedWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mHeight:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Lnet/iab/vast/ad/VASTCompanionResource;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mResource:Lnet/iab/vast/ad/VASTCompanionResource;

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

    iget-object v0, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mTrackingEvents:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mWidth:I

    return v0
.end method

.method public setAdParameters(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mAdParameters:Ljava/lang/String;

    return-void
.end method

.method public setAltText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mAltText:Ljava/lang/String;

    return-void
.end method

.method public setApiFramework(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mApiFramework:Ljava/lang/String;

    return-void
.end method

.method public setClickThrough(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mClickThrough:Ljava/lang/String;

    return-void
.end method

.method public setExpandedHeight(I)V
    .locals 0

    iput p1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mExpandedHeight:I

    return-void
.end method

.method public setExpandedWidth(I)V
    .locals 0

    iput p1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mExpandedWidth:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mHeight:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mId:Ljava/lang/String;

    return-void
.end method

.method public setResource(Lnet/iab/vast/ad/VASTCompanionResource;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mResource:Lnet/iab/vast/ad/VASTCompanionResource;

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

    iput-object p1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mTrackingEvents:Ljava/util/List;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompanionAd [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpandedWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mExpandedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpandedHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mExpandedHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mApiFramework="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mApiFramework:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mResource:Lnet/iab/vast/ad/VASTCompanionResource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTrackingEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mTrackingEvents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClickThrough="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mClickThrough:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAltText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mAltText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTCompanionAd;->mAdParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
