.class Lcom/tudou/ui/activity/HomePageActivity$11;
.super Landroid/os/Handler;
.source "HomePageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/activity/HomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/HomePageActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/HomePageActivity;)V
    .locals 0

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/tudou/ui/activity/HomePageActivity$11;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1193
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1198
    :goto_0
    return-void

    .line 1195
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity$11;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/HomePageActivity;->access$600(Lcom/tudou/ui/activity/HomePageActivity;)Lcom/youku/widget/TudouProDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity$11;->this$0:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/HomePageActivity;->access$800(Lcom/tudou/ui/activity/HomePageActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouProDialog;->setProgress(I)V

    goto :goto_0

    .line 1193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
