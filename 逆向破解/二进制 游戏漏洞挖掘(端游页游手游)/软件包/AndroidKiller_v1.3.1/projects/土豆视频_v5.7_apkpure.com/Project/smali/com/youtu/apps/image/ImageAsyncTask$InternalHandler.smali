.class Lcom/youtu/apps/image/ImageAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "ImageAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youtu/apps/image/ImageAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youtu/apps/image/ImageAsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youtu/apps/image/ImageAsyncTask$1;

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/youtu/apps/image/ImageAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 349
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youtu/apps/image/ImageAsyncTask$ImageAsyncTaskResult;

    .line 350
    .local v0, "result":Lcom/youtu/apps/image/ImageAsyncTask$ImageAsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 362
    :goto_0
    return-void

    .line 353
    :pswitch_0
    iget-object v1, v0, Lcom/youtu/apps/image/ImageAsyncTask$ImageAsyncTaskResult;->mTask:Lcom/youtu/apps/image/ImageAsyncTask;

    iget-object v2, v0, Lcom/youtu/apps/image/ImageAsyncTask$ImageAsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/youtu/apps/image/ImageAsyncTask;->access$300(Lcom/youtu/apps/image/ImageAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 356
    :pswitch_1
    iget-object v1, v0, Lcom/youtu/apps/image/ImageAsyncTask$ImageAsyncTaskResult;->mTask:Lcom/youtu/apps/image/ImageAsyncTask;

    iget-object v2, v0, Lcom/youtu/apps/image/ImageAsyncTask$ImageAsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/youtu/apps/image/ImageAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 359
    :pswitch_2
    iget-object v1, v0, Lcom/youtu/apps/image/ImageAsyncTask$ImageAsyncTaskResult;->mTask:Lcom/youtu/apps/image/ImageAsyncTask;

    invoke-virtual {v1}, Lcom/youtu/apps/image/ImageAsyncTask;->onCancelled()V

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
