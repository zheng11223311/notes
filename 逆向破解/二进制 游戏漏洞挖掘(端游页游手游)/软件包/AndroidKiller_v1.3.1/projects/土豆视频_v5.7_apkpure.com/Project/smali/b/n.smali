.class public final Lb/n;
.super Lo/c;
.source "SourceFile"


# instance fields
.field private m:I

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Lorg/json/JSONObject;

.field private q:Lorg/json/JSONArray;

.field private r:Ljava/util/Map;

.field private s:Ljava/util/Map;

.field private t:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONArray;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lo/c;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/n;->r:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/n;->s:Ljava/util/Map;

    .line 44
    iput-object p3, p0, Lb/n;->n:Ljava/lang/String;

    .line 45
    iput p4, p0, Lb/n;->o:I

    .line 46
    iput-object p5, p0, Lb/n;->p:Lorg/json/JSONObject;

    .line 47
    iput-object p6, p0, Lb/n;->q:Lorg/json/JSONArray;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/n;->t:Ljava/util/Map;

    .line 50
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lb/n;->n:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lb/n;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lb/n;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/n;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lb/n;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_1
    iget-object v0, p0, Lb/n;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Lo/c;->a(Lorg/json/JSONObject;)V

    .line 71
    if-eqz p1, :cond_0

    const-string/jumbo v0, "win"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/n;->b(Z)V

    .line 76
    const-string/jumbo v0, "win"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lb/n;->m:I

    goto :goto_0

    .line 79
    :cond_3
    const-string/jumbo v1, "transparent_dialog"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lb/n;->m:I

    goto :goto_0

    .line 82
    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lb/n;->m:I

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lb/n;->o:I

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/n;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lb/n;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_1
    iget-object v0, p0, Lb/n;->s:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lb/n;->p:Lorg/json/JSONObject;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lb/n;->m:I

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 92
    iget v1, p0, Lb/n;->m:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/util/Map;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lb/n;->t:Ljava/util/Map;

    return-object v0
.end method

.method public g()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lb/n;->q:Lorg/json/JSONArray;

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lb/n;->r:Ljava/util/Map;

    return-object v0
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-super {p0}, Lo/c;->i()V

    .line 140
    iget-object v0, p0, Lb/n;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 141
    iget-object v0, p0, Lb/n;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 142
    iget-object v0, p0, Lb/n;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 143
    iput-object v1, p0, Lb/n;->r:Ljava/util/Map;

    .line 144
    iput-object v1, p0, Lb/n;->t:Ljava/util/Map;

    .line 145
    iput-object v1, p0, Lb/n;->q:Lorg/json/JSONArray;

    .line 146
    iput-object v1, p0, Lb/n;->p:Lorg/json/JSONObject;

    .line 147
    iput-object v1, p0, Lb/n;->n:Ljava/lang/String;

    .line 149
    return-void
.end method
