.class Lcom/tudou/android/YoukuAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "YoukuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/android/YoukuAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tudou/android/YoukuAsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tudou/android/YoukuAsyncTask$1;

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/tudou/android/YoukuAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 356
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tudou/android/YoukuAsyncTask$YoukuAsyncTaskResult;

    .line 357
    .local v0, "result":Lcom/tudou/android/YoukuAsyncTask$YoukuAsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 369
    :goto_0
    return-void

    .line 360
    :pswitch_0
    iget-object v1, v0, Lcom/tudou/android/YoukuAsyncTask$YoukuAsyncTaskResult;->mTask:Lcom/tudou/android/YoukuAsyncTask;

    iget-object v2, v0, Lcom/tudou/android/YoukuAsyncTask$YoukuAsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/tudou/android/YoukuAsyncTask;->access$300(Lcom/tudou/android/YoukuAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 363
    :pswitch_1
    iget-object v1, v0, Lcom/tudou/android/YoukuAsyncTask$YoukuAsyncTaskResult;->mTask:Lcom/tudou/android/YoukuAsyncTask;

    iget-object v2, v0, Lcom/tudou/android/YoukuAsyncTask$YoukuAsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/tudou/android/YoukuAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 366
    :pswitch_2
    iget-object v1, v0, Lcom/tudou/android/YoukuAsyncTask$YoukuAsyncTaskResult;->mTask:Lcom/tudou/android/YoukuAsyncTask;

    invoke-virtual {v1}, Lcom/tudou/android/YoukuAsyncTask;->onCancelled()V

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
