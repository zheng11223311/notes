.class public Lcom/alipay/android/mini/uielement/w;
.super Lcom/alipay/android/mini/uielement/c;
.source "SourceFile"


# instance fields
.field private e:Landroid/view/View;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/c;-><init>()V

    .line 33
    return-void
.end method

.method private I()V
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/w;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/w;->k()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/w;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/w;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/w;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 86
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/w;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 87
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/w;->v()Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v2, "local"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_3
    :goto_1
    new-instance v2, Lcom/alipay/android/mini/uielement/y;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/mini/uielement/y;-><init>(Lcom/alipay/android/mini/uielement/w;Landroid/widget/ImageView;)V

    invoke-static {v1, v2}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;Lk/a;)V

    goto :goto_0

    .line 92
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/w;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 124
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/w;->k()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/w;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/w;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/w;->I()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 57
    iput-object p2, p0, Lcom/alipay/android/mini/uielement/w;->e:Landroid/view/View;

    .line 58
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/w;->I()V

    .line 60
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/w;->p()Lcom/alipay/android/mini/uielement/f;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/w;->c:Lcom/alipay/android/mini/uielement/f;

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    new-instance v0, Lcom/alipay/android/mini/uielement/x;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/uielement/x;-><init>(Lcom/alipay/android/mini/uielement/w;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_1
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/w;->e:Landroid/view/View;

    .line 47
    invoke-static {v0}, Lcom/alipay/android/mini/uielement/g;->a(Landroid/view/View;)V

    .line 48
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/w;->x()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/alipay/android/mini/uielement/c;->i()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/w;->e:Landroid/view/View;

    .line 139
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/w;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const-string v0, "mini_ui_image"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    .line 40
    :goto_0
    return v0

    :cond_0
    const-string v0, "mini_ui_icon"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
