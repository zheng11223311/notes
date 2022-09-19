.class Lcom/mobisage/android/MobiSageAdBanner$SwicthAnimeListener;
.super Ljava/lang/Object;
.source "MobiSageAdBanner.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageAdBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwicthAnimeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageAdBanner;


# direct methods
.method private constructor <init>(Lcom/mobisage/android/MobiSageAdBanner;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdBanner$SwicthAnimeListener;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobisage/android/MobiSageAdBanner;Lcom/mobisage/android/MobiSageAdBanner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobisage/android/MobiSageAdBanner;
    .param p2, "x1"    # Lcom/mobisage/android/MobiSageAdBanner$1;

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageAdBanner$SwicthAnimeListener;-><init>(Lcom/mobisage/android/MobiSageAdBanner;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 251
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdBanner$SwicthAnimeListener;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v0, v1, Lcom/mobisage/android/MobiSageAdBanner;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    .line 252
    .local v0, "temp":Lcom/mobisage/android/MobiSageAdWebView;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdBanner$SwicthAnimeListener;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdBanner$SwicthAnimeListener;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v2, v2, Lcom/mobisage/android/MobiSageAdBanner;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    iput-object v2, v1, Lcom/mobisage/android/MobiSageAdBanner;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    .line 253
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdBanner$SwicthAnimeListener;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iput-object v0, v1, Lcom/mobisage/android/MobiSageAdBanner;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    .line 254
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdBanner$SwicthAnimeListener;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v1, v1, Lcom/mobisage/android/MobiSageAdBanner;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mobisage/android/MobiSageAdWebView;->clearCache(Z)V

    .line 255
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdBanner$SwicthAnimeListener;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v1, v1, Lcom/mobisage/android/MobiSageAdBanner;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v1}, Lcom/mobisage/android/MobiSageAdWebView;->destroyDrawingCache()V

    .line 256
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdBanner$SwicthAnimeListener;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v1, v1, Lcom/mobisage/android/MobiSageAdBanner;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v1}, Lcom/mobisage/android/MobiSageAdWebView;->clearView()V

    .line 257
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 261
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 247
    return-void
.end method
