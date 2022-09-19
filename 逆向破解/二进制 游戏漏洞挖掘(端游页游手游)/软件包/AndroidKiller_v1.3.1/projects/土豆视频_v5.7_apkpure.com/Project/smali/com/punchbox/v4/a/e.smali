.class public Lcom/punchbox/v4/a/e;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field g:Landroid/graphics/Bitmap;

.field h:Ljava/lang/CharSequence;

.field i:I

.field j:I

.field k:Z

.field l:Lcom/punchbox/v4/a/l;

.field m:Ljava/lang/CharSequence;

.field n:I

.field o:I

.field p:Z

.field q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/punchbox/v4/a/b;",
            ">;"
        }
    .end annotation
.end field

.field r:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/punchbox/v4/a/e;->q:Ljava/util/ArrayList;

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/punchbox/v4/a/e;->r:Landroid/app/Notification;

    iput-object p1, p0, Lcom/punchbox/v4/a/e;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/punchbox/v4/a/e;->r:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Lcom/punchbox/v4/a/e;->r:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/punchbox/v4/a/e;->j:I

    return-void
.end method

.method private a(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/a/e;->r:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/punchbox/v4/a/e;->r:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 1

    invoke-static {}, Lcom/punchbox/v4/a/a;->a()Lcom/punchbox/v4/a/g;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/punchbox/v4/a/g;->a(Lcom/punchbox/v4/a/e;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/punchbox/v4/a/e;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/a/e;->r:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public a(IIZ)Lcom/punchbox/v4/a/e;
    .locals 0

    iput p1, p0, Lcom/punchbox/v4/a/e;->n:I

    iput p2, p0, Lcom/punchbox/v4/a/e;->o:I

    iput-boolean p3, p0, Lcom/punchbox/v4/a/e;->p:Z

    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Lcom/punchbox/v4/a/e;
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/a/e;->d:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/punchbox/v4/a/e;
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/a/e;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Z)Lcom/punchbox/v4/a/e;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/punchbox/v4/a/e;->a(IZ)V

    return-object p0
.end method

.method public b(Landroid/app/PendingIntent;)Lcom/punchbox/v4/a/e;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/a/e;->r:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/punchbox/v4/a/e;
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/a/e;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Lcom/punchbox/v4/a/e;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/a/e;->r:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method
