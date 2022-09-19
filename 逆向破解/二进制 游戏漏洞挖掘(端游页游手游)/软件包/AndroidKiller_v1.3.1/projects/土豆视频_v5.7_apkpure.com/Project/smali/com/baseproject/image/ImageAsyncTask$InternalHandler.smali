.class Lcom/baseproject/image/ImageAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "ImageAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baseproject/image/ImageAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baseproject/image/ImageAsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/baseproject/image/ImageAsyncTask$1;

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/baseproject/image/ImageAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 350
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baseproject/image/ImageAsyncTask$ImageAsyncTaskResult;

    .line 351
    .local v0, "result":Lcom/baseproject/image/ImageAsyncTask$ImageAsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 363
    :goto_0
    return-void

    .line 354
    :pswitch_0
    iget-object v1, v0, Lcom/baseproject/image/ImageAsyncTask$ImageAsyncTaskResult;->mTask:Lcom/baseproject/image/ImageAsyncTask;

    iget-object v2, v0, Lcom/baseproject/image/ImageAsyncTask$ImageAsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/baseproject/image/ImageAsyncTask;->access$300(Lcom/baseproject/image/ImageAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 357
    :pswitch_1
    iget-object v1, v0, Lcom/baseproject/image/ImageAsyncTask$ImageAsyncTaskResult;->mTask:Lcom/baseproject/image/ImageAsyncTask;

    iget-object v2, v0, Lcom/baseproject/image/ImageAsyncTask$ImageAsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/baseproject/image/ImageAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 360
    :pswitch_2
    iget-object v1, v0, Lcom/baseproject/image/ImageAsyncTask$ImageAsyncTaskResult;->mTask:Lcom/baseproject/image/ImageAsyncTask;

    invoke-virtual {v1}, Lcom/baseproject/image/ImageAsyncTask;->onCancelled()V

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
