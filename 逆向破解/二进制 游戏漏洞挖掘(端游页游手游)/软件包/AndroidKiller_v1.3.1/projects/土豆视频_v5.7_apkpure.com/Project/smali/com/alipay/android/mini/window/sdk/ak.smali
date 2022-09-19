.class public Lcom/alipay/android/mini/window/sdk/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/Map;

.field b:Lr/h;

.field private c:Ljava/util/List;

.field private d:Lcom/alipay/android/mini/uielement/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/ak;->c:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/ak;->a:Ljava/util/Map;

    .line 40
    return-void
.end method

.method private a(Lcom/alipay/android/mini/uielement/i;Lorg/json/JSONArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v1, v2

    .line 124
    :goto_0
    if-ge v1, v3, :cond_1

    .line 125
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 126
    invoke-static {v4}, Lcom/alipay/android/mini/window/sdk/ak;->b(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {v4}, Lcom/alipay/android/mini/uielement/g;->a(Lorg/json/JSONObject;)Lcom/alipay/android/mini/uielement/j;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/i;

    .line 128
    invoke-virtual {v0, v4}, Lcom/alipay/android/mini/uielement/i;->a(Lorg/json/JSONObject;)V

    .line 129
    invoke-direct {p0, v0, v4}, Lcom/alipay/android/mini/window/sdk/ak;->a(Lcom/alipay/android/mini/uielement/i;Lorg/json/JSONObject;)V

    .line 130
    invoke-virtual {p1, v0}, Lcom/alipay/android/mini/uielement/i;->a(Lcom/alipay/android/mini/uielement/j;)V

    .line 124
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 132
    :cond_0
    invoke-direct {p0, p1, v4, v2}, Lcom/alipay/android/mini/window/sdk/ak;->a(Lcom/alipay/android/mini/uielement/i;Lorg/json/JSONObject;I)V

    goto :goto_1

    .line 135
    :cond_1
    return-void
.end method

.method private a(Lcom/alipay/android/mini/uielement/i;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 89
    const-string/jumbo v0, "value"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 90
    if-nez v2, :cond_1

    .line 112
    :cond_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 94
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 95
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 96
    invoke-static {v4}, Lcom/alipay/android/mini/window/sdk/ak;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-static {v4}, Lcom/alipay/android/mini/uielement/g;->a(Lorg/json/JSONObject;)Lcom/alipay/android/mini/uielement/j;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/i;

    .line 98
    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 99
    invoke-virtual {v0, v4}, Lcom/alipay/android/mini/uielement/i;->a(Lorg/json/JSONObject;)V

    .line 100
    iget-object v4, p0, Lcom/alipay/android/mini/window/sdk/ak;->b:Lr/h;

    invoke-virtual {v0, v4}, Lcom/alipay/android/mini/uielement/i;->a(Lr/h;)V

    .line 101
    invoke-direct {p0, v0, v5}, Lcom/alipay/android/mini/window/sdk/ak;->a(Lcom/alipay/android/mini/uielement/i;Lorg/json/JSONArray;)V

    .line 102
    invoke-virtual {p1, v0}, Lcom/alipay/android/mini/uielement/i;->a(Lcom/alipay/android/mini/uielement/j;)V

    .line 103
    iget-object v4, p0, Lcom/alipay/android/mini/window/sdk/ak;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/i;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 106
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v4, v0}, Lcom/alipay/android/mini/window/sdk/ak;->a(Lcom/alipay/android/mini/uielement/i;Lorg/json/JSONObject;I)V

    goto :goto_1
.end method

.method private a(Lcom/alipay/android/mini/uielement/i;Lorg/json/JSONObject;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 146
    const-string/jumbo v0, "type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/alipay/android/mini/uielement/h;->a(Ljava/lang/String;)Lcom/alipay/android/mini/uielement/h;

    move-result-object v1

    .line 148
    if-nez v1, :cond_0

    .line 149
    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no such control type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_0
    invoke-static {v1}, Lcom/alipay/android/mini/uielement/g;->a(Lcom/alipay/android/mini/uielement/h;)Lcom/alipay/android/mini/uielement/j;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/c;

    .line 153
    if-eqz v0, :cond_4

    .line 154
    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/uielement/c;->a(Lcom/alipay/android/mini/uielement/i;)V

    .line 157
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 158
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/uielement/c;->a(I)V

    .line 160
    :cond_1
    invoke-virtual {v0, p2}, Lcom/alipay/android/mini/uielement/c;->a(Lorg/json/JSONObject;)V

    .line 161
    invoke-virtual {p1, v0}, Lcom/alipay/android/mini/uielement/i;->a(Lcom/alipay/android/mini/uielement/j;)V

    .line 162
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/ak;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/ak;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/ak;->d:Lcom/alipay/android/mini/uielement/c;

    if-nez v2, :cond_3

    sget-object v2, Lcom/alipay/android/mini/uielement/h;->c:Lcom/alipay/android/mini/uielement/h;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/alipay/android/mini/uielement/h;->e:Lcom/alipay/android/mini/uielement/h;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/alipay/android/mini/uielement/h;->f:Lcom/alipay/android/mini/uielement/h;

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/c;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/ak;->d:Lcom/alipay/android/mini/uielement/c;

    .line 170
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ak;->b:Lr/h;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/uielement/c;->a(Lr/h;)V

    .line 175
    return-void

    .line 172
    :cond_4
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-class v1, Lcom/alipay/android/mini/window/sdk/ak;

    const-string v2, "element type is null,resp data error"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lorg/json/JSONObject;)Z
    .locals 2

    .prologue
    .line 185
    const-string v0, "component"

    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;)Z
    .locals 2

    .prologue
    .line 192
    const-string v0, "block"

    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ak;->c:Ljava/util/List;

    return-object v0
.end method

.method public a(Lr/h;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 59
    if-nez p2, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/ak;->b:Lr/h;

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 66
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 67
    invoke-static {v3}, Lcom/alipay/android/mini/uielement/g;->a(Lorg/json/JSONObject;)Lcom/alipay/android/mini/uielement/j;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/i;

    .line 71
    invoke-virtual {v0, v3}, Lcom/alipay/android/mini/uielement/i;->a(Lorg/json/JSONObject;)V

    .line 72
    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/uielement/i;->a(Lr/h;)V

    .line 73
    invoke-direct {p0, v0, v3}, Lcom/alipay/android/mini/window/sdk/ak;->a(Lcom/alipay/android/mini/uielement/i;Lorg/json/JSONObject;)V

    .line 74
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/ak;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 77
    goto :goto_0
.end method

.method public b()Lcom/alipay/android/mini/uielement/c;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ak;->d:Lcom/alipay/android/mini/uielement/c;

    return-object v0
.end method
