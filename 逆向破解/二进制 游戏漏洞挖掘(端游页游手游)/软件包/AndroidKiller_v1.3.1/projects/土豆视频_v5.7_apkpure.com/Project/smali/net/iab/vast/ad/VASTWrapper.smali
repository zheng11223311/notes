.class public Lnet/iab/vast/ad/VASTWrapper;
.super Lnet/iab/vast/ad/VASTAd;


# instance fields
.field private mAdSystem:Lnet/iab/vast/ad/VASTAdSystem;

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

.field private mVAST:Lnet/iab/vast/VAST;

.field private mVASTAdTagURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/iab/vast/ad/VASTAd;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/iab/vast/ad/VASTWrapper;->mImpressions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/iab/vast/ad/VASTWrapper;->mCreatives:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/iab/vast/ad/VASTWrapper;->mExtensions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAdSystem()Lnet/iab/vast/ad/VASTAdSystem;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTWrapper;->mAdSystem:Lnet/iab/vast/ad/VASTAdSystem;

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

    iget-object v0, p0, Lnet/iab/vast/ad/VASTWrapper;->mCreatives:Ljava/util/List;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTWrapper;->mError:Ljava/lang/String;

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

    iget-object v0, p0, Lnet/iab/vast/ad/VASTWrapper;->mExtensions:Ljava/util/List;

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

    iget-object v0, p0, Lnet/iab/vast/ad/VASTWrapper;->mImpressions:Ljava/util/List;

    return-object v0
.end method

.method public getVAST()Lnet/iab/vast/VAST;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTWrapper;->mVAST:Lnet/iab/vast/VAST;

    return-object v0
.end method

.method public getVASTAdTagURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTWrapper;->mVASTAdTagURI:Ljava/lang/String;

    return-object v0
.end method

.method public setAdSystem(Lnet/iab/vast/ad/VASTAdSystem;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTWrapper;->mAdSystem:Lnet/iab/vast/ad/VASTAdSystem;

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

    iput-object p1, p0, Lnet/iab/vast/ad/VASTWrapper;->mCreatives:Ljava/util/List;

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTWrapper;->mError:Ljava/lang/String;

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

    iput-object p1, p0, Lnet/iab/vast/ad/VASTWrapper;->mExtensions:Ljava/util/List;

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

    iput-object p1, p0, Lnet/iab/vast/ad/VASTWrapper;->mImpressions:Ljava/util/List;

    return-void
.end method

.method public setVAST(Lnet/iab/vast/VAST;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTWrapper;->mVAST:Lnet/iab/vast/VAST;

    return-void
.end method

.method public setVASTAdTagURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTWrapper;->mVASTAdTagURI:Ljava/lang/String;

    return-void
.end method
