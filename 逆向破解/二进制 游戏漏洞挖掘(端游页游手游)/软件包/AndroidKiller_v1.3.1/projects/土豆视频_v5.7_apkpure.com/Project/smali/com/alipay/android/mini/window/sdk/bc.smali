.class public Lcom/alipay/android/mini/window/sdk/bc;
.super Lcom/alipay/android/mini/window/sdk/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/mini/window/sdk/bc$1;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Z

.field private z:I


# direct methods
.method protected constructor <init>(Lb/e;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/alipay/android/mini/window/sdk/a;-><init>(Lb/e;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/bc;->C:Z

    .line 39
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
    .line 102
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/bc;->h:Landroid/app/Activity;

    .line 104
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/bc;->o()Lcom/alipay/android/mini/uielement/f;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-static {v0}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lcom/alipay/android/mini/window/sdk/bc;->a(Ljava/lang/Object;[Lr/a;)Z

    .line 109
    :cond_0
    const-string v0, "hidden"

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/bc;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/bc;->C:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bc;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget v0, p0, Lcom/alipay/android/mini/window/sdk/bc;->z:I

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bc;->A:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/mini/widget/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 114
    :cond_2
    iget v0, p0, Lcom/alipay/android/mini/window/sdk/bc;->z:I

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/bc;->A:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/alipay/android/mini/widget/b;->a(Landroid/app/Activity;ILjava/lang/String;)V

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
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/alipay/android/mini/window/sdk/a;->a(Lorg/json/JSONObject;)V

    .line 52
    const-string v1, "form"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 53
    const-string/jumbo v2, "visibility"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/mini/window/sdk/bc;->B:Ljava/lang/String;

    .line 54
    const-string v2, "ajax"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/android/mini/window/sdk/bc;->C:Z

    .line 55
    const-string v2, "blocks"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    const-string v2, "blocks"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 62
    if-eqz v2, :cond_2

    .line 63
    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    const-string v4, "component"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    const-string/jumbo v1, "value"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move-object v2, v1

    .line 74
    :goto_0
    if-eqz v2, :cond_2

    .line 75
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-le v1, v6, :cond_4

    .line 76
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 77
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 81
    :goto_1
    if-eqz v2, :cond_0

    .line 82
    const-string/jumbo v3, "text"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/mini/window/sdk/bc;->A:Ljava/lang/String;

    .line 85
    :cond_0
    if-eqz v1, :cond_1

    .line 86
    const-string v0, "image"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    invoke-static {v0}, Lcom/alipay/android/mini/util/n;->h(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/window/sdk/bc;->z:I

    .line 97
    :cond_2
    return-void

    :cond_3
    move-object v2, v1

    .line 72
    goto :goto_0

    .line 79
    :cond_4
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ld/b;)Z
    .locals 1

    .prologue
    .line 27
    check-cast p2, Lr/c;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/window/sdk/bc;->a(Ljava/lang/Object;Lr/c;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Lr/c;)Z
    .locals 3

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    if-eqz p2, :cond_0

    .line 133
    invoke-virtual {p2}, Lr/c;->b()Lr/a;

    move-result-object v1

    .line 134
    sget-object v2, Lcom/alipay/android/mini/window/sdk/bc$1;->a:[I

    invoke-virtual {v1}, Lr/a;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 143
    invoke-super {p0, p1, p2}, Lcom/alipay/android/mini/window/sdk/a;->a(Ljava/lang/Object;Lr/c;)Z

    move-result v0

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 136
    :pswitch_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/bc;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/bc;->f:Lb/e;

    invoke-interface {v1}, Lb/e;->c()Lb/g;

    move-result-object v1

    invoke-virtual {v1}, Lb/g;->l()Z

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bc;->f:Lb/e;

    invoke-interface {v0}, Lb/e;->c()Lb/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/g;->i()Z

    move-result v0

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lr/a;)Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Lcom/alipay/android/mini/window/sdk/a;->i()V

    .line 158
    return-void
.end method

.method protected q()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public r()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/bc;->C:Z

    if-eqz v0, :cond_0

    const-string v0, "hidden"

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/bc;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bc;->A:Ljava/lang/String;

    return-object v0
.end method
