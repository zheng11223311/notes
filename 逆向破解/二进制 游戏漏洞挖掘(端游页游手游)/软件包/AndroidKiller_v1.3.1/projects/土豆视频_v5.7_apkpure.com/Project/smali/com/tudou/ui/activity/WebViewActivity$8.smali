.class Lcom/tudou/ui/activity/WebViewActivity$8;
.super Ljava/lang/Object;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/activity/WebViewActivity;
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
    .line 371
    iput-object p1, p0, Lcom/tudou/ui/activity/WebViewActivity$8;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public jsAlert(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity$8;->this$0:Lcom/tudou/ui/activity/WebViewActivity;

    new-instance v1, Lcom/tudou/ui/activity/WebViewActivity$8$1;

    invoke-direct {v1, p0, p1}, Lcom/tudou/ui/activity/WebViewActivity$8$1;-><init>(Lcom/tudou/ui/activity/WebViewActivity$8;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 385
    return-void
.end method
