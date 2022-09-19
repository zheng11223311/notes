.class public final Lcom/punchbox/v4/d/w;
.super Lcom/punchbox/v4/d/i;


# static fields
.field private static final v:Ljava/lang/String;

.field private static z:I


# instance fields
.field private A:I

.field private B:I

.field private w:Ljava/lang/String;

.field private x:Lcom/punchbox/exception/PBException;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/punchbox/v4/d/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/v4/d/w;->v:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/punchbox/v4/d/w;->z:I

    return-void
.end method

.method public constructor <init>(Lcom/punchbox/ads/a;Landroid/app/Activity;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/punchbox/v4/d/i;-><init>(Lcom/punchbox/ads/a;Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/punchbox/v4/d/w;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/punchbox/v4/d/w;->x:Lcom/punchbox/exception/PBException;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/punchbox/v4/d/w;->y:Z

    iput v1, p0, Lcom/punchbox/v4/d/w;->A:I

    iput v1, p0, Lcom/punchbox/v4/d/w;->B:I

    return-void
.end method

.method private a(Lcom/punchbox/exception/PBException;Landroid/app/Activity;DLjava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Lcom/punchbox/exception/PBException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/punchbox/v4/d/w;->b(Landroid/app/Activity;DLjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3ee

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3ef

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3f0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3f1

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/punchbox/v4/d/w;->b(Landroid/app/Activity;DLjava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/punchbox/exception/PBException;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Lcom/punchbox/exception/PBException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/punchbox/v4/d/w;->b(Landroid/view/ViewGroup;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3ee

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3ef

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3f0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3f1

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/punchbox/v4/d/w;->b(Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lcom/punchbox/exception/PBException;)V
    .locals 2

    invoke-virtual {p1}, Lcom/punchbox/exception/PBException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/punchbox/v4/d/w;->c(Lcom/punchbox/exception/PBException;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/punchbox/v4/d/w;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/punchbox/v4/d/w;->r:I

    goto :goto_0
.end method

.method private c(Lcom/punchbox/exception/PBException;)V
    .locals 4

    invoke-virtual {p1}, Lcom/punchbox/exception/PBException;->getErrorCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adtype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/punchbox/v4/d/w;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/v4/d/w;->s:Lcom/punchbox/util/d;

    invoke-virtual {p1}, Lcom/punchbox/exception/PBException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/punchbox/util/d;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(I)V
    .locals 6

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->s:Lcom/punchbox/util/d;

    invoke-virtual {p0}, Lcom/punchbox/v4/d/w;->d()I

    move-result v1

    const/16 v2, 0x28

    const/4 v3, 0x2

    const-string v5, "DisplayList"

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/punchbox/util/d;->a(IIIILjava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->u:Landroid/os/Handler;

    const/16 v1, 0x2715

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/punchbox/v4/d/w;->e:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/punchbox/v4/d/w;->j:J

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->n:Lcom/punchbox/engine/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->n:Lcom/punchbox/engine/ad;

    invoke-virtual {v0}, Lcom/punchbox/engine/ad;->c()V

    :cond_0
    return-void
.end method

.method private m()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/punchbox/v4/d/w;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/punchbox/v4/d/w;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/punchbox/v4/d/w;->v:Ljava/lang/String;

    const-string v2, "no predown ads."

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/punchbox/v4/d/w;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v2, Lcom/punchbox/v4/d/w;->z:I

    rem-int v0, v2, v0

    sget v2, Lcom/punchbox/v4/d/w;->z:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/punchbox/v4/d/w;->z:I

    sget-object v2, Lcom/punchbox/v4/d/w;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/punchbox/engine/PreDownloadData;

    invoke-virtual {v0}, Lcom/punchbox/engine/PreDownloadData;->a()I

    move-result v2

    invoke-virtual {p0}, Lcom/punchbox/v4/d/w;->d()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/punchbox/v4/d/a;

    iget-object v2, p0, Lcom/punchbox/v4/d/w;->b:Landroid/app/Activity;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/punchbox/v4/d/w;->u:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v4}, Lcom/punchbox/v4/d/a;-><init>(Landroid/app/Activity;ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    invoke-direct {p0}, Lcom/punchbox/v4/d/w;->n()V

    iget-object v1, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    invoke-virtual {v1, v0}, Lcom/punchbox/v4/d/a;->setPreDownloadAd(Lcom/punchbox/engine/PreDownloadData;)V

    iget-object v1, p0, Lcom/punchbox/v4/d/w;->s:Lcom/punchbox/util/d;

    invoke-virtual {p0}, Lcom/punchbox/v4/d/w;->d()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v0}, Lcom/punchbox/engine/PreDownloadData;->c()Ljava/lang/String;

    move-result-object v0

    const-string v4, "DisplayList"

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/punchbox/util/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private n()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/punchbox/v4/d/w;->B:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    iget v1, p0, Lcom/punchbox/v4/d/w;->B:I

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/d/a;->setDisplayTime(I)V

    :cond_0
    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/punchbox/v4/d/w;->A:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    iget v1, p0, Lcom/punchbox/v4/d/w;->A:I

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/d/a;->setCloseMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    iget-object v1, p0, Lcom/punchbox/v4/d/w;->h:Lcom/punchbox/ads/AdRequest;

    invoke-virtual {v1}, Lcom/punchbox/ads/AdRequest;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/d/a;->setOrientation(I)V

    return-void
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->s:Lcom/punchbox/util/d;

    invoke-virtual {p0}, Lcom/punchbox/v4/d/w;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/punchbox/util/d;->a(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    invoke-virtual {v0, p1}, Lcom/punchbox/v4/d/a;->setCloseMode(I)V

    :cond_0
    iput p1, p0, Lcom/punchbox/v4/d/w;->A:I

    return-void
.end method

.method public a(Landroid/app/Activity;DLjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/punchbox/exception/PBException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, p2, v0

    if-lez v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/punchbox/exception/PBException;

    const/16 v1, 0x7d7

    const-string/jumbo v2, "scale is out of bound ,must between 0.5 ~ 1.0"

    invoke-direct {v0, v1, v2}, Lcom/punchbox/exception/PBException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/punchbox/v4/d/w;->b:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/punchbox/v4/d/w;->e()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/punchbox/v4/d/w;->d:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/punchbox/v4/d/w;->o()V

    new-instance v0, Lcom/punchbox/exception/PBException;

    const/16 v1, 0x7d6

    const-string v2, "Ad is not ready"

    invoke-direct {v0, v1, v2}, Lcom/punchbox/exception/PBException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/punchbox/v4/d/w;->x:Lcom/punchbox/exception/PBException;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->x:Lcom/punchbox/exception/PBException;

    invoke-direct {p0, v0}, Lcom/punchbox/v4/d/w;->b(Lcom/punchbox/exception/PBException;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->h:Lcom/punchbox/ads/AdRequest;

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/d/w;->a(Lcom/punchbox/ads/AdRequest;)V

    iget-object v2, p0, Lcom/punchbox/v4/d/w;->x:Lcom/punchbox/exception/PBException;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/punchbox/v4/d/w;->a(Lcom/punchbox/exception/PBException;Landroid/app/Activity;DLjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/punchbox/v4/d/w;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/punchbox/util/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/punchbox/v4/d/w;->e:Z

    new-instance v0, Lcom/punchbox/exception/PBException;

    const/16 v1, 0x7d0

    const-string v2, "no network connected"

    invoke-direct {v0, v1, v2}, Lcom/punchbox/exception/PBException;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/punchbox/v4/d/w;->x:Lcom/punchbox/exception/PBException;

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->x:Lcom/punchbox/exception/PBException;

    invoke-direct {p0, v0}, Lcom/punchbox/v4/d/w;->c(Lcom/punchbox/exception/PBException;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/punchbox/v4/d/w;->e()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/punchbox/v4/d/w;->d:Z

    if-nez v0, :cond_6

    new-instance v0, Lcom/punchbox/exception/PBException;

    const/16 v1, 0x7d5

    const-string v2, "ad is close or not loadAd"

    invoke-direct {v0, v1, v2}, Lcom/punchbox/exception/PBException;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/punchbox/v4/d/w;->u:Landroid/os/Handler;

    const/16 v2, 0x2717

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    iget-object v1, p0, Lcom/punchbox/v4/d/w;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2, p3}, Lcom/punchbox/v4/d/a;->a(Landroid/app/Activity;D)V

    invoke-direct {p0, p4}, Lcom/punchbox/v4/d/w;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->s:Lcom/punchbox/util/d;

    invoke-virtual {p0}, Lcom/punchbox/v4/d/w;->d()I

    move-result v1

    iget-object v2, p0, Lcom/punchbox/v4/d/w;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p4}, Lcom/punchbox/util/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 4

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/punchbox/v4/d/w;->b:Landroid/app/Activity;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/punchbox/v4/d/w;->e:Z

    new-instance v0, Lcom/punchbox/v4/d/a;

    iget-object v1, p0, Lcom/punchbox/v4/d/w;->b:Landroid/app/Activity;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/punchbox/v4/d/w;->u:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/punchbox/v4/d/a;-><init>(Landroid/app/Activity;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    invoke-direct {p0}, Lcom/punchbox/v4/d/w;->n()V

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    invoke-virtual {v0, p2}, Lcom/punchbox/v4/d/a;->a(I)V

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    iget-object v1, p0, Lcom/punchbox/v4/d/w;->b:Landroid/app/Activity;

    const-wide v2, 0x3fecccccc0000000L    # 0.8999999761581421

    invoke-virtual {v0, v1, v2, v3}, Lcom/punchbox/v4/d/a;->a(Landroid/app/Activity;D)V

    invoke-direct {p0, p2}, Lcom/punchbox/v4/d/w;->d(I)V

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/punchbox/exception/PBException;
        }
    .end annotation

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/punchbox/v4/d/w;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/punchbox/v4/d/w;->d:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/punchbox/v4/d/w;->o()V

    new-instance v0, Lcom/punchbox/exception/PBException;

    const/16 v1, 0x7d6

    const-string v2, "Ad is not ready"

    invoke-direct {v0, v1, v2}, Lcom/punchbox/exception/PBException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/punchbox/v4/d/w;->x:Lcom/punchbox/exception/PBException;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->x:Lcom/punchbox/exception/PBException;

    invoke-direct {p0, v0}, Lcom/punchbox/v4/d/w;->b(Lcom/punchbox/exception/PBException;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->h:Lcom/punchbox/ads/AdRequest;

    invoke-virtual {p0, v0}, Lcom/punchbox/v4/d/w;->a(Lcom/punchbox/ads/AdRequest;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->x:Lcom/punchbox/exception/PBException;

    invoke-direct {p0, v0, p1, p2}, Lcom/punchbox/v4/d/w;->a(Lcom/punchbox/exception/PBException;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/punchbox/v4/d/w;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/punchbox/util/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/punchbox/v4/d/w;->e:Z

    new-instance v0, Lcom/punchbox/exception/PBException;

    const/16 v1, 0x7d0

    const-string v2, "no network connected"

    invoke-direct {v0, v1, v2}, Lcom/punchbox/exception/PBException;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/punchbox/v4/d/w;->x:Lcom/punchbox/exception/PBException;

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->x:Lcom/punchbox/exception/PBException;

    invoke-direct {p0, v0}, Lcom/punchbox/v4/d/w;->c(Lcom/punchbox/exception/PBException;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/punchbox/v4/d/w;->e()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/punchbox/v4/d/w;->d:Z

    if-nez v0, :cond_4

    new-instance v0, Lcom/punchbox/exception/PBException;

    const/16 v1, 0x7d5

    const-string v2, "ad is close or not loadAd"

    invoke-direct {v0, v1, v2}, Lcom/punchbox/exception/PBException;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/punchbox/v4/d/w;->u:Landroid/os/Handler;

    const/16 v2, 0x2717

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    invoke-virtual {v0, p1}, Lcom/punchbox/v4/d/a;->a(Landroid/view/ViewGroup;)V

    invoke-direct {p0, p2}, Lcom/punchbox/v4/d/w;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->s:Lcom/punchbox/util/d;

    invoke-virtual {p0}, Lcom/punchbox/v4/d/w;->d()I

    move-result v1

    iget-object v2, p0, Lcom/punchbox/v4/d/w;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/punchbox/util/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/punchbox/exception/PBException;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/punchbox/v4/d/w;->e:Z

    invoke-virtual {p1}, Lcom/punchbox/exception/PBException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->s:Lcom/punchbox/util/d;

    invoke-virtual {p0}, Lcom/punchbox/v4/d/w;->d()I

    move-result v1

    invoke-virtual {p1}, Lcom/punchbox/exception/PBException;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/punchbox/exception/PBException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/punchbox/util/d;->a(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/punchbox/response/b;)V
    .locals 4

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    :cond_1
    new-instance v0, Lcom/punchbox/v4/d/a;

    iget-object v1, p0, Lcom/punchbox/v4/d/w;->b:Landroid/app/Activity;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/punchbox/v4/d/w;->u:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/punchbox/v4/d/a;-><init>(Landroid/app/Activity;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    invoke-direct {p0}, Lcom/punchbox/v4/d/w;->n()V

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    invoke-virtual {v0, p1}, Lcom/punchbox/v4/d/a;->a(Lcom/punchbox/response/b;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/punchbox/v4/d/w;->w:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/punchbox/v4/d/w;->e:Z

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/d/a;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/punchbox/v4/d/w;->s:Lcom/punchbox/util/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/punchbox/v4/d/w;->i:J

    sub-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/punchbox/v4/d/w;->d()I

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/punchbox/util/d;->a(Ljava/lang/String;JI)V

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->u:Landroid/os/Handler;

    const/16 v1, 0x2714

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    invoke-virtual {v0, p1}, Lcom/punchbox/v4/d/a;->setDisplayTime(I)V

    :cond_0
    iput p1, p0, Lcom/punchbox/v4/d/w;->B:I

    return-void
.end method

.method public b(Landroid/app/Activity;DLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/punchbox/v4/d/w;->e:Z

    invoke-direct {p0}, Lcom/punchbox/v4/d/w;->m()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/punchbox/v4/d/a;->a(Landroid/app/Activity;D)V

    invoke-direct {p0, p4}, Lcom/punchbox/v4/d/w;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/punchbox/v4/d/w;->e:Z

    invoke-direct {p0}, Lcom/punchbox/v4/d/w;->m()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    invoke-virtual {v0, p1}, Lcom/punchbox/v4/d/a;->a(Landroid/view/ViewGroup;)V

    invoke-direct {p0, p2}, Lcom/punchbox/v4/d/w;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/punchbox/v4/d/w;->x:Lcom/punchbox/exception/PBException;

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    invoke-virtual {v0, p1}, Lcom/punchbox/v4/d/a;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method protected d()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    invoke-virtual {v0}, Lcom/punchbox/v4/d/a;->a()V

    :cond_0
    iget-boolean v0, p0, Lcom/punchbox/v4/d/w;->y:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->h:Lcom/punchbox/ads/AdRequest;

    invoke-super {p0, v0}, Lcom/punchbox/v4/d/i;->a(Lcom/punchbox/ads/AdRequest;)V

    :cond_1
    iget-object v0, p0, Lcom/punchbox/v4/d/w;->u:Landroid/os/Handler;

    const/16 v1, 0x2716

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public g()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    invoke-virtual {v0}, Lcom/punchbox/v4/d/a;->b()V

    iput-object v2, p0, Lcom/punchbox/v4/d/w;->t:Lcom/punchbox/v4/d/a;

    :cond_0
    iput-object v2, p0, Lcom/punchbox/v4/d/w;->x:Lcom/punchbox/exception/PBException;

    iput-boolean v1, p0, Lcom/punchbox/v4/d/w;->e:Z

    iput-boolean v1, p0, Lcom/punchbox/v4/d/w;->d:Z

    invoke-super {p0}, Lcom/punchbox/v4/d/i;->g()V

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/punchbox/v4/d/w;->y:Z

    return-void
.end method
