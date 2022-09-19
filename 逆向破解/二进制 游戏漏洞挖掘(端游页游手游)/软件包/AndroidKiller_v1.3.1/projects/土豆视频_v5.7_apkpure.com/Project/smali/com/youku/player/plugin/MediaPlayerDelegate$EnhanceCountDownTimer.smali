.class Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;
.super Ljava/lang/Object;
.source "MediaPlayerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/plugin/MediaPlayerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnhanceCountDownTimer"
.end annotation


# static fields
.field public static final CANCEL:I = 0x2

.field public static final CANCEL_ON_TICK:I = 0x3

.field public static final START:I = 0x1


# instance fields
.field public isFinish:Z

.field private final mCountDownInterval:J

.field private mHandler:Landroid/os/Handler;

.field private mMillisInFuture:J

.field private final mStartWidthPercent:F

.field private mTimer:Landroid/os/CountDownTimer;

.field private mWidthPercent:F

.field final synthetic this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;


# direct methods
.method public constructor <init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 7

    .prologue
    const-wide/16 v4, 0xa

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 1897
    iput-object p1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1863
    iput-boolean v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->isFinish:Z

    .line 1864
    iput v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->mWidthPercent:F

    .line 1866
    iput v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->mStartWidthPercent:F

    .line 1868
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->mMillisInFuture:J

    .line 1869
    iput-wide v4, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->mCountDownInterval:J

    .line 1870
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->mTimer:Landroid/os/CountDownTimer;

    .line 1872
    new-instance v0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$1;

    invoke-direct {v0, p0}, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$1;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;)V

    iput-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->mHandler:Landroid/os/Handler;

    .line 1898
    iput-boolean v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->isFinish:Z

    .line 1899
    new-instance v0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$2;

    iget-wide v2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->mMillisInFuture:J

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer$2;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;JJLcom/youku/player/plugin/MediaPlayerDelegate;)V

    iput-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->mTimer:Landroid/os/CountDownTimer;

    .line 1926
    return-void
.end method

.method static synthetic access$300(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->mTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;)J
    .locals 2
    .param p0, "x0"    # Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    .prologue
    .line 1859
    iget-wide v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->mMillisInFuture:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;)F
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;

    .prologue
    .line 1859
    iget v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->mWidthPercent:F

    return v0
.end method

.method static synthetic access$602(Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;
    .param p1, "x1"    # F

    .prologue
    .line 1859
    iput p1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->mWidthPercent:F

    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1938
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1930
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$EnhanceCountDownTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1932
    :cond_0
    return-void
.end method
