.class Lcom/tudou/ui/activity/WebViewActivity$4;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/WebViewActivity;

.field final synthetic val$getCookie:Z

.field final synthetic val$isNeedReTry:Z


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/WebViewActivity;ZZ)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/tudou/ui/activity/WebViewActivity$4;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    iput-boolean p2, p0, Lcom/tudou/ui/activity/WebViewActivity$4;->val$getCookie:Z

    iput-boolean p3, p0, Lcom/tudou/ui/activity/WebViewActivity$4;->val$isNeedReTry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/tudou/ui/activity/WebViewActivity$4;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/WebViewActivity;->access$100(Lcom/tudou/ui/activity/WebViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lcom/tudou/ui/activity/WebViewActivity$4;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/WebViewActivity;->access$000(Lcom/tudou/ui/activity/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/tudou/ui/activity/WebViewActivity$4;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    iget-boolean v2, p0, Lcom/tudou/ui/activity/WebViewActivity$4;->val$getCookie:Z

    iget-boolean v3, p0, Lcom/tudou/ui/activity/WebViewActivity$4;->val$isNeedReTry:Z

    invoke-static {v1, v0, v2, v3}, Lcom/tudou/ui/activity/WebViewActivity;->access$400(Lcom/tudou/ui/activity/WebViewActivity;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method
