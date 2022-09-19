.class Lcom/punchbox/v4/a/k;
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
    .locals 18

    new-instance v1, Lcom/punchbox/v4/a/o;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/punchbox/v4/a/e;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/punchbox/v4/a/e;->r:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/punchbox/v4/a/e;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/punchbox/v4/a/e;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/punchbox/v4/a/e;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/punchbox/v4/a/e;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/punchbox/v4/a/e;->i:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/punchbox/v4/a/e;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/punchbox/v4/a/e;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/punchbox/v4/a/e;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/punchbox/v4/a/e;->n:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/punchbox/v4/a/e;->o:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/punchbox/v4/a/e;->p:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/punchbox/v4/a/e;->k:Z

    move-object/from16 v0, p1

    iget v0, v0, Lcom/punchbox/v4/a/e;->j:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/punchbox/v4/a/e;->m:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lcom/punchbox/v4/a/o;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/punchbox/v4/a/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/punchbox/v4/a/b;

    iget v4, v2, Lcom/punchbox/v4/a/b;->a:I

    iget-object v5, v2, Lcom/punchbox/v4/a/b;->b:Ljava/lang/CharSequence;

    iget-object v2, v2, Lcom/punchbox/v4/a/b;->c:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v5, v2}, Lcom/punchbox/v4/a/o;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/punchbox/v4/a/e;->l:Lcom/punchbox/v4/a/l;

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/punchbox/v4/a/e;->l:Lcom/punchbox/v4/a/l;

    instance-of v2, v2, Lcom/punchbox/v4/a/d;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/punchbox/v4/a/e;->l:Lcom/punchbox/v4/a/l;

    check-cast v2, Lcom/punchbox/v4/a/d;

    iget-object v3, v2, Lcom/punchbox/v4/a/d;->d:Ljava/lang/CharSequence;

    iget-boolean v4, v2, Lcom/punchbox/v4/a/d;->f:Z

    iget-object v5, v2, Lcom/punchbox/v4/a/d;->e:Ljava/lang/CharSequence;

    iget-object v2, v2, Lcom/punchbox/v4/a/d;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/punchbox/v4/a/o;->a(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/punchbox/v4/a/o;->a()Landroid/app/Notification;

    move-result-object v1

    return-object v1

    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/punchbox/v4/a/e;->l:Lcom/punchbox/v4/a/l;

    instance-of v2, v2, Lcom/punchbox/v4/a/f;

    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/punchbox/v4/a/e;->l:Lcom/punchbox/v4/a/l;

    check-cast v2, Lcom/punchbox/v4/a/f;

    iget-object v3, v2, Lcom/punchbox/v4/a/f;->d:Ljava/lang/CharSequence;

    iget-boolean v4, v2, Lcom/punchbox/v4/a/f;->f:Z

    iget-object v5, v2, Lcom/punchbox/v4/a/f;->e:Ljava/lang/CharSequence;

    iget-object v2, v2, Lcom/punchbox/v4/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/punchbox/v4/a/o;->a(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/punchbox/v4/a/e;->l:Lcom/punchbox/v4/a/l;

    instance-of v2, v2, Lcom/punchbox/v4/a/c;

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/punchbox/v4/a/e;->l:Lcom/punchbox/v4/a/l;

    move-object v7, v2

    check-cast v7, Lcom/punchbox/v4/a/c;

    iget-object v2, v7, Lcom/punchbox/v4/a/c;->d:Ljava/lang/CharSequence;

    iget-boolean v3, v7, Lcom/punchbox/v4/a/c;->f:Z

    iget-object v4, v7, Lcom/punchbox/v4/a/c;->e:Ljava/lang/CharSequence;

    iget-object v5, v7, Lcom/punchbox/v4/a/c;->a:Landroid/graphics/Bitmap;

    iget-object v6, v7, Lcom/punchbox/v4/a/c;->b:Landroid/graphics/Bitmap;

    iget-boolean v7, v7, Lcom/punchbox/v4/a/c;->c:Z

    invoke-virtual/range {v1 .. v7}, Lcom/punchbox/v4/a/o;->a(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_1
.end method
