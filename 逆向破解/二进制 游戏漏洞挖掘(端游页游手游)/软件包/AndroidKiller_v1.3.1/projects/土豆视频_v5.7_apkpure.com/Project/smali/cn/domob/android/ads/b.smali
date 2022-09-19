.class public Lcn/domob/android/ads/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/d$a;
.implements Lcn/domob/android/ads/g$a;
.implements Lcn/domob/android/ads/x$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/b$b;,
        Lcn/domob/android/ads/b$d;,
        Lcn/domob/android/ads/b$c;,
        Lcn/domob/android/ads/b$a;
    }
.end annotation


# static fields
.field protected static final A:Ljava/lang/String; = "url"

.field protected static final B:Ljava/lang/String; = "phase"

.field protected static final C:Ljava/lang/String; = "wtai://wp/mc;"

.field protected static final D:I = 0x1

.field protected static final E:I = 0x2

.field protected static final F:I = 0x3

.field protected static final G:I = 0x4

.field protected static final H:I = 0x5

.field private static I:Lcn/domob/android/ads/c/f; = null

.field protected static final n:Ljava/lang/String;

.field protected static final o:Ljava/lang/String; = "mraid"

.field protected static final p:Ljava/lang/String; = "inapp"

.field protected static final q:Ljava/lang/String; = "download"

.field protected static final r:Ljava/lang/String; = "report"

.field protected static final s:Ljava/lang/String; = "launch"

.field protected static final t:Ljava/lang/String; = "custom"

.field protected static final u:Ljava/lang/String; = "expand"

.field protected static final v:Ljava/lang/String; = "close"

.field protected static final w:Ljava/lang/String; = "clk"

.field protected static final x:Ljava/lang/String; = "imp"

.field protected static final y:Ljava/lang/String; = "event"

.field protected static final z:Ljava/lang/String; = "visit"


# instance fields
.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:I

.field private W:Landroid/os/Handler;

.field private X:J

.field private Y:J

.field private Z:I

.field protected a:Landroid/content/Context;

.field private aa:Lcn/domob/android/ads/a;

.field protected b:Landroid/content/Context;

.field protected c:Ljava/lang/String;

.field protected d:Lcn/domob/android/ads/AdView;

.field protected e:Lcn/domob/android/ads/e;

.field protected f:Lcn/domob/android/ads/b$b;

.field protected g:Lcn/domob/android/ads/g;

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field protected k:Lcn/domob/android/ads/b$a;

.field protected l:Lcn/domob/android/ads/b$c;

.field protected m:Lcn/domob/android/ads/b$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    .line 77
    sget-object v0, Lcn/domob/android/ads/l;->a:Ljava/lang/String;

    sput-object v0, Lcn/domob/android/ads/b;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/domob/android/ads/AdView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v2, p0, Lcn/domob/android/ads/b;->J:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Lcn/domob/android/ads/b;->c:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcn/domob/android/ads/b;->K:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcn/domob/android/ads/b;->M:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcn/domob/android/ads/b;->N:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcn/domob/android/ads/b;->O:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/b;->P:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/b;->Q:Ljava/lang/String;

    .line 53
    iput-boolean v3, p0, Lcn/domob/android/ads/b;->R:Z

    .line 54
    iput-boolean v1, p0, Lcn/domob/android/ads/b;->S:Z

    .line 55
    iput-boolean v1, p0, Lcn/domob/android/ads/b;->T:Z

    .line 56
    iput-boolean v3, p0, Lcn/domob/android/ads/b;->U:Z

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/ads/b;->W:Landroid/os/Handler;

    .line 59
    iput-wide v4, p0, Lcn/domob/android/ads/b;->X:J

    .line 60
    iput-wide v4, p0, Lcn/domob/android/ads/b;->Y:J

    .line 64
    iput v3, p0, Lcn/domob/android/ads/b;->Z:I

    .line 65
    iput-object v2, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    .line 66
    iput-object v2, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    .line 67
    new-instance v0, Lcn/domob/android/ads/b$b;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/b$b;-><init>(Lcn/domob/android/ads/b;)V

    iput-object v0, p0, Lcn/domob/android/ads/b;->f:Lcn/domob/android/ads/b$b;

    .line 70
    iput-boolean v3, p0, Lcn/domob/android/ads/b;->h:Z

    .line 71
    iput-boolean v3, p0, Lcn/domob/android/ads/b;->i:Z

    .line 72
    iput-boolean v3, p0, Lcn/domob/android/ads/b;->j:Z

    .line 73
    sget-object v0, Lcn/domob/android/ads/b$a;->a:Lcn/domob/android/ads/b$a;

    iput-object v0, p0, Lcn/domob/android/ads/b;->k:Lcn/domob/android/ads/b$a;

    .line 74
    sget-object v0, Lcn/domob/android/ads/b$c;->c:Lcn/domob/android/ads/b$c;

    iput-object v0, p0, Lcn/domob/android/ads/b;->l:Lcn/domob/android/ads/b$c;

    .line 75
    sget-object v0, Lcn/domob/android/ads/b$d;->c:Lcn/domob/android/ads/b$d;

    iput-object v0, p0, Lcn/domob/android/ads/b;->m:Lcn/domob/android/ads/b$d;

    .line 126
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "Init AdController."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 127
    if-eqz p1, :cond_0

    .line 128
    iput-object p1, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    .line 129
    invoke-virtual {p1}, Lcn/domob/android/ads/AdView;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    .line 130
    iget-object v0, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    iput-object v0, p0, Lcn/domob/android/ads/b;->b:Landroid/content/Context;

    .line 132
    :cond_0
    iput-object p2, p0, Lcn/domob/android/ads/b;->J:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lcn/domob/android/ads/b;->c:Ljava/lang/String;

    .line 134
    if-nez p2, :cond_1

    .line 135
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/b;->J:Ljava/lang/String;

    .line 137
    :cond_1
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/b;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c;->b(Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcn/domob/android/ads/c/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current placementID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0}, Lcn/domob/android/ads/b;->P()V

    .line 142
    invoke-direct {p0}, Lcn/domob/android/ads/b;->Q()V

    .line 144
    iget-object v0, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/b;->a(Landroid/content/Context;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v2, p0, Lcn/domob/android/ads/b;->J:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Lcn/domob/android/ads/b;->c:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcn/domob/android/ads/b;->K:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcn/domob/android/ads/b;->M:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcn/domob/android/ads/b;->N:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcn/domob/android/ads/b;->O:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/b;->P:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/b;->Q:Ljava/lang/String;

    .line 53
    iput-boolean v3, p0, Lcn/domob/android/ads/b;->R:Z

    .line 54
    iput-boolean v1, p0, Lcn/domob/android/ads/b;->S:Z

    .line 55
    iput-boolean v1, p0, Lcn/domob/android/ads/b;->T:Z

    .line 56
    iput-boolean v3, p0, Lcn/domob/android/ads/b;->U:Z

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/ads/b;->W:Landroid/os/Handler;

    .line 59
    iput-wide v4, p0, Lcn/domob/android/ads/b;->X:J

    .line 60
    iput-wide v4, p0, Lcn/domob/android/ads/b;->Y:J

    .line 64
    iput v3, p0, Lcn/domob/android/ads/b;->Z:I

    .line 65
    iput-object v2, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    .line 66
    iput-object v2, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    .line 67
    new-instance v0, Lcn/domob/android/ads/b$b;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/b$b;-><init>(Lcn/domob/android/ads/b;)V

    iput-object v0, p0, Lcn/domob/android/ads/b;->f:Lcn/domob/android/ads/b$b;

    .line 70
    iput-boolean v3, p0, Lcn/domob/android/ads/b;->h:Z

    .line 71
    iput-boolean v3, p0, Lcn/domob/android/ads/b;->i:Z

    .line 72
    iput-boolean v3, p0, Lcn/domob/android/ads/b;->j:Z

    .line 73
    sget-object v0, Lcn/domob/android/ads/b$a;->a:Lcn/domob/android/ads/b$a;

    iput-object v0, p0, Lcn/domob/android/ads/b;->k:Lcn/domob/android/ads/b$a;

    .line 74
    sget-object v0, Lcn/domob/android/ads/b$c;->c:Lcn/domob/android/ads/b$c;

    iput-object v0, p0, Lcn/domob/android/ads/b;->l:Lcn/domob/android/ads/b$c;

    .line 75
    sget-object v0, Lcn/domob/android/ads/b$d;->c:Lcn/domob/android/ads/b$d;

    iput-object v0, p0, Lcn/domob/android/ads/b;->m:Lcn/domob/android/ads/b$d;

    .line 164
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "Init AdController."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 166
    iput-object p1, p0, Lcn/domob/android/ads/b;->J:Ljava/lang/String;

    .line 167
    if-nez p1, :cond_0

    .line 168
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/b;->J:Ljava/lang/String;

    .line 170
    :cond_0
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/b;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c;->b(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method static synthetic O()Lcn/domob/android/ads/c/f;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    return-object v0
.end method

.method private P()V
    .locals 4

    .prologue
    .line 176
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcn/domob/android/ads/c/b;

    iget-object v1, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    sget-object v2, Lcn/domob/android/ads/c/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v1, "version"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    const-string v2, "config"

    const-string/jumbo v3, "{\"com.admogo.AdMogoLayout\":\"1\",\"com.guohead.sdk.GHView\":\"2\",\"com.adview.AdViewLayout\":\"3\",\"appfactory.cn.adplatform.AdSageLayout\":\"4\"}"

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcn/domob/android/ads/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method

.method private Q()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 186
    new-instance v0, Lcn/domob/android/ads/c/b;

    iget-object v1, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    sget-object v2, Lcn/domob/android/ads/c/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v1

    const-string v2, "cookie_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c;->c(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v1

    const-string v2, "disable"

    invoke-virtual {v0, v2, v6}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "timestamp"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v3, "time"

    invoke-virtual {v0, v3, v6}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v4, v5, v3}, Lcn/domob/android/ads/c;->a(ZJI)V

    .line 191
    const-string v1, "interval"

    const/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/b;->V:I

    .line 192
    return-void
.end method

.method private R()V
    .locals 8

    .prologue
    const/16 v3, 0x1388

    .line 638
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 640
    iget-object v1, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    invoke-virtual {v1}, Lcn/domob/android/ads/e;->c()Ljava/lang/String;

    move-result-object v1

    .line 641
    if-eqz v1, :cond_0

    .line 642
    const-string v2, "cookie_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/c;->c(Ljava/lang/String;)V

    .line 647
    :cond_0
    iget-object v1, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    invoke-virtual {v1}, Lcn/domob/android/ads/e;->f()Lcn/domob/android/ads/e$a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 655
    iget-object v1, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    invoke-virtual {v1}, Lcn/domob/android/ads/e;->f()Lcn/domob/android/ads/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e$a;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 656
    iget-object v1, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    invoke-virtual {v1}, Lcn/domob/android/ads/e;->f()Lcn/domob/android/ads/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e$a;->a()I

    move-result v1

    .line 657
    mul-int/lit16 v1, v1, 0x3e8

    .line 659
    if-gtz v1, :cond_5

    .line 660
    const/4 v1, 0x0

    iput v1, p0, Lcn/domob/android/ads/b;->V:I

    .line 667
    :cond_1
    :goto_0
    const-string v1, "interval"

    iget v2, p0, Lcn/domob/android/ads/b;->V:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    :cond_2
    iget-object v1, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    invoke-virtual {v1}, Lcn/domob/android/ads/e;->f()Lcn/domob/android/ads/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e$a;->b()Z

    move-result v1

    .line 671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 672
    iget-object v4, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    invoke-virtual {v4}, Lcn/domob/android/ads/e;->f()Lcn/domob/android/ads/e$a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/e$a;->c()I

    move-result v4

    .line 673
    const-string/jumbo v5, "timestamp"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    const-string v5, "disable"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const-string/jumbo v5, "time"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    sget-object v5, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disable time stamp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    sget-object v5, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disable time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 678
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3, v4}, Lcn/domob/android/ads/c;->a(ZJI)V

    .line 681
    iget-object v1, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    invoke-virtual {v1}, Lcn/domob/android/ads/e;->f()Lcn/domob/android/ads/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e$a;->e()Ljava/lang/String;

    move-result-object v1

    .line 682
    iget-object v2, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    invoke-virtual {v2}, Lcn/domob/android/ads/e;->f()Lcn/domob/android/ads/e$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/e$a;->f()Ljava/lang/String;

    move-result-object v2

    .line 683
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/domob/android/ads/c;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 684
    const-string/jumbo v3, "version"

    iget-object v4, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    invoke-virtual {v4}, Lcn/domob/android/ads/e;->f()Lcn/domob/android/ads/e$a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/e$a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    const-string v3, "config"

    iget-object v4, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    invoke-virtual {v4}, Lcn/domob/android/ads/e;->f()Lcn/domob/android/ads/e$a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/e$a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcn/domob/android/ads/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 691
    new-instance v1, Lcn/domob/android/ads/c/b;

    iget-object v2, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    sget-object v3, Lcn/domob/android/ads/c/b;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcn/domob/android/ads/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 692
    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/b;->a(Ljava/util/HashMap;)V

    .line 694
    :cond_4
    return-void

    .line 661
    :cond_5
    if-lez v1, :cond_6

    if-ge v1, v3, :cond_6

    .line 662
    iput v3, p0, Lcn/domob/android/ads/b;->V:I

    goto/16 :goto_0

    .line 663
    :cond_6
    if-lt v1, v3, :cond_1

    .line 664
    iput v1, p0, Lcn/domob/android/ads/b;->V:I

    goto/16 :goto_0
.end method

.method private S()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e$b;->B()Ljava/lang/String;

    move-result-object v0

    .line 729
    iget-object v1, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/domob/android/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    invoke-virtual {v1}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c;->d(Ljava/lang/String;)V

    .line 732
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 932
    new-instance v0, Lcn/domob/android/ads/u;

    iget-object v1, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/b;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 933
    new-instance v4, Lcn/domob/android/ads/u$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/u$c;-><init>(Lcn/domob/android/ads/u;)V

    .line 934
    iput-object p2, v4, Lcn/domob/android/ads/u$c;->d:Ljava/lang/String;

    .line 935
    iput p3, v4, Lcn/domob/android/ads/u$c;->e:I

    .line 936
    iput-object p4, v4, Lcn/domob/android/ads/u$c;->f:Ljava/lang/String;

    .line 938
    sget-object v1, Lcn/domob/android/ads/l;->B:Ljava/lang/String;

    sget-object v2, Lcn/domob/android/ads/u$h;->e:Lcn/domob/android/ads/u$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/u;->a(Ljava/lang/String;Lcn/domob/android/ads/u$h;Ljava/lang/String;Lcn/domob/android/ads/u$c;Ljava/util/HashMap;)V

    .line 939
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/b;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcn/domob/android/ads/b;->U:Z

    return v0
.end method

.method static synthetic a(Lcn/domob/android/ads/b;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcn/domob/android/ads/b;->U:Z

    return p1
.end method

.method private b(Lcn/domob/android/ads/e;I)V
    .locals 8

    .prologue
    .line 757
    if-eqz p1, :cond_2

    .line 758
    iput-object p1, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    .line 760
    invoke-direct {p0}, Lcn/domob/android/ads/b;->R()V

    .line 762
    invoke-virtual {p1}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {p0}, Lcn/domob/android/ads/b;->F()V

    .line 764
    invoke-direct {p0}, Lcn/domob/android/ads/b;->S()V

    .line 765
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "Get ad response successfully."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 805
    :goto_0
    return-void

    .line 767
    :cond_0
    invoke-virtual {p1}, Lcn/domob/android/ads/e;->e()Lcn/domob/android/ads/e$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 768
    invoke-virtual {p1}, Lcn/domob/android/ads/e;->e()Lcn/domob/android/ads/e$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e$c;->b()Ljava/lang/String;

    move-result-object v0

    .line 769
    invoke-virtual {p1}, Lcn/domob/android/ads/e;->e()Lcn/domob/android/ads/e$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e$c;->a()I

    move-result v1

    .line 770
    invoke-virtual {p1}, Lcn/domob/android/ads/e;->b()Ljava/lang/String;

    move-result-object v2

    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/domob/android/ads/l;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SDK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Response contains error info. Error code is [%d-%s] and error content is [%s]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v2, 0x2

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    div-int/lit16 v0, v1, 0x3e8

    packed-switch v0, :pswitch_data_0

    .line 791
    :goto_1
    sget-object v0, Lcn/domob/android/ads/AdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/AdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/AdManager$ErrorCode;)V

    goto :goto_0

    .line 777
    :pswitch_0
    sget-object v0, Lcn/domob/android/ads/AdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/AdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/AdManager$ErrorCode;)V

    goto :goto_0

    .line 780
    :pswitch_1
    sget-object v0, Lcn/domob/android/ads/AdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/AdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/AdManager$ErrorCode;)V

    goto :goto_0

    .line 783
    :pswitch_2
    sget-object v0, Lcn/domob/android/ads/AdManager$ErrorCode;->INVALID_REQUEST:Lcn/domob/android/ads/AdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/AdManager$ErrorCode;)V

    goto :goto_0

    .line 786
    :pswitch_3
    sget-object v0, Lcn/domob/android/ads/AdManager$ErrorCode;->NO_FILL:Lcn/domob/android/ads/AdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/AdManager$ErrorCode;)V

    goto :goto_0

    .line 789
    :pswitch_4
    sget-object v0, Lcn/domob/android/ads/AdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/AdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/AdManager$ErrorCode;)V

    goto :goto_1

    .line 796
    :cond_1
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "Unexpected resp, Try to request again after refresh interval."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 797
    sget-object v0, Lcn/domob/android/ads/AdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/AdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/AdManager$ErrorCode;)V

    goto :goto_0

    .line 801
    :cond_2
    sget-object v0, Lcn/domob/android/ads/c/f;->a:Ljava/lang/String;

    const-string v1, "Connection Error. Please make sure that your network is available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "AdResponse instance is null. Try to request again after refresh interval."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 803
    sget-object v0, Lcn/domob/android/ads/AdManager$ErrorCode;->NETWORK_ERROR:Lcn/domob/android/ads/AdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/AdManager$ErrorCode;)V

    goto/16 :goto_0

    .line 775
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected A()Z
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Lcn/domob/android/ads/b;->R:Z

    return v0
.end method

.method protected B()Lcn/domob/android/ads/e;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    return-object v0
.end method

.method protected C()V
    .locals 1

    .prologue
    .line 506
    .line 507
    new-instance v0, Lcn/domob/android/ads/b$1;

    invoke-direct {v0, p0, p0}, Lcn/domob/android/ads/b$1;-><init>(Lcn/domob/android/ads/b;Lcn/domob/android/ads/b;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/b$1;->start()V

    .line 543
    return-void
.end method

.method protected D()V
    .locals 0

    .prologue
    .line 621
    invoke-virtual {p0}, Lcn/domob/android/ads/b;->E()V

    .line 622
    return-void
.end method

.method protected E()V
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/b;->R:Z

    .line 629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/b;->U:Z

    .line 630
    sget-object v0, Lcn/domob/android/ads/b$c;->c:Lcn/domob/android/ads/b$c;

    iput-object v0, p0, Lcn/domob/android/ads/b;->l:Lcn/domob/android/ads/b$c;

    .line 631
    invoke-virtual {p0}, Lcn/domob/android/ads/b;->b()V

    .line 632
    return-void
.end method

.method protected F()V
    .locals 6

    .prologue
    .line 700
    iget-object v0, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v2

    .line 701
    invoke-virtual {v2}, Lcn/domob/android/ads/e$b;->c()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->u(Landroid/content/Context;)I

    move-result v0

    .line 703
    :goto_0
    invoke-virtual {v2}, Lcn/domob/android/ads/e$b;->d()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/b/a;->v(Landroid/content/Context;)I

    move-result v1

    .line 705
    :goto_1
    iget-object v3, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v3, v0, v1}, Lcn/domob/android/ads/AdView;->a(II)V

    .line 708
    invoke-virtual {v2}, Lcn/domob/android/ads/e$b;->b()Ljava/lang/String;

    move-result-object v2

    .line 709
    sget-object v3, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ad format from response is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 710
    invoke-static {v2}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 711
    new-instance v2, Lcn/domob/android/ads/a/d;

    iget-object v3, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    new-instance v4, Lcn/domob/android/ads/f;

    invoke-direct {v4, v0, v1}, Lcn/domob/android/ads/f;-><init>(II)V

    iget-object v0, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    invoke-direct {v2, v3, v4, v0, p0}, Lcn/domob/android/ads/a/d;-><init>(Landroid/content/Context;Lcn/domob/android/ads/f;Lcn/domob/android/ads/e;Lcn/domob/android/ads/b;)V

    iput-object v2, p0, Lcn/domob/android/ads/b;->g:Lcn/domob/android/ads/g;

    .line 722
    :goto_2
    iget-object v0, p0, Lcn/domob/android/ads/b;->g:Lcn/domob/android/ads/g;

    invoke-virtual {v0, p0}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/g$a;)V

    .line 723
    iget-object v0, p0, Lcn/domob/android/ads/b;->g:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->a()V

    .line 724
    :goto_3
    return-void

    .line 701
    :cond_0
    invoke-virtual {v2}, Lcn/domob/android/ads/e$b;->c()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 703
    :cond_1
    invoke-virtual {v2}, Lcn/domob/android/ads/e$b;->d()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_1

    .line 713
    :cond_2
    sget-object v3, Lcn/domob/android/ads/l;->H:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 714
    new-instance v2, Lcn/domob/android/ads/a/d;

    iget-object v3, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    new-instance v4, Lcn/domob/android/ads/f;

    invoke-direct {v4, v0, v1}, Lcn/domob/android/ads/f;-><init>(II)V

    iget-object v0, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    invoke-direct {v2, v3, v4, v0, p0}, Lcn/domob/android/ads/a/d;-><init>(Landroid/content/Context;Lcn/domob/android/ads/f;Lcn/domob/android/ads/e;Lcn/domob/android/ads/b;)V

    iput-object v2, p0, Lcn/domob/android/ads/b;->g:Lcn/domob/android/ads/g;

    goto :goto_2

    .line 716
    :cond_3
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "bad ad received"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 717
    sget-object v0, Lcn/domob/android/ads/AdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/AdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/AdManager$ErrorCode;)V

    goto :goto_3
.end method

.method public G()V
    .locals 4

    .prologue
    .line 735
    iget-object v0, p0, Lcn/domob/android/ads/b;->P:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/b;->P:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 736
    const-string v0, ""

    .line 737
    iget-object v0, p0, Lcn/domob/android/ads/b;->Q:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/b;->Q:Ljava/lang/String;

    const-string v1, "mraid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    const-string v0, "mraid"

    .line 741
    :goto_0
    sget-object v1, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gen fake ad response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 742
    sget-object v1, Lcn/domob/android/ads/l;->M:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcn/domob/android/ads/b;->P:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 743
    invoke-static {v0}, Lcn/domob/android/ads/e;->a(Ljava/lang/String;)Lcn/domob/android/ads/e;

    move-result-object v0

    .line 744
    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/e;I)V

    .line 749
    :goto_1
    return-void

    .line 740
    :cond_0
    sget-object v0, Lcn/domob/android/ads/l;->a:Ljava/lang/String;

    goto :goto_0

    .line 747
    :cond_1
    invoke-virtual {p0}, Lcn/domob/android/ads/b;->C()V

    goto :goto_1
.end method

.method public H()V
    .locals 2

    .prologue
    .line 972
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView;->g()Lcn/domob/android/ads/AdEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView;->g()Lcn/domob/android/ads/AdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/AdEventListener;->onAdClicked(Lcn/domob/android/ads/AdView;)V

    .line 975
    :cond_0
    return-void
.end method

.method public I()Landroid/content/Context;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView;->g()Lcn/domob/android/ads/AdEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView;->g()Lcn/domob/android/ads/AdEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/AdEventListener;->onAdRequiresCurrentContext()Landroid/content/Context;

    move-result-object v0

    .line 982
    if-eqz v0, :cond_0

    .line 987
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    goto :goto_0
.end method

.method public J()V
    .locals 2

    .prologue
    .line 992
    invoke-virtual {p0}, Lcn/domob/android/ads/b;->d()V

    .line 993
    sget-object v0, Lcn/domob/android/ads/b$a;->b:Lcn/domob/android/ads/b$a;

    iput-object v0, p0, Lcn/domob/android/ads/b;->k:Lcn/domob/android/ads/b$a;

    .line 994
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView;->g()Lcn/domob/android/ads/AdEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView;->g()Lcn/domob/android/ads/AdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/AdEventListener;->onAdOverlayPresented(Lcn/domob/android/ads/AdView;)V

    .line 997
    :cond_0
    return-void
.end method

.method public K()V
    .locals 2

    .prologue
    .line 1001
    sget-object v0, Lcn/domob/android/ads/b$a;->a:Lcn/domob/android/ads/b$a;

    iput-object v0, p0, Lcn/domob/android/ads/b;->k:Lcn/domob/android/ads/b$a;

    .line 1002
    invoke-virtual {p0}, Lcn/domob/android/ads/b;->f()V

    .line 1003
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView;->g()Lcn/domob/android/ads/AdEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView;->g()Lcn/domob/android/ads/AdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/AdEventListener;->onAdOverlayDismissed(Lcn/domob/android/ads/AdView;)V

    .line 1006
    :cond_0
    return-void
.end method

.method public L()V
    .locals 2

    .prologue
    .line 1010
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView;->g()Lcn/domob/android/ads/AdEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView;->g()Lcn/domob/android/ads/AdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/AdEventListener;->onLeaveApplication(Lcn/domob/android/ads/AdView;)V

    .line 1013
    :cond_0
    return-void
.end method

.method public M()V
    .locals 2

    .prologue
    .line 1017
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "ad call to close itself"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView;->k()V

    .line 1019
    return-void
.end method

.method protected N()I
    .locals 1

    .prologue
    .line 1028
    iget v0, p0, Lcn/domob/android/ads/b;->Z:I

    return v0
.end method

.method public a()Lcn/domob/android/ads/a;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcn/domob/android/ads/b;->aa:Lcn/domob/android/ads/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/b;->a(Landroid/content/Context;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/b;->aa:Lcn/domob/android/ads/a;

    return-object v0
.end method

.method protected a(I)V
    .locals 0

    .prologue
    .line 463
    iput p1, p0, Lcn/domob/android/ads/b;->V:I

    .line 464
    return-void
.end method

.method protected a(J)V
    .locals 3

    .prologue
    .line 494
    sget-object v0, Lcn/domob/android/ads/b$d;->a:Lcn/domob/android/ads/b$d;

    iput-object v0, p0, Lcn/domob/android/ads/b;->m:Lcn/domob/android/ads/b$d;

    .line 495
    iput-wide p1, p0, Lcn/domob/android/ads/b;->X:J

    .line 496
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/domob/android/ads/b;->Y:J

    .line 497
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "init timing"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcn/domob/android/ads/b;->aa:Lcn/domob/android/ads/a;

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 153
    new-instance v1, Lcn/domob/android/ads/a;

    invoke-direct {v1}, Lcn/domob/android/ads/a;-><init>()V

    iput-object v1, p0, Lcn/domob/android/ads/b;->aa:Lcn/domob/android/ads/a;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/b;->aa:Lcn/domob/android/ads/a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "Finish to init action receiver."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "Action receiver has already been initialized."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcn/domob/android/ads/AdManager$ErrorCode;)V
    .locals 2

    .prologue
    .line 811
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "FAILED to load AD."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/b;->U:Z

    .line 813
    invoke-virtual {p0}, Lcn/domob/android/ads/b;->b()V

    .line 815
    iget-object v0, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/b$2;

    invoke-direct {v1, p0, p1}, Lcn/domob/android/ads/b$2;-><init>(Lcn/domob/android/ads/b;Lcn/domob/android/ads/AdManager$ErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 827
    return-void
.end method

.method public a(Lcn/domob/android/ads/AdManager$ErrorCode;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 966
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "FAILED to load ad content view and the errorMessage is: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p0, p1}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/AdManager$ErrorCode;)V

    .line 968
    return-void
.end method

.method public a(Lcn/domob/android/ads/e;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 547
    invoke-virtual {p0, p1, v0, v0}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/e;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public a(Lcn/domob/android/ads/e;I)V
    .locals 0

    .prologue
    .line 753
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/b;->b(Lcn/domob/android/ads/e;I)V

    .line 754
    return-void
.end method

.method public a(Lcn/domob/android/ads/e;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 566
    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object v8, v3

    invoke-virtual/range {v1 .. v8}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/e;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 567
    return-void
.end method

.method public a(Lcn/domob/android/ads/e;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/android/ads/e;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 551
    invoke-virtual {p1}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e$b;->n()Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-virtual {p1}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->q()Ljava/lang/String;

    move-result-object v1

    .line 554
    new-instance v2, Lcn/domob/android/ads/u;

    iget-object v3, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/android/ads/b;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcn/domob/android/ads/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 555
    new-instance v3, Lcn/domob/android/ads/u$b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v2}, Lcn/domob/android/ads/u$b;-><init>(Lcn/domob/android/ads/u;)V

    .line 556
    iput-object v1, v3, Lcn/domob/android/ads/u$b;->a:Ljava/lang/String;

    .line 557
    if-eqz p3, :cond_0

    .line 558
    iput-object p3, v3, Lcn/domob/android/ads/u$b;->b:Ljava/lang/String;

    .line 560
    :cond_0
    invoke-virtual {v2, v0, v3, p2}, Lcn/domob/android/ads/u;->a(Ljava/lang/String;Lcn/domob/android/ads/u$b;Ljava/util/HashMap;)V

    .line 562
    iget-object v0, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->D()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/e/c;->c(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 563
    return-void
.end method

.method public a(Lcn/domob/android/ads/e;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/android/ads/e;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 571
    iget-object v9, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/e;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/view/View;)V

    .line 572
    return-void
.end method

.method public a(Lcn/domob/android/ads/e;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/android/ads/e;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 579
    new-instance v0, Lcn/domob/android/ads/u;

    iget-object v1, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/b;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 580
    new-instance v1, Lcn/domob/android/ads/u$f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcn/domob/android/ads/u$f;-><init>(Lcn/domob/android/ads/u;)V

    .line 581
    if-nez p7, :cond_0

    invoke-virtual {p1}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/e$b;->o()Ljava/lang/String;

    move-result-object p7

    .line 582
    :cond_0
    invoke-virtual {p1}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/e$b;->q()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/domob/android/ads/u$f;->a:Ljava/lang/String;

    .line 583
    if-eqz p8, :cond_1

    .line 584
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 585
    invoke-virtual {p8, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 586
    const-string v3, "%d,%d,%d,%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    invoke-virtual {p8}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x3

    invoke-virtual {p8}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/domob/android/ads/u$f;->d:Ljava/lang/String;

    .line 589
    :cond_1
    iget-object v2, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->u(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcn/domob/android/ads/u$f;->e:I

    .line 590
    iget-object v2, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->v(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcn/domob/android/ads/u$f;->f:I

    .line 591
    iget-object v2, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/domob/android/ads/u$f;->g:Ljava/lang/String;

    .line 592
    iput-object p3, v1, Lcn/domob/android/ads/u$f;->h:Ljava/lang/String;

    .line 593
    iput-object p4, v1, Lcn/domob/android/ads/u$f;->b:Ljava/lang/String;

    .line 594
    iput-wide p5, v1, Lcn/domob/android/ads/u$f;->i:J

    .line 596
    invoke-virtual {v0, p7, v1, p2}, Lcn/domob/android/ads/u;->a(Ljava/lang/String;Lcn/domob/android/ads/u$f;Ljava/util/HashMap;)V

    .line 597
    invoke-virtual {p1}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e$b;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 608
    if-eqz v0, :cond_2

    const-string v1, "m"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    if-nez v0, :cond_4

    const-string/jumbo v0, "s"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 610
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->D()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/e/c;->b(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 612
    :cond_4
    return-void
.end method

.method protected a(Lcn/domob/android/ads/g;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 835
    iget-boolean v0, p0, Lcn/domob/android/ads/b;->T:Z

    if-eqz v0, :cond_1

    .line 836
    iget-object v0, p0, Lcn/domob/android/ads/b;->e:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e$b;->r()I

    move-result v0

    .line 838
    packed-switch v0, :pswitch_data_0

    .line 852
    add-int/lit8 v0, v0, -0x2

    .line 853
    if-ltz v0, :cond_0

    invoke-static {}, Lcn/domob/android/ads/w$a;->values()[Lcn/domob/android/ads/w$a;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 855
    iget-object v1, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-static {}, Lcn/domob/android/ads/w$a;->values()[Lcn/domob/android/ads/w$a;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-static {v0}, Lcn/domob/android/ads/w;->a(Lcn/domob/android/ads/w$a;)[Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcn/domob/android/ads/AdView;->a(Lcn/domob/android/ads/g;[Landroid/view/animation/AnimationSet;)V

    .line 867
    :goto_0
    return-void

    .line 841
    :pswitch_0
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0, p1, v2}, Lcn/domob/android/ads/AdView;->a(Lcn/domob/android/ads/g;[Landroid/view/animation/AnimationSet;)V

    goto :goto_0

    .line 845
    :pswitch_1
    invoke-static {}, Lcn/domob/android/ads/w$a;->values()[Lcn/domob/android/ads/w$a;

    move-result-object v0

    array-length v0, v0

    .line 846
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 847
    iget-object v1, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-static {}, Lcn/domob/android/ads/w$a;->values()[Lcn/domob/android/ads/w$a;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-static {v0}, Lcn/domob/android/ads/w;->a(Lcn/domob/android/ads/w$a;)[Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcn/domob/android/ads/AdView;->a(Lcn/domob/android/ads/g;[Landroid/view/animation/AnimationSet;)V

    goto :goto_0

    .line 859
    :cond_0
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "Invalid animation type index."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0, p1, v2}, Lcn/domob/android/ads/AdView;->a(Lcn/domob/android/ads/g;[Landroid/view/animation/AnimationSet;)V

    goto :goto_0

    .line 865
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0, p1, v2}, Lcn/domob/android/ads/AdView;->a(Lcn/domob/android/ads/g;[Landroid/view/animation/AnimationSet;)V

    goto :goto_0

    .line 838
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcn/domob/android/ads/b;->J:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 872
    const-string/jumbo v0, "up_alert"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 873
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 929
    return-void
.end method

.method protected a(Z)V
    .locals 3

    .prologue
    .line 315
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto refresh is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 316
    iput-boolean p1, p0, Lcn/domob/android/ads/b;->S:Z

    .line 317
    return-void
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lcn/domob/android/ads/b;->l:Lcn/domob/android/ads/b$c;

    sget-object v1, Lcn/domob/android/ads/b$c;->a:Lcn/domob/android/ads/b$c;

    if-ne v0, v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/b;->k:Lcn/domob/android/ads/b$a;

    sget-object v1, Lcn/domob/android/ads/b$a;->a:Lcn/domob/android/ads/b$a;

    if-ne v0, v1, :cond_3

    .line 210
    iget-boolean v0, p0, Lcn/domob/android/ads/b;->S:Z

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start schedule new request. Refresh interval is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/android/ads/b;->V:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 212
    iget v0, p0, Lcn/domob/android/ads/b;->V:I

    if-nez v0, :cond_2

    .line 213
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "AdView is auto refreshable but interval from ad response is 0. DON\'T SCHEDULE."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/b;->W:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/b;->f:Lcn/domob/android/ads/b$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 216
    iget-object v0, p0, Lcn/domob/android/ads/b;->W:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/b;->f:Lcn/domob/android/ads/b$b;

    iget v2, p0, Lcn/domob/android/ads/b;->V:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    sget-object v0, Lcn/domob/android/ads/b$c;->a:Lcn/domob/android/ads/b$c;

    iput-object v0, p0, Lcn/domob/android/ads/b;->l:Lcn/domob/android/ads/b$c;

    goto :goto_0

    .line 220
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/b;->k:Lcn/domob/android/ads/b$a;

    sget-object v1, Lcn/domob/android/ads/b$a;->b:Lcn/domob/android/ads/b$a;

    if-ne v0, v1, :cond_0

    .line 221
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "AdView is expanding, cancel current \'start()\'."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b(I)V
    .locals 0

    .prologue
    .line 1032
    iput p1, p0, Lcn/domob/android/ads/b;->Z:I

    .line 1033
    return-void
.end method

.method public b(Lcn/domob/android/ads/g;)V
    .locals 0

    .prologue
    .line 961
    invoke-virtual {p0, p1}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/g;)V

    .line 962
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcn/domob/android/ads/b;->K:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public b(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 877
    const-string/jumbo v0, "up_ok"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 878
    return-void
.end method

.method protected b(Z)V
    .locals 3

    .prologue
    .line 324
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition animation is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 325
    iput-boolean p1, p0, Lcn/domob/android/ads/b;->T:Z

    .line 326
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcn/domob/android/ads/b;->W:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/b;->f:Lcn/domob/android/ads/b$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    sget-object v0, Lcn/domob/android/ads/b$c;->c:Lcn/domob/android/ads/b$c;

    iput-object v0, p0, Lcn/domob/android/ads/b;->l:Lcn/domob/android/ads/b$c;

    .line 228
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcn/domob/android/ads/b;->L:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public c(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 882
    const-string/jumbo v0, "up_cancel"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 883
    return-void
.end method

.method protected c(Z)V
    .locals 0

    .prologue
    .line 446
    iput-boolean p1, p0, Lcn/domob/android/ads/b;->U:Z

    .line 447
    return-void
.end method

.method protected d()V
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lcn/domob/android/ads/b;->l:Lcn/domob/android/ads/b$c;

    sget-object v1, Lcn/domob/android/ads/b$c;->b:Lcn/domob/android/ads/b$c;

    if-ne v0, v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/b;->k:Lcn/domob/android/ads/b$a;

    sget-object v1, Lcn/domob/android/ads/b$a;->a:Lcn/domob/android/ads/b$a;

    if-ne v0, v1, :cond_2

    .line 236
    iget-boolean v0, p0, Lcn/domob/android/ads/b;->S:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcn/domob/android/ads/b;->W:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/b;->f:Lcn/domob/android/ads/b$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 238
    invoke-virtual {p0}, Lcn/domob/android/ads/b;->e()V

    .line 239
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pause schedule and the ad has shown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/domob/android/ads/b;->Y:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 240
    sget-object v0, Lcn/domob/android/ads/b$c;->b:Lcn/domob/android/ads/b$c;

    iput-object v0, p0, Lcn/domob/android/ads/b;->l:Lcn/domob/android/ads/b$c;

    goto :goto_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/b;->k:Lcn/domob/android/ads/b$a;

    sget-object v1, Lcn/domob/android/ads/b$a;->b:Lcn/domob/android/ads/b$a;

    if-ne v0, v1, :cond_0

    .line 243
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "AdView is expanding, pause() has been called. Cancel current \'pause()\'."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcn/domob/android/ads/b;->M:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public d(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 887
    const-string/jumbo v0, "up_skip"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 888
    return-void
.end method

.method protected d(Z)V
    .locals 0

    .prologue
    .line 485
    iput-boolean p1, p0, Lcn/domob/android/ads/b;->R:Z

    .line 486
    return-void
.end method

.method protected e()V
    .locals 6

    .prologue
    .line 251
    iget-object v0, p0, Lcn/domob/android/ads/b;->m:Lcn/domob/android/ads/b$d;

    sget-object v1, Lcn/domob/android/ads/b$d;->a:Lcn/domob/android/ads/b$d;

    if-ne v0, v1, :cond_0

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 253
    iget-wide v2, p0, Lcn/domob/android/ads/b;->Y:J

    iget-wide v4, p0, Lcn/domob/android/ads/b;->X:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/domob/android/ads/b;->Y:J

    .line 254
    sget-object v0, Lcn/domob/android/ads/b$d;->b:Lcn/domob/android/ads/b$d;

    iput-object v0, p0, Lcn/domob/android/ads/b;->m:Lcn/domob/android/ads/b$d;

    .line 255
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause timing current ad has shown seconds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/domob/android/ads/b;->h()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 257
    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcn/domob/android/ads/b;->N:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public e(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 892
    const-string v0, "download_finish"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 893
    return-void
.end method

.method protected f()V
    .locals 5

    .prologue
    .line 260
    iget-object v0, p0, Lcn/domob/android/ads/b;->l:Lcn/domob/android/ads/b$c;

    sget-object v1, Lcn/domob/android/ads/b$c;->a:Lcn/domob/android/ads/b$c;

    if-ne v0, v1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/b;->k:Lcn/domob/android/ads/b$a;

    sget-object v1, Lcn/domob/android/ads/b$a;->a:Lcn/domob/android/ads/b$a;

    if-ne v0, v1, :cond_3

    .line 265
    iget-boolean v0, p0, Lcn/domob/android/ads/b;->S:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/domob/android/ads/b;->V:I

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcn/domob/android/ads/b;->g()V

    .line 267
    iget v0, p0, Lcn/domob/android/ads/b;->V:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcn/domob/android/ads/b;->Y:J

    sub-long/2addr v0, v2

    .line 269
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 270
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "Maybe there is no ad, request no."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcn/domob/android/ads/b;->l()V

    goto :goto_0

    .line 273
    :cond_2
    sget-object v2, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resume with remaining time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lcn/domob/android/ads/b;->W:Landroid/os/Handler;

    iget-object v3, p0, Lcn/domob/android/ads/b;->f:Lcn/domob/android/ads/b$b;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    sget-object v0, Lcn/domob/android/ads/b$c;->a:Lcn/domob/android/ads/b$c;

    iput-object v0, p0, Lcn/domob/android/ads/b;->l:Lcn/domob/android/ads/b$c;

    goto :goto_0

    .line 278
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/b;->k:Lcn/domob/android/ads/b$a;

    sget-object v1, Lcn/domob/android/ads/b$a;->b:Lcn/domob/android/ads/b$a;

    if-ne v0, v1, :cond_0

    .line 279
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "AdView is expanding, cancel current \'resume()\'."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcn/domob/android/ads/b;->O:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public f(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 897
    const-string v0, "download_failed"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 898
    return-void
.end method

.method protected g()V
    .locals 6

    .prologue
    .line 287
    iget-object v0, p0, Lcn/domob/android/ads/b;->m:Lcn/domob/android/ads/b$d;

    sget-object v1, Lcn/domob/android/ads/b$d;->b:Lcn/domob/android/ads/b$d;

    if-ne v0, v1, :cond_0

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/domob/android/ads/b;->X:J

    .line 289
    sget-object v0, Lcn/domob/android/ads/b$d;->a:Lcn/domob/android/ads/b$d;

    iput-object v0, p0, Lcn/domob/android/ads/b;->m:Lcn/domob/android/ads/b$d;

    .line 290
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resume timing current ad has shown seconds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/domob/android/ads/b;->h()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "call resume timing, but current state is not pause"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lcn/domob/android/ads/b;->P:Ljava/lang/String;

    .line 952
    return-void
.end method

.method public g(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 902
    const-string v0, "download_start"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 903
    return-void
.end method

.method protected h()J
    .locals 8

    .prologue
    .line 302
    iget-object v0, p0, Lcn/domob/android/ads/b;->m:Lcn/domob/android/ads/b$d;

    sget-object v1, Lcn/domob/android/ads/b$d;->a:Lcn/domob/android/ads/b$d;

    if-ne v0, v1, :cond_0

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 304
    iget-wide v2, p0, Lcn/domob/android/ads/b;->Y:J

    iget-wide v4, p0, Lcn/domob/android/ads/b;->X:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    .line 310
    :goto_0
    sget-object v2, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v3, "get ad shown time: %d s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    div-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 311
    return-wide v0

    .line 305
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/b;->m:Lcn/domob/android/ads/b$d;

    sget-object v1, Lcn/domob/android/ads/b$d;->b:Lcn/domob/android/ads/b$d;

    if-ne v0, v1, :cond_1

    .line 306
    iget-wide v0, p0, Lcn/domob/android/ads/b;->Y:J

    goto :goto_0

    .line 308
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 955
    iput-object p1, p0, Lcn/domob/android/ads/b;->Q:Ljava/lang/String;

    .line 956
    return-void
.end method

.method public h(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 907
    const-string v0, "download_cancel"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 908
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/AdView;->a(Ljava/lang/String;)V

    .line 1025
    return-void
.end method

.method public i(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 912
    const-string v0, "download_repeat"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 913
    return-void
.end method

.method protected i()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcn/domob/android/ads/b;->S:Z

    return v0
.end method

.method public j(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 918
    return-void
.end method

.method protected j()Z
    .locals 2

    .prologue
    .line 334
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "Check settings and permissions."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcn/domob/android/ads/b;->J:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/b;->J:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "All permissions are ok."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x1

    .line 348
    :goto_0
    return v0

    .line 342
    :cond_0
    sget-object v0, Lcn/domob/android/ads/c/f;->a:Ljava/lang/String;

    const-string v1, "Permission denied."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    :cond_1
    sget-object v0, Lcn/domob/android/ads/c/f;->a:Ljava/lang/String;

    const-string v1, "Please set your PlacementID first."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected declared-synchronized k()V
    .locals 2

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/domob/android/ads/b;->R:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/ads/b;->U:Z

    if-nez v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcn/domob/android/ads/b;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :goto_0
    monitor-exit p0

    return-void

    .line 355
    :cond_0
    :try_start_1
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "Ignore auto request from AdView."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 922
    const-string v0, "download_md5_failed"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 923
    return-void
.end method

.method protected declared-synchronized l()V
    .locals 4

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-boolean v0, p0, Lcn/domob/android/ads/b;->U:Z

    if-nez v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcn/domob/android/ads/b;->C()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :goto_0
    monitor-exit p0

    return-void

    .line 364
    :cond_0
    :try_start_1
    sget-object v0, Lcn/domob/android/ads/b;->I:Lcn/domob/android/ads/c/f;

    const-string v1, "AdView is requesting."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 367
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcn/domob/android/ads/b;->W:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/b;->f:Lcn/domob/android/ads/b$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 368
    iget-object v0, p0, Lcn/domob/android/ads/b;->W:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/b;->f:Lcn/domob/android/ads/b$b;

    iget v2, p0, Lcn/domob/android/ads/b;->V:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcn/domob/android/ads/b;->J:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcn/domob/android/ads/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected o()I
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView;->e()I

    move-result v0

    return v0
.end method

.method protected p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    return-object v0
.end method

.method protected r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcn/domob/android/ads/b;->K:Ljava/lang/String;

    return-object v0
.end method

.method protected s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcn/domob/android/ads/b;->L:Ljava/lang/String;

    return-object v0
.end method

.method protected t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcn/domob/android/ads/b;->M:Ljava/lang/String;

    return-object v0
.end method

.method protected u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcn/domob/android/ads/b;->N:Ljava/lang/String;

    return-object v0
.end method

.method protected v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcn/domob/android/ads/b;->O:Ljava/lang/String;

    return-object v0
.end method

.method protected w()Landroid/content/Context;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected x()Z
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Lcn/domob/android/ads/b;->U:Z

    return v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcn/domob/android/ads/b;->V:I

    return v0
.end method

.method protected z()Lcn/domob/android/ads/AdListener;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView;->f()Lcn/domob/android/ads/AdListener;

    move-result-object v0

    return-object v0
.end method
