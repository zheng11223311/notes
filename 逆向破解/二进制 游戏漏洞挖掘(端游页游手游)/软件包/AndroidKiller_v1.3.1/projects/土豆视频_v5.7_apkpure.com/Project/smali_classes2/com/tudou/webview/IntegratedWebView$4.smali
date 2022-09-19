.class Lcom/tudou/webview/IntegratedWebView$4;
.super Ljava/lang/Object;
.source "IntegratedWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/webview/IntegratedWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/webview/IntegratedWebView;


# direct methods
.method constructor <init>(Lcom/tudou/webview/IntegratedWebView;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/tudou/webview/IntegratedWebView$4;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView$4;->this$0:Lcom/tudou/webview/IntegratedWebView;

    invoke-virtual {v0}, Lcom/tudou/webview/IntegratedWebView;->reloadUrl()V

    .line 307
    return-void
.end method
