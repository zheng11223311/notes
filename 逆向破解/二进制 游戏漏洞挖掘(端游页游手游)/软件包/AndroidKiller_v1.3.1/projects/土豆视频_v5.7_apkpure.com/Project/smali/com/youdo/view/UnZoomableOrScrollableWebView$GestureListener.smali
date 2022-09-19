.class Lcom/youdo/view/UnZoomableOrScrollableWebView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/view/UnZoomableOrScrollableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/view/UnZoomableOrScrollableWebView;


# direct methods
.method private constructor <init>(Lcom/youdo/view/UnZoomableOrScrollableWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView$GestureListener;->this$0:Lcom/youdo/view/UnZoomableOrScrollableWebView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youdo/view/UnZoomableOrScrollableWebView;Lcom/youdo/view/UnZoomableOrScrollableWebView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/youdo/view/UnZoomableOrScrollableWebView$GestureListener;-><init>(Lcom/youdo/view/UnZoomableOrScrollableWebView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView$GestureListener;->this$0:Lcom/youdo/view/UnZoomableOrScrollableWebView;

    invoke-static {v0}, Lcom/youdo/view/UnZoomableOrScrollableWebView;->access$100(Lcom/youdo/view/UnZoomableOrScrollableWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView$GestureListener;->this$0:Lcom/youdo/view/UnZoomableOrScrollableWebView;

    invoke-static {v0}, Lcom/youdo/view/UnZoomableOrScrollableWebView;->access$200(Lcom/youdo/view/UnZoomableOrScrollableWebView;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return v1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView$GestureListener;->this$0:Lcom/youdo/view/UnZoomableOrScrollableWebView;

    invoke-static {v0}, Lcom/youdo/view/UnZoomableOrScrollableWebView;->access$100(Lcom/youdo/view/UnZoomableOrScrollableWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/youdo/view/UnZoomableOrScrollableWebView$GestureListener;->this$0:Lcom/youdo/view/UnZoomableOrScrollableWebView;

    invoke-static {v0}, Lcom/youdo/view/UnZoomableOrScrollableWebView;->access$200(Lcom/youdo/view/UnZoomableOrScrollableWebView;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
