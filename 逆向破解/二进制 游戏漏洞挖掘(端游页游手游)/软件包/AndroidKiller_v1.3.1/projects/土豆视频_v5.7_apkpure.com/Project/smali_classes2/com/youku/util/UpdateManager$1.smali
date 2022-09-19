.class Lcom/youku/util/UpdateManager$1;
.super Landroid/os/Handler;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/util/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/util/UpdateManager;


# direct methods
.method constructor <init>(Lcom/youku/util/UpdateManager;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/youku/util/UpdateManager$1;->this$0:Lcom/youku/util/UpdateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/youku/util/UpdateManager$1;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$100(Lcom/youku/util/UpdateManager;)Lcom/youku/widget/TudouProDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/util/UpdateManager$1;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v1}, Lcom/youku/util/UpdateManager;->access$000(Lcom/youku/util/UpdateManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouProDialog;->setProgress(I)V

    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v0, p0, Lcom/youku/util/UpdateManager$1;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$200(Lcom/youku/util/UpdateManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/util/UpdateManager$1;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v1}, Lcom/youku/util/UpdateManager;->access$300(Lcom/youku/util/UpdateManager;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;J)V

    .line 68
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->installApk()V

    .line 70
    iget-object v0, p0, Lcom/youku/util/UpdateManager$1;->this$0:Lcom/youku/util/UpdateManager;

    invoke-static {v0}, Lcom/youku/util/UpdateManager;->access$400(Lcom/youku/util/UpdateManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
