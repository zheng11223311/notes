.class public Lnet/iab/vast/ad/VASTMediaFile;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;
    }
.end annotation


# instance fields
.field private mApiFramework:Ljava/lang/String;

.field private mBitrate:I

.field private mDelivery:Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

.field private mHeight:I

.field private mId:Ljava/lang/String;

.field private mMaintainAspectRatio:Z

.field private mScalable:Z

.field private mType:Ljava/lang/String;

.field private mURI:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiFramework()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTMediaFile;->mApiFramework:Ljava/lang/String;

    return-object v0
.end method

.method public getBitrate()I
    .locals 1

    iget v0, p0, Lnet/iab/vast/ad/VASTMediaFile;->mBitrate:I

    return v0
.end method

.method public getDelivery()Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTMediaFile;->mDelivery:Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lnet/iab/vast/ad/VASTMediaFile;->mHeight:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTMediaFile;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTMediaFile;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTMediaFile;->mURI:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lnet/iab/vast/ad/VASTMediaFile;->mWidth:I

    return v0
.end method

.method public isMaintainAspectRatio()Z
    .locals 1

    iget-boolean v0, p0, Lnet/iab/vast/ad/VASTMediaFile;->mMaintainAspectRatio:Z

    return v0
.end method

.method public isScalable()Z
    .locals 1

    iget-boolean v0, p0, Lnet/iab/vast/ad/VASTMediaFile;->mScalable:Z

    return v0
.end method

.method public setApiFramework(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mApiFramework:Ljava/lang/String;

    return-void
.end method

.method public setBitrate(I)V
    .locals 0

    iput p1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mBitrate:I

    return-void
.end method

.method public setDelivery(Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mDelivery:Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mHeight:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mId:Ljava/lang/String;

    return-void
.end method

.method public setMaintainAspectRatio(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mMaintainAspectRatio:Z

    return-void
.end method

.method public setScalable(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mScalable:Z

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mType:Ljava/lang/String;

    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mURI:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaFile [mURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDelivery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mDelivery:Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mBitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScalable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mScalable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaintainAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mMaintainAspectRatio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mApiFramework="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTMediaFile;->mApiFramework:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
