.class public final Lcom/zijunlin/Zxing/decoding/InactivityTimer;
.super Ljava/lang/Object;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zijunlin/Zxing/decoding/InactivityTimer$1;,
        Lcom/zijunlin/Zxing/decoding/InactivityTimer$DaemonThreadFactory;
    }
.end annotation


# static fields
.field private static final INACTIVITY_DELAY_SECONDS:I = 0x12c


# instance fields
.field private final activity:Landroid/app/Activity;

.field private inactivityFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/zijunlin/Zxing/decoding/InactivityTimer$DaemonThreadFactory;

    invoke-direct {v0, v1}, Lcom/zijunlin/Zxing/decoding/InactivityTimer$DaemonThreadFactory;-><init>(Lcom/zijunlin/Zxing/decoding/InactivityTimer$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zijunlin/Zxing/decoding/InactivityTimer;->inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    iput-object v1, p0, Lcom/zijunlin/Zxing/decoding/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 40
    iput-object p1, p0, Lcom/zijunlin/Zxing/decoding/InactivityTimer;->activity:Landroid/app/Activity;

    .line 41
    invoke-virtual {p0}, Lcom/zijunlin/Zxing/decoding/InactivityTimer;->onActivity()V

    .line 42
    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zijunlin/Zxing/decoding/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/zijunlin/Zxing/decoding/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zijunlin/Zxing/decoding/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivity()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/zijunlin/Zxing/decoding/InactivityTimer;->cancel()V

    .line 49
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/zijunlin/Zxing/decoding/InactivityTimer;->cancel()V

    .line 60
    iget-object v0, p0, Lcom/zijunlin/Zxing/decoding/InactivityTimer;->inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 61
    return-void
.end method
