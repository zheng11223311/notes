.class public Lnet/iab/vast/ad/VASTVideoClicks;
.super Ljava/lang/Object;


# instance fields
.field private mClickThrough:Lnet/iab/vast/ad/VASTIdURI;

.field private mClickTrackings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTIdURI;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomClicks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTIdURI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/iab/vast/ad/VASTVideoClicks;->mClickTrackings:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/iab/vast/ad/VASTVideoClicks;->mCustomClicks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getClickThrough()Lnet/iab/vast/ad/VASTIdURI;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTVideoClicks;->mClickThrough:Lnet/iab/vast/ad/VASTIdURI;

    return-object v0
.end method

.method public getClickTrackings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTIdURI;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/iab/vast/ad/VASTVideoClicks;->mClickTrackings:Ljava/util/List;

    return-object v0
.end method

.method public getCustomClicks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTIdURI;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/iab/vast/ad/VASTVideoClicks;->mCustomClicks:Ljava/util/List;

    return-object v0
.end method

.method public setClickThrough(Lnet/iab/vast/ad/VASTIdURI;)V
    .locals 0

    iput-object p1, p0, Lnet/iab/vast/ad/VASTVideoClicks;->mClickThrough:Lnet/iab/vast/ad/VASTIdURI;

    return-void
.end method

.method public setClickTrackings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTIdURI;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/iab/vast/ad/VASTVideoClicks;->mClickTrackings:Ljava/util/List;

    return-void
.end method

.method public setCustomClicks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTIdURI;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/iab/vast/ad/VASTVideoClicks;->mCustomClicks:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoClicks [mClickThrough="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTVideoClicks;->mClickThrough:Lnet/iab/vast/ad/VASTIdURI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClickTrackings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTVideoClicks;->mClickTrackings:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCustomClicks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/iab/vast/ad/VASTVideoClicks;->mCustomClicks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
