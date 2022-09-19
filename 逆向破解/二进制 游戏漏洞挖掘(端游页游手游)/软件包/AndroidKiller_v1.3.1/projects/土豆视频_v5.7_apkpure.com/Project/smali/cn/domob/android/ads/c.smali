.class public Lcn/domob/android/ads/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/android/ads/c/f;

.field private static b:Lcn/domob/android/ads/c;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:J

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/c/f;

    .line 40
    sput-object v2, Lcn/domob/android/ads/c;->j:Ljava/lang/String;

    .line 41
    sput-object v2, Lcn/domob/android/ads/c;->k:Ljava/lang/String;

    .line 42
    sput-object v2, Lcn/domob/android/ads/c;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcn/domob/android/ads/l;->z:Ljava/lang/String;

    iput-object v0, p0, Lcn/domob/android/ads/c;->c:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcn/domob/android/ads/c;->d:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcn/domob/android/ads/c;->e:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/c;->f:Z

    .line 37
    iput-object v1, p0, Lcn/domob/android/ads/c;->i:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Lcn/domob/android/ads/c;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcn/domob/android/ads/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/domob/android/ads/c;->b:Lcn/domob/android/ads/c;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcn/domob/android/ads/c;

    invoke-direct {v0}, Lcn/domob/android/ads/c;-><init>()V

    sput-object v0, Lcn/domob/android/ads/c;->b:Lcn/domob/android/ads/c;

    .line 52
    :cond_0
    sget-object v0, Lcn/domob/android/ads/c;->b:Lcn/domob/android/ads/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcn/domob/android/ads/c;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 92
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 99
    :try_start_1
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v2, Lcn/domob/android/ads/l;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcn/domob/android/ads/c;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 101
    iput-object v1, p0, Lcn/domob/android/ads/c;->d:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcn/domob/android/ads/c;->d:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcn/domob/android/ads/c;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/c;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    :try_start_2
    sget-object v1, Lcn/domob/android/ads/c/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/domob/android/ads/l;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is missed in AndroidManifest.xml!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 110
    :catch_1
    move-exception v1

    .line 111
    sget-object v2, Lcn/domob/android/ads/c/f;->a:Ljava/lang/String;

    const-string v3, "Failed to get applicationInfo."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v2, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set AD server url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcn/domob/android/ads/c;->c:Ljava/lang/String;

    .line 60
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 227
    sput-object p1, Lcn/domob/android/ads/c;->j:Ljava/lang/String;

    .line 228
    sput-object p2, Lcn/domob/android/ads/c;->k:Ljava/lang/String;

    .line 229
    const-string v0, "0"

    sput-object v0, Lcn/domob/android/ads/c;->l:Ljava/lang/String;

    .line 231
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 235
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 239
    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 240
    sget-object v4, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/c/f;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "origin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 241
    sput-object v3, Lcn/domob/android/ads/c;->l:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 255
    :cond_0
    :goto_1
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "ors json exception."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 244
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected a(ZJI)V
    .locals 0

    .prologue
    .line 134
    iput-boolean p1, p0, Lcn/domob/android/ads/c;->f:Z

    .line 135
    iput-wide p2, p0, Lcn/domob/android/ads/c;->g:J

    .line 136
    iput p4, p0, Lcn/domob/android/ads/c;->h:I

    .line 137
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcn/domob/android/ads/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcn/domob/android/ads/c;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcn/domob/android/ads/c/b;

    sget-object v1, Lcn/domob/android/ads/c/b;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcn/domob/android/ads/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    const-string v1, "cookie_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/c;->e:Ljava/lang/String;

    .line 130
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 73
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    sget-object v0, Lcn/domob/android/ads/c/f;->a:Ljava/lang/String;

    const-string v1, "Incorrect  publisher ID."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_1
    sget-object v0, Lcn/domob/android/ads/c/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current publisherID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iput-object p1, p0, Lcn/domob/android/ads/c;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method protected c()J
    .locals 4

    .prologue
    .line 165
    iget-wide v0, p0, Lcn/domob/android/ads/c;->g:J

    iget v2, p0, Lcn/domob/android/ads/c;->h:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcn/domob/android/ads/c;->e:Ljava/lang/String;

    .line 122
    return-void
.end method

.method protected c(Landroid/content/Context;)Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 140
    iget-boolean v0, p0, Lcn/domob/android/ads/c;->f:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/domob/android/ads/c;->g:J

    iget v0, p0, Lcn/domob/android/ads/c;->h:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 143
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcn/domob/android/ads/c;->f:Z

    if-eqz v2, :cond_0

    .line 145
    iput-boolean v1, p0, Lcn/domob/android/ads/c;->f:Z

    .line 146
    iput-wide v8, p0, Lcn/domob/android/ads/c;->g:J

    .line 147
    iput v1, p0, Lcn/domob/android/ads/c;->h:I

    .line 149
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 150
    const-string/jumbo v3, "timestamp"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v3, "disable"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v3, "time"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v1, Lcn/domob/android/ads/c/b;

    sget-object v3, Lcn/domob/android/ads/c/b;->a:Ljava/lang/String;

    invoke-direct {v1, p1, v3}, Lcn/domob/android/ads/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/b;->a(Ljava/util/HashMap;)V

    .line 158
    :cond_0
    return v0

    :cond_1
    move v0, v1

    .line 140
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcn/domob/android/ads/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcn/domob/android/ads/c;->i:Ljava/lang/String;

    .line 213
    return-void
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcn/domob/android/ads/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/domob/android/ads/c;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 257
    sget-object v1, Lcn/domob/android/ads/c;->j:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 260
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 261
    sget-object v2, Lcn/domob/android/ads/c;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 262
    if-gt v1, v2, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/c/f;

    const-string v2, "get origin detection config update"

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    const/4 v0, 0x1

    goto :goto_0

    .line 269
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcn/domob/android/ads/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcn/domob/android/ads/c;->j:Ljava/lang/String;

    return-object v0
.end method
