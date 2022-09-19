.class public Lcom/youku/analytics/AnalyticsExceptionHandler;
.super Ljava/lang/Object;
.source "AnalyticsExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mThrowableHandler:Lcom/youku/analytics/common/IThrowableHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 24
    :goto_0
    return-void

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/AnalyticsExceptionHandler;->mContext:Landroid/content/Context;

    .line 22
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/AnalyticsExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 23
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
.end method

.method public setThrowableHandler(Lcom/youku/analytics/common/IThrowableHandler;)V
    .locals 0
    .param p1, "throwableHandler"    # Lcom/youku/analytics/common/IThrowableHandler;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/youku/analytics/AnalyticsExceptionHandler;->mThrowableHandler:Lcom/youku/analytics/common/IThrowableHandler;

    .line 28
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    if-nez p2, :cond_1

    .line 33
    const-string v0, "Exception is null in handleException"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 40
    :cond_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsExceptionHandler;->mThrowableHandler:Lcom/youku/analytics/common/IThrowableHandler;

    iget-object v1, p0, Lcom/youku/analytics/AnalyticsExceptionHandler;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p2}, Lcom/youku/analytics/common/IThrowableHandler;->handleThrowable(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
