.class public Lnet/iab/vast/ad/VASTPricing;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/iab/vast/ad/VASTPricing$PricingModelType;
    }
.end annotation


# instance fields
.field private mCurrency:Ljava/lang/String;

.field private mModel:Ljava/lang/String;

.field private mValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lnet/iab/vast/ad/VASTPricing;->setModel(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lnet/iab/vast/ad/VASTPricing;->setCurrency(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/iab/vast/ad/VASTPricing;->setValue(I)V

    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTPricing;->mCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTPricing;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lnet/iab/vast/ad/VASTPricing;->mValue:I

    return v0
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTPricing;->mCurrency:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTPricing;->mModel:Ljava/lang/String;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lnet/iab/vast/ad/VASTPricing;->mValue:I

    return-void
.end method
