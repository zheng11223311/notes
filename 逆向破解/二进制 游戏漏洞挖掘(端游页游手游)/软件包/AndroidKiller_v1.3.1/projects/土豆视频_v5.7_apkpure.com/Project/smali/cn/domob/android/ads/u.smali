.class public Lcn/domob/android/ads/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/k$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/u$c;,
        Lcn/domob/android/ads/u$f;,
        Lcn/domob/android/ads/u$b;,
        Lcn/domob/android/ads/u$a;,
        Lcn/domob/android/ads/u$g;,
        Lcn/domob/android/ads/u$e;,
        Lcn/domob/android/ads/u$d;,
        Lcn/domob/android/ads/u$h;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "sw"

.field private static final B:Ljava/lang/String; = "sh"

.field private static final C:Ljava/lang/String; = "so"

.field private static final D:Ljava/lang/String; = "phase"

.field private static final E:Ljava/lang/String; = "origin"

.field private static final F:Ljava/lang/String; = "data"

.field public static final a:Ljava/lang/String; = "eid"

.field public static final b:Ljava/lang/String; = "gdim"

.field public static final c:Ljava/lang/String; = "adim"

.field private static d:Lcn/domob/android/ads/c/f; = null

.field private static final g:Ljava/lang/String; = "click_report"

.field private static final h:Ljava/lang/String; = "impression_report"

.field private static final i:Ljava/lang/String; = "v"

.field private static final j:Ljava/lang/String; = "sv"

.field private static final k:Ljava/lang/String; = "rt"

.field private static final l:Ljava/lang/String; = "ua"

.field private static final m:Ljava/lang/String; = "ipb"

.field private static final n:Ljava/lang/String; = "ppid"

.field private static final o:Ljava/lang/String; = "idv"

.field private static final p:Ljava/lang/String; = "ts"

.field private static final q:Ljava/lang/String; = "rnd"

.field private static final r:Ljava/lang/String; = "vcode"

.field private static final s:Ljava/lang/String; = "tr"

.field private static final t:Ljava/lang/String; = "type"

.field private static final u:Ljava/lang/String; = "pkg"

.field private static final v:Ljava/lang/String; = "vc"

.field private static final w:Ljava/lang/String; = "vn"

.field private static final x:Ljava/lang/String; = "total"

.field private static final y:Ljava/lang/String; = "failsafe"

.field private static final z:Ljava/lang/String; = "frame"


# instance fields
.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/u;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/u;->d:Lcn/domob/android/ads/c/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcn/domob/android/ads/u;->e:Landroid/content/Context;

    .line 152
    iput-object p2, p0, Lcn/domob/android/ads/u;->f:Ljava/lang/String;

    .line 153
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 300
    new-instance v0, Lcn/domob/android/ads/k;

    iget-object v1, p0, Lcn/domob/android/ads/u;->e:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    move-object v2, p1

    move-object v6, p2

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/ads/k$a;)V

    .line 303
    invoke-virtual {v0, p3}, Lcn/domob/android/ads/k;->a(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Lcn/domob/android/ads/k;->b()V

    .line 305
    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    if-nez p1, :cond_0

    .line 315
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 318
    :cond_0
    const-string/jumbo v0, "v"

    const-string v1, "20140829"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string/jumbo v0, "sv"

    const-string v1, "040305"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v0, "idv"

    iget-object v1, p0, Lcn/domob/android/ads/u;->e:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/b/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    return-void
.end method

.method private a(Ljava/util/HashMap;Lcn/domob/android/ads/u$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/domob/android/ads/u$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 209
    sget-object v0, Lcn/domob/android/ads/u;->d:Lcn/domob/android/ads/c/f;

    const-string v1, "Build Report Common Params Error, paramsMap is null."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 213
    :cond_0
    const-string v0, ""

    .line 214
    if-eqz p2, :cond_1

    .line 215
    iget-object v0, p2, Lcn/domob/android/ads/u$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcn/domob/android/ads/u$a;->a:Ljava/lang/String;

    .line 216
    :goto_1
    const-string v1, "origin"

    iget-object v2, p2, Lcn/domob/android/ads/u$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_1
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/u;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 220
    iget-object v2, p0, Lcn/domob/android/ads/u;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-static {v1, v2, v0}, Lcn/domob/android/ads/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/domob/android/ads/o$a;

    move-result-object v3

    .line 223
    const-string/jumbo v4, "tr"

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string/jumbo v0, "ts"

    invoke-virtual {v3}, Lcn/domob/android/ads/o$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string/jumbo v0, "rnd"

    invoke-virtual {v3}, Lcn/domob/android/ads/o$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string/jumbo v0, "vcode"

    invoke-virtual {v3}, Lcn/domob/android/ads/o$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v0, "ipb"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v0, "ppid"

    iget-object v1, p0, Lcn/domob/android/ads/u;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string/jumbo v0, "ua"

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 215
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/k;)V
    .locals 3

    .prologue
    .line 332
    invoke-virtual {p1}, Lcn/domob/android/ads/k;->f()I

    move-result v0

    .line 334
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 335
    sget-object v0, Lcn/domob/android/ads/u;->d:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/domob/android/ads/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finish."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcn/domob/android/ads/u$b;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/u$b;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    sget-object v0, Lcn/domob/android/ads/u;->d:Lcn/domob/android/ads/c/f;

    const-string v1, "Prepare to report:click_report"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 158
    invoke-static {p1}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    if-nez p3, :cond_0

    .line 161
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 164
    :cond_0
    invoke-direct {p0, p3, p2}, Lcn/domob/android/ads/u;->a(Ljava/util/HashMap;Lcn/domob/android/ads/u$a;)V

    .line 165
    invoke-static {p3}, Lcn/domob/android/ads/c/e;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 166
    sget-object v1, Lcn/domob/android/ads/u;->d:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Click report params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 167
    sget-object v1, Lcn/domob/android/ads/u;->d:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Click report url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 168
    const-string v1, "click_report"

    invoke-direct {p0, p1, v0, v1}, Lcn/domob/android/ads/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_1
    sget-object v0, Lcn/domob/android/ads/u;->d:Lcn/domob/android/ads/c/f;

    const-string v1, "Click report URL is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcn/domob/android/ads/u$f;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/u$f;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    sget-object v0, Lcn/domob/android/ads/u;->d:Lcn/domob/android/ads/c/f;

    const-string v1, "Prepare to report:impression_report"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 177
    invoke-static {p1}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    if-nez p3, :cond_0

    .line 180
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 183
    :cond_0
    invoke-direct {p0, p3, p2}, Lcn/domob/android/ads/u;->a(Ljava/util/HashMap;Lcn/domob/android/ads/u$a;)V

    .line 184
    const-string v0, "frame"

    iget-object v1, p2, Lcn/domob/android/ads/u$f;->d:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string/jumbo v0, "sw"

    iget v1, p2, Lcn/domob/android/ads/u$f;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string/jumbo v0, "sh"

    iget v1, p2, Lcn/domob/android/ads/u$f;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string/jumbo v0, "so"

    iget-object v1, p0, Lcn/domob/android/ads/u;->e:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/b/a;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v0, "phase"

    iget-object v1, p2, Lcn/domob/android/ads/u$f;->h:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-wide v0, p2, Lcn/domob/android/ads/u$f;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 191
    const-string/jumbo v0, "total"

    iget-wide v2, p2, Lcn/domob/android/ads/u$f;->i:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_1
    invoke-static {p3}, Lcn/domob/android/ads/c/e;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 195
    sget-object v1, Lcn/domob/android/ads/u;->d:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impression report params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 196
    sget-object v1, Lcn/domob/android/ads/u;->d:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impression report urls:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "impression_report-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcn/domob/android/ads/u$f;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcn/domob/android/ads/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_2
    sget-object v0, Lcn/domob/android/ads/u;->d:Lcn/domob/android/ads/c/f;

    const-string v1, "Impression report URL is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcn/domob/android/ads/u$h;Ljava/lang/String;Lcn/domob/android/ads/u$c;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/u$h;",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/u$c;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    sget-object v0, Lcn/domob/android/ads/u;->d:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare to report:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 243
    invoke-static {p1}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 245
    if-nez p5, :cond_0

    .line 246
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 249
    :cond_0
    invoke-direct {p0, p5, p4}, Lcn/domob/android/ads/u;->a(Ljava/util/HashMap;Lcn/domob/android/ads/u$a;)V

    .line 250
    invoke-direct {p0, p5}, Lcn/domob/android/ads/u;->a(Ljava/util/HashMap;)V

    .line 252
    if-eqz p2, :cond_1

    .line 253
    const-string/jumbo v0, "rt"

    invoke-virtual {p2}, Lcn/domob/android/ads/u$h;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_1
    if-eqz p3, :cond_2

    .line 257
    const-string/jumbo v0, "type"

    invoke-virtual {p5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_2
    if-eqz p4, :cond_9

    .line 261
    iget-object v0, p4, Lcn/domob/android/ads/u$c;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 262
    const-string v0, "pkg"

    iget-object v1, p4, Lcn/domob/android/ads/u$c;->d:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_3
    iget v0, p4, Lcn/domob/android/ads/u$c;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 266
    const-string/jumbo v0, "vc"

    iget v1, p4, Lcn/domob/android/ads/u$c;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_4
    iget-object v0, p4, Lcn/domob/android/ads/u$c;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 270
    const-string/jumbo v0, "vn"

    iget-object v1, p4, Lcn/domob/android/ads/u$c;->f:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_5
    iget-object v0, p4, Lcn/domob/android/ads/u$c;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 274
    const-string v0, "failsafe"

    iget-object v1, p4, Lcn/domob/android/ads/u$c;->g:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_6
    iget-object v0, p4, Lcn/domob/android/ads/u$c;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 278
    const-string v0, "data"

    iget-object v1, p4, Lcn/domob/android/ads/u$c;->h:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_7
    iget-object v0, p4, Lcn/domob/android/ads/u$c;->i:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 282
    const-string/jumbo v0, "rgid"

    iget-object v1, p4, Lcn/domob/android/ads/u$c;->i:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_8
    iget-object v0, p4, Lcn/domob/android/ads/u$c;->j:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 286
    const-string/jumbo v0, "rid"

    iget-object v1, p4, Lcn/domob/android/ads/u$c;->j:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_9
    invoke-static {p5}, Lcn/domob/android/ads/c/e;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 291
    sget-object v1, Lcn/domob/android/ads/u;->d:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event report ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 292
    sget-object v1, Lcn/domob/android/ads/u;->d:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event report urls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 293
    invoke-direct {p0, p1, v0, p3}, Lcn/domob/android/ads/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_a
    sget-object v0, Lcn/domob/android/ads/u;->d:Lcn/domob/android/ads/c/f;

    const-string v1, "Event report URL is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 324
    new-instance v0, Lcn/domob/android/ads/k;

    iget-object v1, p0, Lcn/domob/android/ads/u;->e:Landroid/content/Context;

    const-string v5, "GET"

    const/16 v7, 0x4e20

    move-object v2, p1

    move-object v4, v3

    move-object v6, v3

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/ads/k$a;)V

    .line 326
    invoke-virtual {v0, p2}, Lcn/domob/android/ads/k;->a(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0}, Lcn/domob/android/ads/k;->b()V

    .line 328
    return-void
.end method
