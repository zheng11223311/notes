.class Lcom/tudou/ui/fragment/UploadFragment$8;
.super Landroid/os/Handler;
.source "UploadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/UploadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/UploadFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/UploadFragment;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadFragment$8;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 550
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 551
    sget-object v1, Lcom/tudou/ui/fragment/UploadFragment;->mFragment:Lcom/tudou/ui/fragment/UploadFragment;

    if-nez v1, :cond_0

    .line 563
    :goto_0
    return-void

    .line 554
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 555
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 557
    .local v0, "md5String":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment$8;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v1, v0}, Lcom/tudou/ui/fragment/UploadFragment;->access$900(Lcom/tudou/ui/fragment/UploadFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    .end local v0    # "md5String":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 558
    .restart local v0    # "md5String":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
