.class public Lq/c;
.super Lo/c;
.source "SourceFile"


# instance fields
.field private m:I

.field private n:Z


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lo/c;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/c;->n:Z

    .line 31
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-super {p0, p1}, Lo/c;->a(Lorg/json/JSONObject;)V

    .line 70
    const-string v1, "form"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 71
    const-string v1, "form"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 72
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    const-string v3, "oneTime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 75
    invoke-virtual {p0, v3}, Lq/c;->b(Z)V

    .line 76
    const-string v3, "page"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lq/c;->n:Z

    .line 79
    const/16 v0, 0x9

    iput v0, p0, Lq/c;->m:I

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string v3, "dialog"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    const/4 v1, 0x7

    iput v1, p0, Lq/c;->m:I

    .line 82
    iput-boolean v0, p0, Lq/c;->n:Z

    goto :goto_0

    .line 83
    :cond_2
    const-string/jumbo v3, "toast"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 85
    const-string v2, "onload"

    invoke-static {v1, v2}, Lcom/alipay/android/mini/uielement/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/f;

    move-result-object v1

    .line 87
    const/4 v2, 0x6

    iput v2, p0, Lq/c;->m:I

    .line 88
    if-eqz v1, :cond_0

    .line 89
    invoke-static {v1}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v1

    .line 90
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 91
    sget-object v4, Lr/a;->s:Lr/a;

    if-eq v3, v4, :cond_3

    sget-object v4, Lr/a;->D:Lr/a;

    if-ne v3, v4, :cond_4

    .line 92
    :cond_3
    const/16 v3, 0xa

    iput v3, p0, Lq/c;->m:I

    .line 90
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_5
    const-string v0, "confirm"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const-string v0, "fullscreen"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lq/c;->n:Z

    .line 101
    const/4 v0, 0x4

    iput v0, p0, Lq/c;->m:I

    goto :goto_0

    .line 104
    :cond_6
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lq/b;->a(Ljava/lang/String;)Lq/b;

    move-result-object v0

    .line 106
    sget-object v1, Lq/b;->h:Lq/b;

    if-ne v0, v1, :cond_7

    .line 107
    const/16 v0, -0xa

    iput v0, p0, Lq/c;->m:I

    goto :goto_0

    .line 109
    :cond_7
    const/16 v0, 0x8

    iput v0, p0, Lq/c;->m:I

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lq/c;->n:Z

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lq/c;->m:I

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lq/c;->m:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lq/c;->m:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
