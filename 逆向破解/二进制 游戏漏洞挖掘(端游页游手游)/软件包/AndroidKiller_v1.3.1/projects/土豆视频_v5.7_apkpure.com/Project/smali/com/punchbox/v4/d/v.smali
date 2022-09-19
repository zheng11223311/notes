.class public Lcom/punchbox/v4/d/v;
.super Lcom/punchbox/v4/n/b;


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/punchbox/v4/n/b;-><init>()V

    iput v1, p0, Lcom/punchbox/v4/d/v;->b:I

    iput v1, p0, Lcom/punchbox/v4/d/v;->c:I

    iput-object v0, p0, Lcom/punchbox/v4/d/v;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/punchbox/v4/d/v;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/punchbox/v4/d/v;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/punchbox/v4/d/v;->c:I

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

.method public getParams(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-static {}, Lcom/punchbox/util/b;->a()Lcom/punchbox/util/b;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/punchbox/v4/d/v;->b:I

    if-eq v1, v3, :cond_1

    const-string v1, "adtype"

    iget v2, p0, Lcom/punchbox/v4/d/v;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lcom/punchbox/v4/d/v;->c:I

    if-eq v1, v3, :cond_2

    const-string v1, "evt"

    iget v2, p0, Lcom/punchbox/v4/d/v;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/punchbox/v4/d/v;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "placeid"

    iget-object v2, p0, Lcom/punchbox/v4/d/v;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/punchbox/v4/d/v;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "pid"

    iget-object v2, p0, Lcom/punchbox/v4/d/v;->d:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/punchbox/v4/d/v;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "appv"

    iget-object v2, p0, Lcom/punchbox/v4/d/v;->f:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v1, "model"

    invoke-virtual {v0}, Lcom/punchbox/util/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "brand"

    invoke-virtual {v0}, Lcom/punchbox/util/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "jb"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/punchbox/util/b;->e()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    array-length v2, v1

    if-ne v2, v6, :cond_6

    const-string/jumbo v2, "srw"

    aget-object v3, v1, v4

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "srh"

    aget-object v1, v1, v5

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Lcom/punchbox/util/b;->s()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    array-length v2, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    const-string v2, "cell"

    aget-object v3, v1, v4

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mcc"

    aget-object v3, v1, v5

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mnc"

    aget-object v3, v1, v6

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lac"

    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mt"

    const/4 v3, 0x4

    aget-object v1, v1, v3

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v1, "den"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/punchbox/util/b;->n()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lang"

    invoke-virtual {v0}, Lcom/punchbox/util/b;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cc"

    invoke-virtual {v0}, Lcom/punchbox/util/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ua"

    invoke-virtual {v0}, Lcom/punchbox/util/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "err"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "errs"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "http://service.cocounion.com/core/url"

    return-object v0
.end method

.method public setAdType(I)V
    .locals 0

    iput p1, p0, Lcom/punchbox/v4/d/v;->b:I

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/v;->f:Ljava/lang/String;

    return-void
.end method

.method public setEventType(I)V
    .locals 0

    iput p1, p0, Lcom/punchbox/v4/d/v;->c:I

    return-void
.end method

.method public setPlacementID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/v;->e:Ljava/lang/String;

    return-void
.end method

.method public setPublisherID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/v;->d:Ljava/lang/String;

    return-void
.end method
