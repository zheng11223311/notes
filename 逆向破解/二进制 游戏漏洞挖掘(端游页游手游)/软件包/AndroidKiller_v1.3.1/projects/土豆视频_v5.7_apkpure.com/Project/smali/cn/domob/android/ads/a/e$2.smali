.class Lcn/domob/android/ads/a/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/e;->m()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/e;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/e;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcn/domob/android/ads/a/e$2;->a:Lcn/domob/android/ads/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 612
    iget-object v0, p0, Lcn/domob/android/ads/a/e$2;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->a(Lcn/domob/android/ads/a/e;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 614
    iget-object v0, p0, Lcn/domob/android/ads/a/e$2;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->p(Lcn/domob/android/ads/a/e;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/a/e$2;->a:Lcn/domob/android/ads/a/e;

    iget-object v2, p0, Lcn/domob/android/ads/a/e$2;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v2}, Lcn/domob/android/ads/a/e;->e(Lcn/domob/android/ads/a/e;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "d_next_on.png"

    invoke-static {v1, v2, v3}, Lcn/domob/android/ads/a/e;->a(Lcn/domob/android/ads/a/e;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 621
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 616
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 617
    iget-object v0, p0, Lcn/domob/android/ads/a/e$2;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->p(Lcn/domob/android/ads/a/e;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/a/e$2;->a:Lcn/domob/android/ads/a/e;

    iget-object v2, p0, Lcn/domob/android/ads/a/e$2;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v2}, Lcn/domob/android/ads/a/e;->e(Lcn/domob/android/ads/a/e;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "d_next.png"

    invoke-static {v1, v2, v3}, Lcn/domob/android/ads/a/e;->a(Lcn/domob/android/ads/a/e;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
