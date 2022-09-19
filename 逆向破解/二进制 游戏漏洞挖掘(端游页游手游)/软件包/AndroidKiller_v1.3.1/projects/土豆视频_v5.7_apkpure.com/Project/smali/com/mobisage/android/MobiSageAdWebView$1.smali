.class Lcom/mobisage/android/MobiSageAdWebView$1;
.super Landroid/webkit/WebChromeClient;
.source "MobiSageAdWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobisage/android/MobiSageAdWebView;-><init>(Landroid/content/Context;Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/IMobiSageAdViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageAdWebView;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageAdWebView;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdWebView$1;->this$0:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method
