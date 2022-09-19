.class Lcom/tudou/videoshare/WBShareActivity$1;
.super Landroid/os/Handler;
.source "WBShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/videoshare/WBShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/videoshare/WBShareActivity;


# direct methods
.method constructor <init>(Lcom/tudou/videoshare/WBShareActivity;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/tudou/videoshare/WBShareActivity$1;->this$0:Lcom/tudou/videoshare/WBShareActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tudou/videoshare/WBShareActivity$1;->this$0:Lcom/tudou/videoshare/WBShareActivity;

    invoke-static {v0}, Lcom/tudou/videoshare/WBShareActivity;->access$000(Lcom/tudou/videoshare/WBShareActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/tudou/videoshare/WBShareActivity$1;->this$0:Lcom/tudou/videoshare/WBShareActivity;

    invoke-virtual {v0}, Lcom/tudou/videoshare/WBShareActivity;->finish()V

    .line 151
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 152
    return-void
.end method
