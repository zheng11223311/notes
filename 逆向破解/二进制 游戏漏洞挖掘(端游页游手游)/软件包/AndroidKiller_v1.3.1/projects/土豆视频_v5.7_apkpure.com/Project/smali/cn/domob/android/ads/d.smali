.class Lcn/domob/android/ads/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/k$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/d$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "pb[name]"

.field private static final B:Ljava/lang/String; = "pb[version]"

.field private static final C:Ljava/lang/String; = "d[coord_timestamp]"

.field private static final D:Ljava/lang/String; = "d[coord]"

.field private static final E:Ljava/lang/String; = "d[coord_acc]"

.field private static final F:Ljava/lang/String; = "d[coord_status]"

.field private static final G:Ljava/lang/String; = "d[coord_accuracy]"

.field private static final H:Ljava/lang/String; = "d[pc]"

.field private static final I:Ljava/lang/String; = "d[dob]"

.field private static final J:Ljava/lang/String; = "d[gender]"

.field private static final K:Ljava/lang/String; = "spot"

.field private static final L:Ljava/lang/String; = "network"

.field private static final M:Ljava/lang/String; = "lpkg"

.field private static final N:Ljava/lang/String; = "or"

.field private static final O:Ljava/lang/String; = "orv"

.field private static final P:Ljava/lang/String; = "dma"

.field private static final Q:Ljava/lang/String; = "ama"

.field private static final R:Ljava/lang/String; = "an"

.field private static final S:Ljava/lang/String; = "lac"

.field private static final T:Ljava/lang/String; = "cell"

.field private static final U:Ljava/lang/String; = "mcc"

.field private static final V:Ljava/lang/String; = "mnc"

.field private static final W:Ljava/lang/String; = "ar"

.field private static final X:Ljava/lang/String; = "ppid"

.field private static final Y:Ljava/lang/String; = "scan"

.field private static final Z:Ljava/lang/String; = "iffd"

.field protected static final a:I = 0x1

.field private static final aa:Ljava/lang/String; = "cffd"

.field private static final ab:Ljava/lang/String; = "dmid"

.field private static final ac:Ljava/lang/String; = "aaid"

.field private static final ad:Ljava/lang/String; = "act"

.field private static b:Lcn/domob/android/ads/c/f; = null

.field private static final f:Ljava/lang/String; = "sdk"

.field private static final g:Ljava/lang/String; = "rt"

.field private static final h:Ljava/lang/String; = "pt"

.field private static final i:Ljava/lang/String; = "ts"

.field private static final j:Ljava/lang/String; = "ua"

.field private static final k:Ljava/lang/String; = "ipb"

.field private static final l:Ljava/lang/String; = "idv"

.field private static final m:Ljava/lang/String; = "v"

.field private static final n:Ljava/lang/String; = "sv"

.field private static final o:Ljava/lang/String; = "l"

.field private static final p:Ljava/lang/String; = "f"

.field private static final q:Ljava/lang/String; = "e"

.field private static final r:Ljava/lang/String; = "cid"

.field private static final s:Ljava/lang/String; = "dim"

.field private static final t:Ljava/lang/String; = "so"

.field private static final u:Ljava/lang/String; = "sw"

.field private static final v:Ljava/lang/String; = "sh"

.field private static final w:Ljava/lang/String; = "sd"

.field private static final x:Ljava/lang/String; = "c"

.field private static final y:Ljava/lang/String; = "k"

.field private static final z:Ljava/lang/String; = "pb[identifier]"


# instance fields
.field private c:Lcn/domob/android/ads/k;

.field private d:Lcn/domob/android/ads/b;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/d;->b:Lcn/domob/android/ads/c/f;

    return-void
.end method

.method public constructor <init>(Lcn/domob/android/ads/b;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sget-object v0, Lcn/domob/android/ads/d;->b:Lcn/domob/android/ads/c/f;

    const-string v1, "New instance of AdRequest."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    .line 87
    invoke-virtual {p1}, Lcn/domob/android/ads/b;->w()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    .line 88
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 130
    const-string/jumbo v0, "sdk"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v0, "rt"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string/jumbo v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v0, "ua"

    iget-object v2, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v0, "ipb"

    iget-object v2, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v2}, Lcn/domob/android/ads/b;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v0, "ppid"

    iget-object v2, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v2}, Lcn/domob/android/ads/b;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v0, "idv"

    iget-object v2, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v0, "v"

    const-string v2, "%s-%s-%s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "20141205"

    aput-object v4, v3, v7

    const-string v4, "android"

    aput-object v4, v3, v6

    const-string v4, "20140829"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v0, "sv"

    const-string v2, "040305"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "l"

    invoke-static {}, Lcn/domob/android/b/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "f"

    const-string v2, "jsonp"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v0, "e"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v0, "cid"

    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->o()I

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "pt"

    iget-object v2, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v2}, Lcn/domob/android/ads/b;->o()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    const-string v0, "dim"

    iget-object v2, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v2}, Lcn/domob/android/ads/b;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_1
    const-string/jumbo v0, "so"

    iget-object v2, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string/jumbo v0, "sw"

    iget-object v2, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->u(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v0, "sh"

    iget-object v2, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->v(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v0, "sd"

    iget-object v2, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "%s,%s,%s,%s,%s,%s,%s,%s,%s"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "gif"

    aput-object v3, v2, v7

    const-string v3, "ltx"

    aput-object v3, v2, v6

    const-string v3, "la"

    aput-object v3, v2, v5

    const-string v3, "hv"

    aput-object v3, v2, v8

    const/4 v3, 0x4

    const-string v4, "expd"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "iad"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "wvl"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "tpup"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "gd"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v2, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->F(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",vib"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_2
    const-string v2, "c"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v0, "pb[identifier]"

    iget-object v2, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v0, "pb[name]"

    iget-object v2, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v0, "pb[version]"

    iget-object v2, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v0, "network"

    iget-object v2, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v2, "ar"

    iget-object v0, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->i()Z

    move-result v0

    if-ne v0, v6, :cond_13

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 182
    const-string v0, "k"

    iget-object v2, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v2}, Lcn/domob/android/ads/b;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 204
    const-string v0, "d[pc]"

    iget-object v2, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v2}, Lcn/domob/android/ads/b;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_4
    iget-object v0, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->u()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 208
    const-string v0, "d[dob]"

    iget-object v2, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v2}, Lcn/domob/android/ads/b;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_5
    iget-object v0, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 212
    const-string v0, "d[gender]"

    iget-object v2, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v2}, Lcn/domob/android/ads/b;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_6
    iget-object v0, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->v()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 216
    const-string/jumbo v0, "spot"

    iget-object v2, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v2}, Lcn/domob/android/ads/b;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_7
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/c;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 220
    const-string v0, "lpkg"

    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/c;->d(Ljava/lang/String;)V

    .line 223
    :cond_8
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/c;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 224
    const-string v0, "or"

    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_9
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/c;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 227
    const-string v0, "orv"

    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_a
    iget-object v0, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_b

    .line 232
    sget-object v2, Lcn/domob/android/ads/d;->b:Lcn/domob/android/ads/c/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "des encode dma:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/domob/android/ads/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 233
    const-string v2, "dma"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/domob/android/ads/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_b
    iget-object v0, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_c

    .line 237
    sget-object v2, Lcn/domob/android/ads/d;->b:Lcn/domob/android/ads/c/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "des encode ama:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/domob/android/ads/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 238
    const-string v2, "ama"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/domob/android/ads/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_c
    iget-object v0, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_d

    .line 242
    sget-object v2, Lcn/domob/android/ads/d;->b:Lcn/domob/android/ads/c/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "des encode apSSID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d!j@d#g$r%s^j&h*"

    invoke-static {v4, v0}, Lcn/domob/android/ads/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 243
    const-string v2, "an"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-static {v3, v0}, Lcn/domob/android/ads/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_d
    iget-object v0, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {v0}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 248
    sget-object v2, Lcn/domob/android/ads/d;->b:Lcn/domob/android/ads/c/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaned AP mac and name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 249
    const-string/jumbo v2, "scan"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_e
    iget-object v0, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/e/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 255
    aget-object v2, v0, v7

    invoke-static {v2}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 256
    const-string v2, "iffd"

    aget-object v3, v0, v7

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_f
    aget-object v2, v0, v6

    invoke-static {v2}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 259
    const-string v2, "cffd"

    aget-object v0, v0, v6

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_10
    iget-object v0, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    const-string v2, "/.dm/dm.file"

    invoke-static {v0, v2}, Lcn/domob/android/ads/c/e;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x100

    if-gt v2, v3, :cond_11

    .line 270
    const-string v2, "dmid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_11
    iget-object v0, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 274
    const-string v2, "aaid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_12
    const-string v0, "act"

    iget-object v2, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v2}, Lcn/domob/android/ads/b;->N()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-static {v1}, Lcn/domob/android/ads/c/e;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 177
    :cond_13
    const-string v0, "0"

    goto/16 :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 9

    .prologue
    .line 95
    sget-object v0, Lcn/domob/android/ads/d;->b:Lcn/domob/android/ads/c/f;

    const-string v1, "Start to request ad."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcn/domob/android/ads/d;->b()Ljava/lang/String;

    move-result-object v6

    .line 97
    sget-object v0, Lcn/domob/android/ads/d;->b:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad req string:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcn/domob/android/ads/k;

    iget-object v1, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/c;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/ads/k$a;)V

    iput-object v0, p0, Lcn/domob/android/ads/d;->c:Lcn/domob/android/ads/k;

    .line 100
    iget-object v0, p0, Lcn/domob/android/ads/d;->c:Lcn/domob/android/ads/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/k;->a(Z)V

    .line 101
    iget-object v0, p0, Lcn/domob/android/ads/d;->c:Lcn/domob/android/ads/k;

    new-instance v1, Lcn/domob/android/ads/d$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/d$1;-><init>(Lcn/domob/android/ads/d;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/k;->a(Lcn/domob/android/ads/k$c;)V

    .line 123
    iget-object v0, p0, Lcn/domob/android/ads/d;->c:Lcn/domob/android/ads/k;

    invoke-virtual {v0}, Lcn/domob/android/ads/k;->b()V

    .line 124
    return-void
.end method

.method public a(Lcn/domob/android/ads/k;)V
    .locals 3

    .prologue
    .line 282
    invoke-virtual {p1}, Lcn/domob/android/ads/k;->e()Ljava/lang/String;

    move-result-object v1

    .line 283
    const/4 v0, 0x0

    .line 284
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    iget-object v0, p0, Lcn/domob/android/ads/d;->e:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/domob/android/ads/e;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/domob/android/ads/e;

    move-result-object v0

    .line 290
    :goto_0
    iget-object v1, p0, Lcn/domob/android/ads/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {p1}, Lcn/domob/android/ads/k;->f()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/e;I)V

    .line 291
    return-void

    .line 287
    :cond_0
    sget-object v1, Lcn/domob/android/ads/d;->b:Lcn/domob/android/ads/c/f;

    const-string v2, "Ad respStr is null."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
