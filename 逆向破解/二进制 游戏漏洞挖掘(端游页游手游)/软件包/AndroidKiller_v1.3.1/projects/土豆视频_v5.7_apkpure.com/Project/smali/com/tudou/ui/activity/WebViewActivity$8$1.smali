.class Lcom/tudou/ui/activity/WebViewActivity$8$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/WebViewActivity$8;->jsAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/activity/WebViewActivity$8;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/WebViewActivity$8;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/tudou/ui/activity/WebViewActivity$8$1;->this$1:Lcom/tudou/ui/activity/WebViewActivity$8;

    iput-object p2, p0, Lcom/tudou/ui/activity/WebViewActivity$8$1;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity$8$1;->val$str:Ljava/lang/String;

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 382
    return-void
.end method
