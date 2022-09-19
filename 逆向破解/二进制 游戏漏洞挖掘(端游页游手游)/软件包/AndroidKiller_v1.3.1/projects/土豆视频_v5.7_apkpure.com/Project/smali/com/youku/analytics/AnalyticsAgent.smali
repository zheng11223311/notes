.class public Lcom/youku/analytics/AnalyticsAgent;
.super Ljava/lang/Object;
.source "AnalyticsAgent.java"


# static fields
.field private static final REFER_PAGE:Ljava/lang/String; = "refercode"

.field private static final mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/youku/analytics/AnalyticsImp;

    invoke-direct {v0}, Lcom/youku/analytics/AnalyticsImp;-><init>()V

    sput-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/youku/analytics/AnalyticsImp;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    return-object v0
.end method

.method public static adPlayEnd(Landroid/content/Context;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "complete"    # Z
    .param p4, "userID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 317
    .local p3, "adUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    :cond_0
    const-string v0, "param is null or empty"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 341
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 322
    .local v4, "time":J
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 323
    .local v2, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/youku/analytics/AnalyticsAgent$7;

    move-object v3, p4

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/youku/analytics/AnalyticsAgent$7;-><init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ZLjava/util/ArrayList;)V

    .line 340
    .local v1, "creator":Lcom/youku/analytics/IActionCreator;
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v0, v2, v1}, Lcom/youku/analytics/AnalyticsImp;->trackEvent(Landroid/content/Context;Lcom/youku/analytics/IActionCreator;)V

    goto :goto_0
.end method

.method public static adPlayStart(Landroid/content/Context;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "complete"    # Z
    .param p4, "userID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 273
    .local p3, "adUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    const-string v0, "param is null or empty"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 298
    :goto_0
    return-void

    .line 277
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 278
    .local v4, "time":J
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 279
    .local v2, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/youku/analytics/AnalyticsAgent$6;

    move-object v3, p4

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/youku/analytics/AnalyticsAgent$6;-><init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ZLjava/util/ArrayList;)V

    .line 297
    .local v1, "creator":Lcom/youku/analytics/IActionCreator;
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v0, v2, v1}, Lcom/youku/analytics/AnalyticsImp;->trackEvent(Landroid/content/Context;Lcom/youku/analytics/IActionCreator;)V

    goto :goto_0
.end method

.method public static endSession(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v0, p0, p1}, Lcom/youku/analytics/AnalyticsImp;->endSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method static getAnalyticsBase()Lcom/youku/analytics/AnalyticsBase;
    .locals 1

    .prologue
    .line 701
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    return-object v0
.end method

.method public static getLastPageSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v0}, Lcom/youku/analytics/AnalyticsImp;->getLastPageSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "pid"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;

    .prologue
    .line 652
    invoke-static {p0, p1}, Lcom/youku/analytics/AnalyticsAgent;->setUserAgent(Landroid/content/Context;Ljava/lang/String;)V

    .line 653
    invoke-static {p0, p2}, Lcom/youku/analytics/AnalyticsAgent;->setPid(Landroid/content/Context;Ljava/lang/String;)V

    .line 654
    invoke-static {p3}, Lcom/youku/analytics/AnalyticsAgent;->setAppName(Ljava/lang/String;)V

    .line 655
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v0, p0}, Lcom/youku/analytics/AnalyticsImp;->getInitInfo(Landroid/content/Context;)V

    .line 656
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v0, p0}, Lcom/youku/analytics/AnalyticsImp;->requestLocation(Landroid/content/Context;)V

    .line 657
    return-void
.end method

.method public static onKillProcess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 624
    if-nez p0, :cond_0

    .line 625
    const-string v0, "param is null or empty"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 629
    :goto_0
    return-void

    .line 628
    :cond_0
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/youku/analytics/AnalyticsImp;->onKillProcess(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static pageClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "refercode"    # Ljava/lang/String;
    .param p5, "userID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p6, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 526
    const-string v3, "param is null or empty"

    invoke-static {v3}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 551
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 530
    .local v2, "appContext":Landroid/content/Context;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 531
    .local v4, "time":J
    invoke-static/range {p6 .. p6}, Lcom/youku/analytics/utils/Tools;->convertMapToString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v9

    .line 532
    .local v9, "extendStr":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "refercode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 535
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :cond_1
    sget-object v3, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/analytics/AnalyticsImp;->mPageSource:Ljava/lang/String;

    .line 538
    new-instance v1, Lcom/youku/analytics/AnalyticsAgent$12;

    move-object/from16 v3, p5

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v10, p4

    invoke-direct/range {v1 .. v10}, Lcom/youku/analytics/AnalyticsAgent$12;-><init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .local v1, "creator":Lcom/youku/analytics/IActionCreator;
    sget-object v3, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v3, v2, v1}, Lcom/youku/analytics/AnalyticsImp;->trackEvent(Landroid/content/Context;Lcom/youku/analytics/IActionCreator;)V

    goto :goto_0
.end method

.method public static pageClickWithSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "refercode"    # Ljava/lang/String;
    .param p5, "userID"    # Ljava/lang/String;
    .param p6, "session"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .line 469
    .local p7, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "A5"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 468
    invoke-static/range {v0 .. v8}, Lcom/youku/analytics/AnalyticsAgent;->processSessionEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public static playContinue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "playcode"    # Ljava/lang/String;
    .param p3, "userID"    # Ljava/lang/String;

    .prologue
    .line 195
    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    const-string v0, "param is null or empty"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 201
    .local v4, "time":J
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 202
    .local v2, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/youku/analytics/AnalyticsAgent$4;

    move-object v3, p3

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/youku/analytics/AnalyticsAgent$4;-><init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 218
    .local v1, "creator":Lcom/youku/analytics/IActionCreator;
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v0, v2, v1}, Lcom/youku/analytics/AnalyticsImp;->trackEvent(Landroid/content/Context;Lcom/youku/analytics/IActionCreator;)V

    goto :goto_0
.end method

.method public static playEnd(Landroid/content/Context;Lcom/youku/analytics/data/PlayActionData$Builder;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Lcom/youku/analytics/data/PlayActionData$Builder;
    .param p2, "userID"    # Ljava/lang/String;

    .prologue
    .line 231
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->getVid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    const-string v0, "param is null or empty"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 237
    .local v4, "time":J
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 238
    .local v2, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/youku/analytics/AnalyticsAgent$5;

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/youku/analytics/AnalyticsAgent$5;-><init>(Landroid/content/Context;Ljava/lang/String;JLcom/youku/analytics/data/PlayActionData$Builder;)V

    .line 253
    .local v1, "creator":Lcom/youku/analytics/IActionCreator;
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v0, v2, v1}, Lcom/youku/analytics/AnalyticsImp;->trackEvent(Landroid/content/Context;Lcom/youku/analytics/IActionCreator;)V

    goto :goto_0
.end method

.method public static playHeart(Landroid/content/Context;Lcom/youku/analytics/data/PlayActionData$Builder;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Lcom/youku/analytics/data/PlayActionData$Builder;
    .param p2, "userID"    # Ljava/lang/String;

    .prologue
    .line 345
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->getVid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    :cond_0
    const-string v0, "param is null or empty"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 366
    :goto_0
    return-void

    .line 350
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 351
    .local v4, "time":J
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 352
    .local v2, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/youku/analytics/AnalyticsAgent$8;

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/youku/analytics/AnalyticsAgent$8;-><init>(Landroid/content/Context;Ljava/lang/String;JLcom/youku/analytics/data/PlayActionData$Builder;)V

    .line 365
    .local v1, "creator":Lcom/youku/analytics/IActionCreator;
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v0, v2, v1}, Lcom/youku/analytics/AnalyticsImp;->trackEvent(Landroid/content/Context;Lcom/youku/analytics/IActionCreator;)V

    goto :goto_0
.end method

.method public static playPause(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "userID"    # Ljava/lang/String;

    .prologue
    .line 159
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    const-string v0, "param is null or empty"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 179
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 164
    .local v4, "time":J
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 165
    .local v2, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/youku/analytics/AnalyticsAgent$3;

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/youku/analytics/AnalyticsAgent$3;-><init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    .line 178
    .local v1, "creator":Lcom/youku/analytics/IActionCreator;
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v0, v2, v1}, Lcom/youku/analytics/AnalyticsImp;->trackEvent(Landroid/content/Context;Lcom/youku/analytics/IActionCreator;)V

    goto :goto_0
.end method

.method public static playRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "playType"    # Ljava/lang/String;
    .param p3, "userID"    # Ljava/lang/String;

    .prologue
    .line 91
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    const-string v0, "param is null or empty"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 96
    .local v4, "time":J
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 97
    .local v2, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/youku/analytics/AnalyticsAgent$1;

    move-object v3, p3

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/youku/analytics/AnalyticsAgent$1;-><init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v1, "creator":Lcom/youku/analytics/IActionCreator;
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v0, v2, v1}, Lcom/youku/analytics/AnalyticsImp;->trackEvent(Landroid/content/Context;Lcom/youku/analytics/IActionCreator;)V

    goto :goto_0
.end method

.method public static playStart(Landroid/content/Context;Lcom/youku/analytics/data/PlayActionData$Builder;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Lcom/youku/analytics/data/PlayActionData$Builder;
    .param p2, "userID"    # Ljava/lang/String;

    .prologue
    .line 122
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->getVid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    const-string v0, "param is null or empty"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 145
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 128
    .local v4, "time":J
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 129
    .local v2, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/youku/analytics/AnalyticsAgent$2;

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/youku/analytics/AnalyticsAgent$2;-><init>(Landroid/content/Context;Ljava/lang/String;JLcom/youku/analytics/data/PlayActionData$Builder;)V

    .line 144
    .local v1, "creator":Lcom/youku/analytics/IActionCreator;
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v0, v2, v1}, Lcom/youku/analytics/AnalyticsImp;->trackEvent(Landroid/content/Context;Lcom/youku/analytics/IActionCreator;)V

    goto :goto_0
.end method

.method public static playerEvent(Landroid/content/Context;Lcom/youku/analytics/data/PlayActionData$Builder;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Lcom/youku/analytics/data/PlayActionData$Builder;
    .param p2, "userID"    # Ljava/lang/String;

    .prologue
    .line 370
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p1}, Lcom/youku/analytics/data/PlayActionData$Builder;->getVid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    :cond_0
    const-string v0, "param is null or empty"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 391
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 376
    .local v4, "time":J
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 377
    .local v2, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/youku/analytics/AnalyticsAgent$9;

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/youku/analytics/AnalyticsAgent$9;-><init>(Landroid/content/Context;Ljava/lang/String;JLcom/youku/analytics/data/PlayActionData$Builder;)V

    .line 390
    .local v1, "creator":Lcom/youku/analytics/IActionCreator;
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v0, v2, v1}, Lcom/youku/analytics/AnalyticsImp;->trackEvent(Landroid/content/Context;Lcom/youku/analytics/IActionCreator;)V

    goto :goto_0
.end method

.method private static processSessionEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "refercode"    # Ljava/lang/String;
    .param p5, "userID"    # Ljava/lang/String;
    .param p6, "session"    # Ljava/lang/String;
    .param p8, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 477
    .local p7, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 478
    :cond_0
    const-string v5, "param is null or empty"

    invoke-static {v5}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 520
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x20

    if-le v5, v7, :cond_2

    .line 482
    const-string/jumbo v5, "session length exceed 32!"

    invoke-static {v5}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 485
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 486
    .local v4, "appContext":Landroid/content/Context;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 487
    .local v8, "time":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-static {v8, v9}, Lcom/youku/analytics/utils/Tools;->createSession(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 487
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 489
    .local v6, "newSession":Ljava/lang/String;
    invoke-static/range {p7 .. p7}, Lcom/youku/analytics/utils/Tools;->convertMapToString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v13

    .line 491
    .local v13, "extendStr":Ljava/lang/String;
    const-string v5, "A3"

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 492
    if-eqz p7, :cond_3

    const-string/jumbo v5, "refercode"

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 493
    sget-object v5, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    iput-object v13, v5, Lcom/youku/analytics/AnalyticsImp;->mPageSource:Ljava/lang/String;

    .line 502
    :cond_3
    :goto_1
    new-instance v3, Lcom/youku/analytics/AnalyticsAgent$11;

    move-object/from16 v5, p8

    move-object/from16 v7, p5

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v14, p4

    invoke-direct/range {v3 .. v14}, Lcom/youku/analytics/AnalyticsAgent$11;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    .local v3, "creator":Lcom/youku/analytics/IActionCreator;
    sget-object v5, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v5, v4, v3}, Lcom/youku/analytics/AnalyticsImp;->trackEventAndSend(Landroid/content/Context;Lcom/youku/analytics/IActionCreator;)V

    goto :goto_0

    .line 495
    .end local v3    # "creator":Lcom/youku/analytics/IActionCreator;
    :cond_4
    const-string v5, "A5"

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .local v2, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "refercode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 499
    const-string v5, "&"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :cond_5
    sget-object v5, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/analytics/AnalyticsImp;->mPageSource:Ljava/lang/String;

    goto :goto_1
.end method

.method public static setAppName(Ljava/lang/String;)V
    .locals 1
    .param p0, "appName"    # Ljava/lang/String;

    .prologue
    .line 660
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v0, p0}, Lcom/youku/analytics/AnalyticsImp;->setAppName(Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public static setCaCheSize(I)V
    .locals 0
    .param p0, "size"    # I

    .prologue
    .line 570
    sput p0, Lcom/youku/analytics/Constants;->cacheSize:I

    .line 571
    return-void
.end method

.method public static setCachePersentage(F)V
    .locals 1
    .param p0, "persentage"    # F

    .prologue
    .line 580
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1

    .line 581
    :cond_0
    const-string v0, "persentage is not valid"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 585
    :goto_0
    return-void

    .line 584
    :cond_1
    sput p0, Lcom/youku/analytics/Constants;->cachePersentage:F

    goto :goto_0
.end method

.method public static setContinueSessionMillis(J)V
    .locals 0
    .param p0, "time"    # J

    .prologue
    .line 560
    sput-wide p0, Lcom/youku/analytics/Constants;->sessionInternal:J

    .line 561
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0
    .param p0, "debug"    # Z

    .prologue
    .line 74
    invoke-static {p0}, Lcom/youku/analytics/common/Log;->setDebug(Z)V

    .line 75
    return-void
.end method

.method public static setEventSize(I)V
    .locals 0
    .param p0, "size"    # I

    .prologue
    .line 603
    sput p0, Lcom/youku/analytics/Constants;->collectionSize:I

    .line 604
    return-void
.end method

.method public static setPid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    .line 671
    if-nez p0, :cond_0

    .line 672
    const-string v0, "context is null."

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 680
    :goto_0
    return-void

    .line 675
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    const-string v0, "pid is null or empty."

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 679
    :cond_1
    sput-object p1, Lcom/youku/analytics/data/Device;->pid:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setReportInterval(J)V
    .locals 0
    .param p0, "time"    # J

    .prologue
    .line 594
    sput-wide p0, Lcom/youku/analytics/Constants;->reportInterval:J

    .line 595
    return-void
.end method

.method public static setTest(Z)V
    .locals 1
    .param p0, "isTest"    # Z

    .prologue
    .line 692
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v0, p0}, Lcom/youku/analytics/AnalyticsImp;->setTest(Z)V

    .line 693
    return-void
.end method

.method public static setTestHost(Z)V
    .locals 0
    .param p0, "isTest"    # Z

    .prologue
    .line 688
    sput-boolean p0, Lcom/youku/analytics/Constants;->isTestHost:Z

    .line 689
    return-void
.end method

.method public static setTrackLocation(Z)V
    .locals 0
    .param p0, "isTrack"    # Z

    .prologue
    .line 612
    sput-boolean p0, Lcom/youku/analytics/Constants;->isTrackLocation:Z

    .line 613
    return-void
.end method

.method public static setUserAgent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 639
    if-nez p0, :cond_0

    .line 640
    const-string v0, "context is null."

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 648
    :goto_0
    return-void

    .line 643
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    const-string/jumbo v0, "userAgent is null or empty."

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 647
    :cond_1
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v0, p1}, Lcom/youku/analytics/AnalyticsImp;->setUserAgent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startSession(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "userID"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v0, p0, p1, p2}, Lcom/youku/analytics/AnalyticsImp;->startSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static trackCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "userID"    # Ljava/lang/String;

    .prologue
    .line 409
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/youku/analytics/AnalyticsAgent;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 410
    return-void
.end method

.method public static trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "userID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 431
    .local p5, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 432
    const-string v0, "param is null or empty"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 455
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 436
    .local v2, "appContext":Landroid/content/Context;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 437
    .local v4, "time":J
    invoke-static {p5}, Lcom/youku/analytics/utils/Tools;->convertMapToString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v9

    .line 438
    .local v9, "extendStr":Ljava/lang/String;
    if-eqz p5, :cond_1

    const-string/jumbo v0, "refercode"

    invoke-virtual {p5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    iput-object v9, v0, Lcom/youku/analytics/AnalyticsImp;->mPageSource:Ljava/lang/String;

    .line 442
    :cond_1
    new-instance v1, Lcom/youku/analytics/AnalyticsAgent$10;

    move-object v3, p4

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/youku/analytics/AnalyticsAgent$10;-><init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .local v1, "creator":Lcom/youku/analytics/IActionCreator;
    sget-object v0, Lcom/youku/analytics/AnalyticsAgent;->mAnalyticImp:Lcom/youku/analytics/AnalyticsImp;

    invoke-virtual {v0, v2, v1}, Lcom/youku/analytics/AnalyticsImp;->trackEvent(Landroid/content/Context;Lcom/youku/analytics/IActionCreator;)V

    goto :goto_0
.end method

.method public static trackExtendCustomEventWithSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "userID"    # Ljava/lang/String;
    .param p5, "session"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p6, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 462
    const-string v8, "A3"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 461
    invoke-static/range {v0 .. v8}, Lcom/youku/analytics/AnalyticsAgent;->processSessionEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 463
    return-void
.end method
