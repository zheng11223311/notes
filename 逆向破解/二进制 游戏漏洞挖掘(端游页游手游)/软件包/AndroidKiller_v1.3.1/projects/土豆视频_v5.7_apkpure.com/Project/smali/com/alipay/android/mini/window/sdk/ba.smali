.class public Lcom/alipay/android/mini/window/sdk/ba;
.super Lcom/alipay/android/mini/window/sdk/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/mini/window/sdk/ba$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/util/List;

.field private z:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lb/e;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alipay/android/mini/window/sdk/a;-><init>(Lb/e;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/ba;->B:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/ba;->h:Landroid/app/Activity;

    .line 77
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ba;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ba;->f:Lb/e;

    invoke-interface {v0}, Lb/e;->o()Lo/c;

    move-result-object v0

    .line 82
    instance-of v3, v0, Lq/c;

    if-eqz v3, :cond_1

    .line 83
    check-cast v0, Lq/c;

    invoke-virtual {v0}, Lq/c;->b()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 84
    :goto_1
    if-eqz v0, :cond_1

    .line 85
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/alipay/android/mini/util/n;->a(Landroid/app/Activity;I)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ba;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 90
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ba;->B:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/alipay/android/mini/window/sdk/ba$a;

    .line 91
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ba;->g:Lcom/alipay/android/mini/window/sdk/j;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ba;->z:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/ba;->A:Ljava/lang/String;

    iget-object v3, v4, Lcom/alipay/android/mini/window/sdk/ba$a;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/alipay/android/mini/window/sdk/ba$a;->b:[Lr/a;

    const-string v5, ""

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/mini/window/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lr/a;Ljava/lang/String;[Lr/a;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 83
    goto :goto_1

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ba;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 94
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ba;->B:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/alipay/android/mini/window/sdk/ba$a;

    .line 95
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ba;->B:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alipay/android/mini/window/sdk/ba$a;

    .line 96
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ba;->g:Lcom/alipay/android/mini/window/sdk/j;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ba;->z:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/ba;->A:Ljava/lang/String;

    iget-object v3, v4, Lcom/alipay/android/mini/window/sdk/ba$a;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/alipay/android/mini/window/sdk/ba$a;->b:[Lr/a;

    iget-object v5, v6, Lcom/alipay/android/mini/window/sdk/ba$a;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/alipay/android/mini/window/sdk/ba$a;->b:[Lr/a;

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/mini/window/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lr/a;Ljava/lang/String;[Lr/a;)V

    goto :goto_0

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ba;->g:Lcom/alipay/android/mini/window/sdk/j;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ba;->z:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/ba;->A:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/ba;->B:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/android/mini/window/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/alipay/android/mini/window/sdk/a;->a(Lorg/json/JSONObject;)V

    .line 36
    const-string v0, "form"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_5

    .line 38
    const-string v2, "onload"

    invoke-static {v0, v2}, Lcom/alipay/android/mini/uielement/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/f;

    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    invoke-static {v2}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v2

    invoke-virtual {p0, p0, v2}, Lcom/alipay/android/mini/window/sdk/ba;->a(Ljava/lang/Object;[Lr/a;)Z

    .line 42
    :cond_0
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/mini/window/sdk/ba;->z:Ljava/lang/String;

    .line 43
    const-string v2, "content"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/mini/window/sdk/ba;->A:Ljava/lang/String;

    .line 44
    const-string v2, "button"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 45
    if-eqz v2, :cond_5

    .line 46
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/ba;->B:Ljava/util/List;

    move v0, v1

    .line 48
    :goto_0
    if-ge v0, v3, :cond_5

    .line 49
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 50
    new-instance v5, Lcom/alipay/android/mini/window/sdk/ba$a;

    invoke-direct {v5, p0}, Lcom/alipay/android/mini/window/sdk/ba$a;-><init>(Lcom/alipay/android/mini/window/sdk/ba;)V

    .line 51
    const-string/jumbo v6, "text"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 52
    const-string/jumbo v6, "text"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/android/mini/window/sdk/ba$a;->a:Ljava/lang/String;

    .line 53
    const-string v6, "action"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 54
    const-string v6, "action"

    invoke-static {v4, v6}, Lcom/alipay/android/mini/uielement/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/f;

    move-result-object v6

    invoke-static {v6}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/android/mini/window/sdk/ba$a;->b:[Lr/a;

    .line 56
    :cond_1
    const-string v6, "content"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    const-string v6, "confirm"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 58
    iget-object v4, p0, Lcom/alipay/android/mini/window/sdk/ba;->B:Ljava/util/List;

    invoke-interface {v4, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 48
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_3
    const-string v6, "cancel"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 60
    iget-object v4, p0, Lcom/alipay/android/mini/window/sdk/ba;->B:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    :cond_4
    iget-object v4, p0, Lcom/alipay/android/mini/window/sdk/ba;->B:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_5
    return-void
.end method

.method protected a(Lr/a;)Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method protected q()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method protected r()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method
