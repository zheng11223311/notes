.class Lcom/mobisage/android/MobiSageJavascriptAgent$1;
.super Landroid/os/Handler;
.source "MobiSageJavascriptAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageJavascriptAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageJavascriptAgent;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$1;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$1;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageJavascriptAgent;->access$000(Lcom/mobisage/android/MobiSageJavascriptAgent;)Lcom/mobisage/android/MobiSageAdView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$1;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageJavascriptAgent;->access$000(Lcom/mobisage/android/MobiSageJavascriptAgent;)Lcom/mobisage/android/MobiSageAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageAdView;->onDestroy()V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$1;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageJavascriptAgent;->access$000(Lcom/mobisage/android/MobiSageJavascriptAgent;)Lcom/mobisage/android/MobiSageAdView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$1;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageJavascriptAgent;->access$000(Lcom/mobisage/android/MobiSageJavascriptAgent;)Lcom/mobisage/android/MobiSageAdView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mobisage/android/MobiSageAdView;->runJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$1;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageJavascriptAgent;->access$000(Lcom/mobisage/android/MobiSageJavascriptAgent;)Lcom/mobisage/android/MobiSageAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/mobisage/android/MobiSageJavascriptAgent$1;->this$0:Lcom/mobisage/android/MobiSageJavascriptAgent;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageJavascriptAgent;->access$000(Lcom/mobisage/android/MobiSageJavascriptAgent;)Lcom/mobisage/android/MobiSageAdView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mobisage/android/MobiSageAdView;->setWindowColor(Ljava/lang/String;)V

    goto :goto_0
.end method
