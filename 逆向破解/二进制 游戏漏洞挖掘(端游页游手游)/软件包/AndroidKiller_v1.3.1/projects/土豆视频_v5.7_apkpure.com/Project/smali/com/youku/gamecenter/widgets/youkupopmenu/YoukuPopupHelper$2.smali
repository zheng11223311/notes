.class final Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupHelper$2;
.super Ljava/lang/Object;
.source "YoukuPopupHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupHelper;->fixPopupWindow(Landroid/widget/PopupWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mAnchorField:Ljava/lang/reflect/Field;

.field final synthetic val$mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field final synthetic val$window:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;Landroid/widget/PopupWindow;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupHelper$2;->val$mAnchorField:Ljava/lang/reflect/Field;

    iput-object p2, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupHelper$2;->val$window:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupHelper$2;->val$mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 6

    .prologue
    .line 84
    :try_start_0
    const-class v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupHelper$2;->val$mAnchorField:Ljava/lang/reflect/Field;

    iget-object v5, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupHelper$2;->val$window:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 86
    .local v2, "mAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<*>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 89
    .local v0, "anchor":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_1

    .line 97
    .end local v0    # "anchor":Ljava/lang/Object;
    .end local v2    # "mAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<*>;"
    :goto_1
    return-void

    .line 86
    .restart local v2    # "mAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<*>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    .restart local v0    # "anchor":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupHelper$2;->val$mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v3}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 94
    .end local v0    # "anchor":Ljava/lang/Object;
    .end local v2    # "mAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<*>;"
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
