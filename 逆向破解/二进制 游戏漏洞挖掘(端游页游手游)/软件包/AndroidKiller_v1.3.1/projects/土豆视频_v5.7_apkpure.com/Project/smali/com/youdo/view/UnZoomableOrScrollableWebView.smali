.class public Lcom/youdo/view/UnZoomableOrScrollableWebView;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/view/UnZoomableOrScrollableWebView$1;,
        Lcom/youdo/view/UnZoomableOrScrollableWebView$GestureListener;
    }
.end annotation


# static fields
.field public static final CLASSTAG:Ljava/lang/String; = "UnZoomableOrScrollableWebView"


# instance fields
.field protected gestureDetector:Landroid/view/GestureDetector;

.field private mPreventAction:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPreventActionTime:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView;->mPreventAction:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView;->mPreventActionTime:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/youdo/view/UnZoomableOrScrollableWebView$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/youdo/view/UnZoomableOrScrollableWebView$GestureListener;-><init>(Lcom/youdo/view/UnZoomableOrScrollableWebView;Lcom/youdo/view/UnZoomableOrScrollableWebView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView;->mPreventAction:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView;->mPreventActionTime:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/youdo/view/UnZoomableOrScrollableWebView$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/youdo/view/UnZoomableOrScrollableWebView$GestureListener;-><init>(Lcom/youdo/view/UnZoomableOrScrollableWebView;Lcom/youdo/view/UnZoomableOrScrollableWebView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView;->mPreventAction:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView;->mPreventActionTime:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/youdo/view/UnZoomableOrScrollableWebView$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/youdo/view/UnZoomableOrScrollableWebView$GestureListener;-><init>(Lcom/youdo/view/UnZoomableOrScrollableWebView;Lcom/youdo/view/UnZoomableOrScrollableWebView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$100(Lcom/youdo/view/UnZoomableOrScrollableWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView;->mPreventAction:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youdo/view/UnZoomableOrScrollableWebView;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    iget-object v0, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView;->mPreventActionTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView;->mPreventAction:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView;->mPreventActionTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView;->mPreventAction:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "UnZoomableOrScrollableWebView"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "UnZoomableOrScrollableWebView"

    const-string v2, "Some versions of the OS get messed up when they aren\'t able to process all onTouch events!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
