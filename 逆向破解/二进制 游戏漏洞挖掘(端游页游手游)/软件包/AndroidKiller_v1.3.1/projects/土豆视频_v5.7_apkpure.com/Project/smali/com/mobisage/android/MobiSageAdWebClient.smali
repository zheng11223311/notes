.class Lcom/mobisage/android/MobiSageAdWebClient;
.super Landroid/webkit/WebViewClient;
.source "MobiSageAdWebClient.java"


# instance fields
.field public callback:Lcom/mobisage/android/IMobiSageAdWebViewCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdWebClient;->callback:Lcom/mobisage/android/IMobiSageAdWebViewCallback;

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdWebClient;->callback:Lcom/mobisage/android/IMobiSageAdWebViewCallback;

    invoke-interface {v0, p1}, Lcom/mobisage/android/IMobiSageAdWebViewCallback;->onWebViewLoadFinish(Landroid/webkit/WebView;)V

    .line 14
    :cond_0
    return-void
.end method
