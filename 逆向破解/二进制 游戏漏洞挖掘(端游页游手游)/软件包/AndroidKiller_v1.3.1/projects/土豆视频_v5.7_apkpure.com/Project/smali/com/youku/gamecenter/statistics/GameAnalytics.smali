.class public Lcom/youku/gamecenter/statistics/GameAnalytics;
.super Ljava/lang/Object;
.source "GameAnalytics.java"


# static fields
.field public static final GAME_PAGE_HOME:Ljava/lang/String; = "\u6e38\u620f\u9996\u9875"

.field public static final GAME_PAGE_OPERATION:Ljava/lang/String; = "\u6e38\u620f\u8fd0\u8425\u9875"

.field public static final GAME_PAGE_SELECT:Ljava/lang/String; = "\u6e38\u620f\u5206\u7c7b"

.field public static final GAME_PAGE_TOP:Ljava/lang/String; = "\u6e38\u620f\u6392\u884c\u699c"

.field public static final GAME_TAB_HOME:Ljava/lang/String; = "gc_home"

.field public static final GAME_TAB_HOME_CLICK:Ljava/lang/String; = "\u6e38\u620f\u9996\u9875\u6ed1\u52a8\u6216\u70b9\u51fb"

.field public static final GAME_TAB_OPERATION:Ljava/lang/String; = "gameOperation"

.field public static final GAME_TAB_OPERATION_CLICK:Ljava/lang/String; = "\u8fd0\u8425tab\u70b9\u51fb\u6216\u6ed1\u52a8"

.field public static final GAME_TAB_SELECT:Ljava/lang/String; = "gameSelect"

.field public static final GAME_TAB_SELECT_CLICK:Ljava/lang/String; = "\u5206\u7c7btab\u70b9\u51fb\u6216\u6ed1\u52a8"

.field public static final GAME_TAB_TOP:Ljava/lang/String; = "gameTop"

.field public static final GAME_TAB_TOP_CLICK:Ljava/lang/String; = "\u6392\u884c\u699ctab\u70b9\u51fb\u6216\u6ed1\u52a8"

.field public static final PAGE_NAVIGATE:Ljava/lang/String; = "\u5bfc\u822a\u680f"

.field private static final PAGE_UERR_CENTER:Ljava/lang/String; = "\u4e2a\u4eba\u4e2d\u5fc3"

.field private static final REFRENCE_CODE:Ljava/lang/String; = "refercode"

.field public static isOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/gamecenter/statistics/GameAnalytics;->isOpen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static endSession(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    .line 140
    sget-boolean v0, Lcom/youku/gamecenter/statistics/GameAnalytics;->isOpen:Z

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/youku/analytics/AnalyticsAgent;->endSession(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static gameCardGameClick(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # I
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "gameid"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6e38\u620f\u5361\u7247\u6e38\u620f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u70b9\u51fb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MyCenter|gameCardVideoClick|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "code":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "vid"

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v3, "gameid"

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo v3, "\u4e2a\u4eba\u4e2d\u5fc3"

    invoke-static {p0, v1, v0, v2, v3}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackCustomClick(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static gameCardVideoClick(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # I
    .param p2, "vid"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6e38\u620f\u5361\u7247\u89c6\u9891"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u70b9\u51fb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MyCenter|gameCardVideoClick|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "code":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "vid"

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v3, "\u4e2a\u4eba\u4e2d\u5fc3"

    invoke-static {p0, v1, v0, v2, v3}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackCustomClick(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private static putRefercode(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .param p1, "refercode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    if-nez p0, :cond_0

    .line 57
    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .restart local p0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v0, "refercode"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_1
    return-object p0
.end method

.method public static startSession(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 134
    sget-boolean v0, Lcom/youku/gamecenter/statistics/GameAnalytics;->isOpen:Z

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/youku/analytics/AnalyticsAgent;->startSession(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static trackCustomClick(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "refercode"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "page"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 66
    sget-boolean v0, Lcom/youku/gamecenter/statistics/GameAnalytics;->isOpen:Z

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {p1, p2}, Lcom/youku/gamecenter/statistics/GameAnalytics;->putRefercode(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v4, v3

    move-object v5, p1

    .line 69
    invoke-static/range {v0 .. v5}, Lcom/youku/analytics/AnalyticsAgent;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public static trackPageClick(Landroid/content/Context;II)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentID"    # I
    .param p2, "targetID"    # I

    .prologue
    .line 75
    if-eq p1, p2, :cond_0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v2, "gc_home|"

    .line 78
    .local v2, "source":Ljava/lang/String;
    const-string v0, ""

    .line 79
    .local v0, "name":Ljava/lang/String;
    const-string v1, ""

    .line 80
    .local v1, "page":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 99
    :goto_1
    packed-switch p2, :pswitch_data_1

    .line 117
    :goto_2
    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v0, v1}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackCustomClick(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_0
    const-string v2, "gc_home|"

    .line 83
    const-string/jumbo v1, "\u6e38\u620f\u9996\u9875"

    .line 84
    goto :goto_1

    .line 86
    :pswitch_1
    const-string v2, "gameSelect|"

    .line 87
    const-string/jumbo v1, "\u6e38\u620f\u5206\u7c7b"

    .line 88
    goto :goto_1

    .line 90
    :pswitch_2
    const-string v2, "gameTop|"

    .line 91
    const-string/jumbo v1, "\u6e38\u620f\u6392\u884c\u699c"

    .line 92
    goto :goto_1

    .line 94
    :pswitch_3
    const-string v2, "gameOperation|"

    .line 95
    const-string/jumbo v1, "\u6e38\u620f\u8fd0\u8425\u9875"

    goto :goto_1

    .line 101
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gc_home"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    const-string/jumbo v0, "\u6e38\u620f\u9996\u9875\u6ed1\u52a8\u6216\u70b9\u51fb"

    .line 103
    goto :goto_2

    .line 105
    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gameSelect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    const-string/jumbo v0, "\u5206\u7c7btab\u70b9\u51fb\u6216\u6ed1\u52a8"

    .line 107
    goto :goto_2

    .line 109
    :pswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gameTop"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    const-string/jumbo v0, "\u6392\u884c\u699ctab\u70b9\u51fb\u6216\u6ed1\u52a8"

    .line 111
    goto :goto_2

    .line 113
    :pswitch_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gameOperation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    const-string/jumbo v0, "\u8fd0\u8425tab\u70b9\u51fb\u6216\u6ed1\u52a8"

    goto :goto_2

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 99
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static trackPageLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pltype"    # Ljava/lang/String;
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "page"    # Ljava/lang/String;

    .prologue
    .line 122
    const-wide/16 v2, -0x1

    cmp-long v1, p3, v2

    if-nez v1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "pltype"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v1, "st"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "et"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string/jumbo v1, "s"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v4, p5, p3

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p7}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackCustomClick(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
