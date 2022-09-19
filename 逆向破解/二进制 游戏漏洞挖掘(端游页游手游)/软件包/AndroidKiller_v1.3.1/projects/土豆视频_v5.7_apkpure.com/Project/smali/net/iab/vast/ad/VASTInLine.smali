.class public Lnet/iab/vast/ad/VASTInLine;
.super Lnet/iab/vast/ad/VASTAd;


# instance fields
.field private mAdSystem:Lnet/iab/vast/ad/VASTAdSystem;

.field private mAdTitle:Ljava/lang/String;

.field private mCreatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTCreative;",
            ">;"
        }
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;

.field private mError:Ljava/lang/String;

.field private mExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/IVASTExtension;",
            ">;"
        }
    .end annotation
.end field

.field private mImpressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTImpression;",
            ">;"
        }
    .end annotation
.end field

.field private mPricing:Lnet/iab/vast/ad/VASTPricing;

.field private mSurvey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/iab/vast/ad/VASTAd;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/iab/vast/ad/VASTInLine;->mImpressions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/iab/vast/ad/VASTInLine;->mCreatives:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/iab/vast/ad/VASTInLine;->mExtensions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAdSystem()Lnet/iab/vast/ad/VASTAdSystem;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTInLine;->mAdSystem:Lnet/iab/vast/ad/VASTAdSystem;

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTInLine;->mAdTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTCreative;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/iab/vast/ad/VASTInLine;->mCreatives:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTInLine;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTInLine;->mError:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/IVASTExtension;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/iab/vast/ad/VASTInLine;->mExtensions:Ljava/util/List;

    return-object v0
.end method

.method public getImpressions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTImpression;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/iab/vast/ad/VASTInLine;->mImpressions:Ljava/util/List;

    return-object v0
.end method

.method public getPricing()Lnet/iab/vast/ad/VASTPricing;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTInLine;->mPricing:Lnet/iab/vast/ad/VASTPricing;

    return-object v0
.end method

.method public getSurvey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTInLine;->mSurvey:Ljava/lang/String;

    return-object v0
.end method

.method public setAdSystem(Lnet/iab/vast/ad/VASTAdSystem;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTInLine;->mAdSystem:Lnet/iab/vast/ad/VASTAdSystem;

    return-void
.end method

.method public setAdTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTInLine;->mAdTitle:Ljava/lang/String;

    return-void
.end method

.method public setCreatives(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTCreative;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/iab/vast/ad/VASTInLine;->mCreatives:Ljava/util/List;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTInLine;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTInLine;->mError:Ljava/lang/String;

    return-void
.end method

.method public setExtensions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/IVASTExtension;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/iab/vast/ad/VASTInLine;->mExtensions:Ljava/util/List;

    return-void
.end method

.method public setImpressions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTImpression;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/iab/vast/ad/VASTInLine;->mImpressions:Ljava/util/List;

    return-void
.end method

.method public setPricing(Lnet/iab/vast/ad/VASTPricing;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTInLine;->mPricing:Lnet/iab/vast/ad/VASTPricing;

    return-void
.end method

.method public setSurvey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTInLine;->mSurvey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InLine [mAdSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTInLine;->mAdSystem:Lnet/iab/vast/ad/VASTAdSystem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTInLine;->mAdTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTInLine;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSurvey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTInLine;->mSurvey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTInLine;->mError:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImpressions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTInLine;->mImpressions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCreatives="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTInLine;->mCreatives:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTInLine;->mExtensions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
