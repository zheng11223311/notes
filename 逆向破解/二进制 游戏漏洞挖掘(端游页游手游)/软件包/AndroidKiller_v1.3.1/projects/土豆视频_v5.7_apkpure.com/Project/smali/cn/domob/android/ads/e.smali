.class public Lcn/domob/android/ads/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/e$a;,
        Lcn/domob/android/ads/e$c;,
        Lcn/domob/android/ads/e$b;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "content"

.field public static final B:Ljava/lang/String; = "base_url"

.field public static final C:Ljava/lang/String; = "o"

.field public static final D:Ljava/lang/String; = "preload"

.field public static final E:Ljava/lang/String; = "timeout"

.field public static final F:Ljava/lang/String; = "autoplay"

.field public static final G:Ljava/lang/String; = "cls_btn"

.field public static final H:Ljava/lang/String; = "width"

.field public static final I:Ljava/lang/String; = "height"

.field public static final J:Ljava/lang/String; = "click_tracker"

.field public static final K:Ljava/lang/String; = "imp_tracker"

.field public static final L:Ljava/lang/String; = "event_tracker"

.field public static final M:Ljava/lang/String; = "tracker"

.field public static final N:Ljava/lang/String; = "animation"

.field public static final O:Ljava/lang/String; = "o"

.field public static final P:Ljava/lang/String; = "cls_btn"

.field public static final Q:Ljava/lang/String; = "cls_pos"

.field public static final R:Ljava/lang/String; = "imp_min"

.field public static final S:Ljava/lang/String; = "imp_cls"

.field public static final T:Ljava/lang/String; = "expire"

.field public static final U:Ljava/lang/String; = "rc"

.field public static final V:Ljava/lang/String; = "pkg"

.field public static final W:Ljava/lang/String; = "mz_url"

.field public static final X:Ljava/lang/String; = "vav"

.field public static final Y:Ljava/lang/String; = "imp_progress"

.field public static final Z:Ljava/lang/String; = "code"

.field public static final a:Ljava/lang/String; = "/.dm/"

.field public static final aa:Ljava/lang/String; = "text"

.field public static final ab:Ljava/lang/String; = "refresh"

.field public static final ac:Ljava/lang/String; = "disable"

.field public static final ad:Ljava/lang/String; = "dis_time"

.field public static final ae:Ljava/lang/String; = "ors"

.field public static final af:Ljava/lang/String; = "version"

.field public static final ag:Ljava/lang/String; = "config"

.field public static final ah:Ljava/lang/String; = "freq_max"

.field public static final ai:Ljava/lang/String; = "freq_reset"

.field public static final aj:Ljava/lang/String; = "cached_max"

.field public static final ak:Ljava/lang/String; = "sp_timeout"

.field private static al:Lcn/domob/android/ads/c/f; = null

.field public static final b:Ljava/lang/String; = "dm.file"

.field public static final c:Ljava/lang/String; = "sid"

.field public static final d:Ljava/lang/String; = "dmid"

.field public static final e:Ljava/lang/String; = "cid"

.field public static final f:Ljava/lang/String; = "ad"

.field public static final g:Ljava/lang/String; = "error"

.field public static final h:Ljava/lang/String; = "control"

.field public static final i:Ljava/lang/String; = "freq"

.field public static final j:Ljava/lang/String; = "cache"

.field public static final k:Ljava/lang/String; = "debug"

.field public static final l:Ljava/lang/String; = "id"

.field public static final m:Ljava/lang/String; = "format"

.field public static final n:Ljava/lang/String; = "width"

.field public static final o:Ljava/lang/String; = "height"

.field public static final p:Ljava/lang/String; = "adWidth"

.field public static final q:Ljava/lang/String; = "adHeight"

.field public static final r:Ljava/lang/String; = "adop"

.field public static final s:Ljava/lang/String; = "ct"

.field public static final t:Ljava/lang/String; = "url"

.field public static final u:Ljava/lang/String; = "content"

.field public static final v:Ljava/lang/String; = "base_url"

.field public static final w:Ljava/lang/String; = "expandable"

.field public static final x:Ljava/lang/String; = "render"

.field public static final y:Ljava/lang/String; = "ct"

.field public static final z:Ljava/lang/String; = "url"


# instance fields
.field private am:Ljava/lang/String;

.field private an:Ljava/lang/String;

.field private ao:Ljava/lang/String;

.field private ap:Lcn/domob/android/ads/e$b;

.field private aq:Lcn/domob/android/ads/e$c;

.field private ar:Lcn/domob/android/ads/e$a;

.field private as:Landroid/content/Context;

.field private at:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/e;->al:Lcn/domob/android/ads/c/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcn/domob/android/ads/e;->as:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcn/domob/android/ads/e;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lcn/domob/android/ads/e;

    invoke-direct {v0}, Lcn/domob/android/ads/e;-><init>()V

    .line 120
    iput-object p0, v0, Lcn/domob/android/ads/e;->as:Landroid/content/Context;

    .line 122
    invoke-direct {v0, p1}, Lcn/domob/android/ads/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    sget-object v1, Lcn/domob/android/ads/e;->al:Lcn/domob/android/ads/c/f;

    const-string v2, "Ad/Error response is ok."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcn/domob/android/ads/e;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcn/domob/android/ads/e;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/domob/android/ads/e;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 139
    :try_start_0
    iput-object p1, p0, Lcn/domob/android/ads/e;->am:Ljava/lang/String;

    .line 140
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 141
    const-string/jumbo v1, "sid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/e;->an:Ljava/lang/String;

    .line 142
    const-string v1, "dmid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    const-string v2, "/.dm/"

    const-string v3, "dm.file"

    invoke-static {v2, v3, v1}, Lcn/domob/android/ads/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "cid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/e;->ao:Ljava/lang/String;

    .line 146
    const-string v1, "ad"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 147
    const-string v2, "error"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 148
    const-string v3, "control"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 150
    const-string v4, "cache"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iput-object v4, p0, Lcn/domob/android/ads/e;->at:Lorg/json/JSONArray;

    .line 153
    const-string v4, "debug"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 155
    sget-object v4, Lcn/domob/android/ads/c/f;->a:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    if-eqz v1, :cond_3

    .line 159
    new-instance v0, Lcn/domob/android/ads/e$b;

    invoke-direct {v0, p0, v1}, Lcn/domob/android/ads/e$b;-><init>(Lcn/domob/android/ads/e;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcn/domob/android/ads/e;->ap:Lcn/domob/android/ads/e$b;

    .line 166
    :goto_0
    if-eqz v3, :cond_1

    .line 167
    new-instance v0, Lcn/domob/android/ads/e$a;

    invoke-direct {v0, p0, v3}, Lcn/domob/android/ads/e$a;-><init>(Lcn/domob/android/ads/e;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcn/domob/android/ads/e;->ar:Lcn/domob/android/ads/e$a;

    .line 170
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/e;->ap:Lcn/domob/android/ads/e$b;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcn/domob/android/ads/e;->as:Landroid/content/Context;

    iget-object v1, p0, Lcn/domob/android/ads/e;->ap:Lcn/domob/android/ads/e$b;

    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->D()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/e/c;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 174
    :cond_2
    const/4 v0, 0x1

    .line 179
    :goto_1
    return v0

    .line 160
    :cond_3
    if-eqz v2, :cond_4

    .line 161
    new-instance v0, Lcn/domob/android/ads/e$c;

    invoke-direct {v0, p0, v2}, Lcn/domob/android/ads/e$c;-><init>(Lcn/domob/android/ads/e;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcn/domob/android/ads/e;->aq:Lcn/domob/android/ads/e$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    sget-object v1, Lcn/domob/android/ads/e;->al:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    .line 179
    const/4 v0, 0x0

    goto :goto_1

    .line 163
    :cond_4
    :try_start_1
    sget-object v0, Lcn/domob/android/ads/e;->al:Lcn/domob/android/ads/c/f;

    const-string v1, "There is no ad response or error response."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic h()Lcn/domob/android/ads/c/f;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcn/domob/android/ads/e;->al:Lcn/domob/android/ads/c/f;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcn/domob/android/ads/e;->am:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcn/domob/android/ads/e;->an:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcn/domob/android/ads/e;->ao:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcn/domob/android/ads/e$b;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcn/domob/android/ads/e;->ap:Lcn/domob/android/ads/e$b;

    return-object v0
.end method

.method public e()Lcn/domob/android/ads/e$c;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcn/domob/android/ads/e;->aq:Lcn/domob/android/ads/e$c;

    return-object v0
.end method

.method public f()Lcn/domob/android/ads/e$a;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcn/domob/android/ads/e;->ar:Lcn/domob/android/ads/e$a;

    return-object v0
.end method

.method public g()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcn/domob/android/ads/e;->at:Lorg/json/JSONArray;

    return-object v0
.end method
