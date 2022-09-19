.class Lcom/youku/gamecenter/services/YoukuAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "YoukuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/services/YoukuAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/gamecenter/services/YoukuAsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/gamecenter/services/YoukuAsyncTask$1;

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/youku/gamecenter/services/YoukuAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 358
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/gamecenter/services/YoukuAsyncTask$YoukuAsyncTaskResult;

    .line 359
    .local v0, "result":Lcom/youku/gamecenter/services/YoukuAsyncTask$YoukuAsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 371
    :goto_0
    return-void

    .line 362
    :pswitch_0
    iget-object v1, v0, Lcom/youku/gamecenter/services/YoukuAsyncTask$YoukuAsyncTaskResult;->mTask:Lcom/youku/gamecenter/services/YoukuAsyncTask;

    iget-object v2, v0, Lcom/youku/gamecenter/services/YoukuAsyncTask$YoukuAsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/youku/gamecenter/services/YoukuAsyncTask;->access$300(Lcom/youku/gamecenter/services/YoukuAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 365
    :pswitch_1
    iget-object v1, v0, Lcom/youku/gamecenter/services/YoukuAsyncTask$YoukuAsyncTaskResult;->mTask:Lcom/youku/gamecenter/services/YoukuAsyncTask;

    iget-object v2, v0, Lcom/youku/gamecenter/services/YoukuAsyncTask$YoukuAsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/services/YoukuAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 368
    :pswitch_2
    iget-object v1, v0, Lcom/youku/gamecenter/services/YoukuAsyncTask$YoukuAsyncTaskResult;->mTask:Lcom/youku/gamecenter/services/YoukuAsyncTask;

    invoke-virtual {v1}, Lcom/youku/gamecenter/services/YoukuAsyncTask;->onCancelled()V

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
