.class Lcom/mobisage/android/MobiSageAdView$MobiSaegAdViewCallback;
.super Ljava/lang/Object;
.source "MobiSageAdView.java"

# interfaces
.implements Lcom/mobisage/android/IMobiSageAdWebViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobiSaegAdViewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageAdView;


# direct methods
.method private constructor <init>(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdView$MobiSaegAdViewCallback;->this$0:Lcom/mobisage/android/MobiSageAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/MobiSageAdView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobisage/android/MobiSageAdView;
    .param p2, "x1"    # Lcom/mobisage/android/MobiSageAdView$1;

    .prologue
    .line 786
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageAdView$MobiSaegAdViewCallback;-><init>(Lcom/mobisage/android/MobiSageAdView;)V

    return-void
.end method


# virtual methods
.method public onWebViewLoadFinish(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 790
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 791
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdView$MobiSaegAdViewCallback;->this$0:Lcom/mobisage/android/MobiSageAdView;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdView$MobiSaegAdViewCallback;->this$0:Lcom/mobisage/android/MobiSageAdView;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView$MobiSaegAdViewCallback;->this$0:Lcom/mobisage/android/MobiSageAdView;

    invoke-interface {v0, v1}, Lcom/mobisage/android/IMobiSageAdViewListener;->onMobiSageAdViewShow(Lcom/mobisage/android/MobiSageAdView;)V

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdView$MobiSaegAdViewCallback;->this$0:Lcom/mobisage/android/MobiSageAdView;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageAdView;->onLoadAdFinish()V

    .line 795
    return-void
.end method
