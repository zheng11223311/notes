.class Lcn/domob/android/ads/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/k$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/i$a;
    }
.end annotation


# static fields
.field public static a:Z = false

.field protected static final b:I = 0x6

.field private static c:Lcn/domob/android/ads/c/f; = null

.field private static d:Z = false

.field private static final h:Ljava/lang/String; = "sdk"

.field private static final i:Ljava/lang/String; = "rt"

.field private static final j:Ljava/lang/String; = "ts"

.field private static final k:Ljava/lang/String; = "ua"

.field private static final l:Ljava/lang/String; = "ipb"

.field private static final m:Ljava/lang/String; = "v"

.field private static final n:Ljava/lang/String; = "sv"


# instance fields
.field private e:Lcn/domob/android/ads/k;

.field private f:Lcn/domob/android/ads/b;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/c/f;

    .line 16
    sput-boolean v2, Lcn/domob/android/ads/i;->d:Z

    .line 18
    sput-boolean v2, Lcn/domob/android/ads/i;->a:Z

    return-void
.end method

.method public constructor <init>(Lcn/domob/android/ads/b;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/c/f;

    const-string v1, "New instance of ConfigRequest."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcn/domob/android/ads/i;->f:Lcn/domob/android/ads/b;

    .line 43
    invoke-virtual {p1}, Lcn/domob/android/ads/b;->w()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/i;->g:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    const-string/jumbo v1, "sdk"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v1, "rt"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string/jumbo v1, "ua"

    iget-object v2, p0, Lcn/domob/android/ads/i;->g:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "ipb"

    iget-object v2, p0, Lcn/domob/android/ads/i;->f:Lcn/domob/android/ads/b;

    invoke-virtual {v2}, Lcn/domob/android/ads/b;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string/jumbo v1, "v"

    const-string v2, "%s-%s-%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "20141205"

    aput-object v5, v3, v4

    const-string v4, "android"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "20140829"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v1, "sv"

    const-string v2, "040305"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {v0}, Lcn/domob/android/ads/c/e;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/domob/android/d/a;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 53
    sget-boolean v0, Lcn/domob/android/ads/i;->d:Z

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lcn/domob/android/d/a;

    invoke-direct {v0}, Lcn/domob/android/d/a;-><init>()V

    throw v0

    .line 58
    :cond_0
    sput-boolean v1, Lcn/domob/android/ads/i;->d:Z

    .line 60
    :try_start_0
    sget-object v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/c/f;

    const-string v1, "Start to request config info"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcn/domob/android/ads/i;->b()Ljava/lang/String;

    move-result-object v6

    .line 62
    sget-object v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config req string:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcn/domob/android/ads/k;

    iget-object v1, p0, Lcn/domob/android/ads/i;->g:Landroid/content/Context;

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

    iput-object v0, p0, Lcn/domob/android/ads/i;->e:Lcn/domob/android/ads/k;

    .line 66
    iget-object v0, p0, Lcn/domob/android/ads/i;->e:Lcn/domob/android/ads/k;

    invoke-virtual {v0}, Lcn/domob/android/ads/k;->c()V

    .line 67
    iget-object v0, p0, Lcn/domob/android/ads/i;->e:Lcn/domob/android/ads/k;

    invoke-virtual {v0}, Lcn/domob/android/ads/k;->e()Ljava/lang/String;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    sget-object v1, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Config resp string:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 72
    new-instance v1, Lcn/domob/android/ads/j;

    invoke-direct {v1, v0}, Lcn/domob/android/ads/j;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Lcn/domob/android/ads/j;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/b/a;->a(Ljava/util/ArrayList;)V

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcn/domob/android/ads/i;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :goto_0
    sput-boolean v9, Lcn/domob/android/ads/i;->d:Z

    .line 92
    :goto_1
    return-void

    .line 77
    :cond_1
    :try_start_1
    sget-object v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/c/f;

    const-string v1, "Config respStr is null."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    sput-boolean v9, Lcn/domob/android/ads/i;->d:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    sput-boolean v9, Lcn/domob/android/ads/i;->d:Z

    throw v0
.end method

.method public a(Lcn/domob/android/ads/k;)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method
