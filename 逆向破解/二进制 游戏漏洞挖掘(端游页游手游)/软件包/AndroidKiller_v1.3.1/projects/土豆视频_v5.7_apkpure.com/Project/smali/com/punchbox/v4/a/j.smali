.class Lcom/punchbox/v4/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/punchbox/v4/a/g;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/punchbox/v4/a/e;)Landroid/app/Notification;
    .locals 13

    iget-object v0, p1, Lcom/punchbox/v4/a/e;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/punchbox/v4/a/e;->r:Landroid/app/Notification;

    iget-object v2, p1, Lcom/punchbox/v4/a/e;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/punchbox/v4/a/e;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcom/punchbox/v4/a/e;->h:Ljava/lang/CharSequence;

    iget-object v5, p1, Lcom/punchbox/v4/a/e;->f:Landroid/widget/RemoteViews;

    iget v6, p1, Lcom/punchbox/v4/a/e;->i:I

    iget-object v7, p1, Lcom/punchbox/v4/a/e;->d:Landroid/app/PendingIntent;

    iget-object v8, p1, Lcom/punchbox/v4/a/e;->e:Landroid/app/PendingIntent;

    iget-object v9, p1, Lcom/punchbox/v4/a/e;->g:Landroid/graphics/Bitmap;

    iget v10, p1, Lcom/punchbox/v4/a/e;->n:I

    iget v11, p1, Lcom/punchbox/v4/a/e;->o:I

    iget-boolean v12, p1, Lcom/punchbox/v4/a/e;->p:Z

    invoke-static/range {v0 .. v12}, Lcom/punchbox/v4/a/n;->a(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
