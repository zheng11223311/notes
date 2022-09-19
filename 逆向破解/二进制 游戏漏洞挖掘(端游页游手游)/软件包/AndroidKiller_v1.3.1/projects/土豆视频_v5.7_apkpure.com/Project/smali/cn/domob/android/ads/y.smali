.class public Lcn/domob/android/ads/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcn/domob/android/ads/y;


# instance fields
.field private a:Lcn/domob/android/ads/c/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/y;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/c/f;

    return-void
.end method

.method public static declared-synchronized a()Lcn/domob/android/ads/y;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lcn/domob/android/ads/y;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/domob/android/ads/y;->b:Lcn/domob/android/ads/y;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcn/domob/android/ads/y;

    invoke-direct {v0}, Lcn/domob/android/ads/y;-><init>()V

    sput-object v0, Lcn/domob/android/ads/y;->b:Lcn/domob/android/ads/y;

    .line 22
    :cond_0
    sget-object v0, Lcn/domob/android/ads/y;->b:Lcn/domob/android/ads/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;JLcn/domob/android/ads/b;Lcn/domob/android/ads/e;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lcn/domob/android/ads/b;",
            "Lcn/domob/android/ads/e;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    const-string v7, "p"

    const-wide/16 v2, 0x64

    rem-long v2, p2, v2

    sub-long v8, p2, v2

    const/4 v10, 0x0

    move-object v3, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    invoke-virtual/range {v3 .. v10}, Lcn/domob/android/ads/y;->a(Lcn/domob/android/ads/b;Lcn/domob/android/ads/e;Ljava/util/HashMap;Ljava/lang/String;JLandroid/view/View;)V

    .line 50
    if-eqz p6, :cond_1

    .line 51
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 52
    if-eqz v2, :cond_1

    .line 53
    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 54
    aget-object v4, v2, v3

    invoke-static {v4}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 55
    new-instance v4, Lcn/domob/android/ads/u;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Lcn/domob/android/ads/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    aget-object v5, v2, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "third monitor( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcn/domob/android/ads/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method

.method protected a(Lcn/domob/android/ads/b;Lcn/domob/android/ads/e;Ljava/util/HashMap;Ljava/lang/String;JLandroid/view/View;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/android/ads/b;",
            "Lcn/domob/android/ads/e;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    const-string/jumbo v5, "s"

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v6, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/e;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/view/View;)V

    .line 77
    return-void
.end method

.method public a(Ljava/util/HashMap;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)[J"
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 35
    :goto_1
    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    .line 36
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    iget-object v1, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    move-wide v0, v2

    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [J

    .line 41
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v0, v2

    if-ge v1, v0, :cond_2

    .line 42
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v2, v1

    .line 41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 44
    :cond_2
    return-object v2
.end method
