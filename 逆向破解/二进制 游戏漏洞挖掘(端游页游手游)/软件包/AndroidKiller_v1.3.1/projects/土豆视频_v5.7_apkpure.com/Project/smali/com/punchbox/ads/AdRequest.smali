.class public Lcom/punchbox/ads/AdRequest;
.super Lcom/punchbox/v4/d/v;


# instance fields
.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/punchbox/v4/d/v;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/punchbox/ads/AdRequest;->b:I

    return-void
.end method


# virtual methods
.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/punchbox/ads/AdRequest;->b:I

    return v0
.end method

.method public getParams(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/punchbox/util/b;->a()Lcom/punchbox/util/b;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/punchbox/v4/d/v;->getParams(Landroid/os/Bundle;)V

    iget v1, p0, Lcom/punchbox/ads/AdRequest;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v0, "ori"

    iget v1, p0, Lcom/punchbox/ads/AdRequest;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "ori"

    invoke-virtual {v0}, Lcom/punchbox/util/b;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/punchbox/ads/AdRequest;->b:I

    return-void
.end method
