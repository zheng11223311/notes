.class public Lcom/alipay/android/mini/window/sdk/bb;
.super Lcom/alipay/android/mini/window/sdk/a;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;

.field private z:Lb/e;


# direct methods
.method protected constructor <init>(Lb/e;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/alipay/android/mini/window/sdk/a;-><init>(Lb/e;)V

    .line 22
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/bb;->z:Lb/e;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bb;->A:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/mini/widget/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 29
    const-string v0, "form"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 30
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/bb;->A:Ljava/lang/String;

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    :try_start_0
    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 37
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/bb;->A:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ld/b;)Z
    .locals 1

    .prologue
    .line 16
    check-cast p2, Lr/c;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/window/sdk/bb;->a(Ljava/lang/Object;Lr/c;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Lr/c;)Z
    .locals 2

    .prologue
    .line 53
    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p2}, Lr/c;->b()Lr/a;

    move-result-object v0

    .line 55
    sget-object v1, Lr/a;->d:Lr/a;

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bb;->z:Lb/e;

    invoke-interface {v0}, Lb/e;->c()Lb/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/g;->l()Z

    .line 59
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lr/a;)Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method protected b(Lr/a;)Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Lcom/alipay/android/mini/window/sdk/a;->i()V

    .line 94
    return-void
.end method

.method protected q()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method protected r()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method
