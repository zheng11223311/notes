.class public Lcom/youku/analytics/common/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "Youku_Analytics"

.field private static mDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/analytics/common/Log;->mDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 21
    sget-boolean v0, Lcom/youku/analytics/common/Log;->mDebug:Z

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "Youku_Analytics"

    invoke-static {p0}, Lcom/youku/analytics/common/Log;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 24
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-boolean v0, Lcom/youku/analytics/common/Log;->mDebug:Z

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "Youku_Analytics"

    invoke-static {p0}, Lcom/youku/analytics/common/Log;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static formatMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-boolean v0, Lcom/youku/analytics/common/Log;->mDebug:Z

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "Youku_Analytics"

    invoke-static {p0}, Lcom/youku/analytics/common/Log;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/youku/analytics/common/Log;->mDebug:Z

    return v0
.end method

.method public static setDebug(Z)V
    .locals 0
    .param p0, "debug"    # Z

    .prologue
    .line 13
    sput-boolean p0, Lcom/youku/analytics/common/Log;->mDebug:Z

    .line 14
    return-void
.end method

.method public static v(Ljava/lang/String;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-boolean v0, Lcom/youku/analytics/common/Log;->mDebug:Z

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "Youku_Analytics"

    invoke-static {p0}, Lcom/youku/analytics/common/Log;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-boolean v0, Lcom/youku/analytics/common/Log;->mDebug:Z

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "Youku_Analytics"

    invoke-static {p0}, Lcom/youku/analytics/common/Log;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
