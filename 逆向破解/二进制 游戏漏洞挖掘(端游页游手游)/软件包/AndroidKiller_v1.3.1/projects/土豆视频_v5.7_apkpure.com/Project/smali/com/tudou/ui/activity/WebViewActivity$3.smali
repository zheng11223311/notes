.class Lcom/tudou/ui/activity/WebViewActivity$3;
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


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/WebViewActivity;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/tudou/ui/activity/WebViewActivity$3;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity$3;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/WebViewActivity;->access$300(Lcom/tudou/ui/activity/WebViewActivity;)Lcom/youku/widget/WebViewPopManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/activity/WebViewActivity$3;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/WebViewActivity;->access$200(Lcom/tudou/ui/activity/WebViewActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/WebViewPopManager;->show(Landroid/view/View;)V

    .line 124
    return-void
.end method
