.class public Lnet/iab/vast/ad/VASTNonLinearAd;
.super Ljava/lang/Object;


# instance fields
.field private mAdParameters:Ljava/lang/String;

.field private mApiFramework:Ljava/lang/String;

.field private mClickThrough:Ljava/lang/String;

.field private mExpandedHeight:I

.field private mExpandedWidth:I

.field private mHeight:I

.field private mId:Ljava/lang/String;

.field private mMaintainAspectRatio:Z

.field private mMinSuggestedDuration:I

.field private mResource:Lnet/iab/vast/ad/VASTCompanionResource;

.field private mScalable:Z

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdParameters()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mAdParameters:Ljava/lang/String;

    return-object v0
.end method

.method public getApiFramework()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mApiFramework:Ljava/lang/String;

    return-object v0
.end method

.method public getClickThrough()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mClickThrough:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandedHeight()I
    .locals 1

    iget v0, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mExpandedHeight:I

    return v0
.end method

.method public getExpandedWidth()I
    .locals 1

    iget v0, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mExpandedWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mHeight:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMinSuggestedDuration()I
    .locals 1

    iget v0, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mMinSuggestedDuration:I

    return v0
.end method

.method public getResource()Lnet/iab/vast/ad/VASTCompanionResource;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mResource:Lnet/iab/vast/ad/VASTCompanionResource;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mWidth:I

    return v0
.end method

.method public isMaintainAspectRatio()Z
    .locals 1

    iget-boolean v0, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mMaintainAspectRatio:Z

    return v0
.end method

.method public isScalable()Z
    .locals 1

    iget-boolean v0, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mScalable:Z

    return v0
.end method

.method public setAdParameters(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mAdParameters:Ljava/lang/String;

    return-void
.end method

.method public setApiFramework(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mApiFramework:Ljava/lang/String;

    return-void
.end method

.method public setClickThrough(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mClickThrough:Ljava/lang/String;

    return-void
.end method

.method public setExpandedHeight(I)V
    .locals 0

    iput p1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mExpandedHeight:I

    return-void
.end method

.method public setExpandedWidth(I)V
    .locals 0

    iput p1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mExpandedWidth:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mHeight:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mId:Ljava/lang/String;

    return-void
.end method

.method public setMaintainAspectRatio(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mMaintainAspectRatio:Z

    return-void
.end method

.method public setMinSuggestedDuration(I)V
    .locals 0

    iput p1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mMinSuggestedDuration:I

    return-void
.end method

.method public setResource(Lnet/iab/vast/ad/VASTCompanionResource;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mResource:Lnet/iab/vast/ad/VASTCompanionResource;

    return-void
.end method

.method public setScalable(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mScalable:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NonLinearAd [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expandedWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mExpandedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expandedHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mExpandedHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scalable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mScalable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maintainAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mMaintainAspectRatio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", suggestedDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mMinSuggestedDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apiFramework="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mApiFramework:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mResource:Lnet/iab/vast/ad/VASTCompanionResource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickThrough="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mClickThrough:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTNonLinearAd;->mAdParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
