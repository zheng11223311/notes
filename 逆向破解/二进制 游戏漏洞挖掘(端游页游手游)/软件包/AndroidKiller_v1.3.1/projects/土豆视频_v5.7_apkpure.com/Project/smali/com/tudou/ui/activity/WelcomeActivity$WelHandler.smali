.class public Lcom/tudou/ui/activity/WelcomeActivity$WelHandler;
.super Landroid/os/Handler;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/activity/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WelHandler"
.end annotation


# instance fields
.field private final mOuterActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tudou/ui/activity/WelcomeActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tudou/ui/activity/WelcomeActivity;)V
    .locals 1
    .param p1, "welcomeActivity"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 181
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 182
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity$WelHandler;->mOuterActivity:Ljava/lang/ref/WeakReference;

    .line 183
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 186
    iget-object v6, p0, Lcom/tudou/ui/activity/WelcomeActivity$WelHandler;->mOuterActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tudou/ui/activity/WelcomeActivity;

    .line 187
    .local v4, "mOuter":Lcom/tudou/ui/activity/WelcomeActivity;
    if-nez v4, :cond_1

    .line 310
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 190
    :cond_1
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    .line 248
    :sswitch_1
    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$500(Lcom/tudou/ui/activity/WelcomeActivity;)V

    .line 249
    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$600(Lcom/tudou/ui/activity/WelcomeActivity;)V

    goto :goto_0

    .line 192
    :sswitch_2
    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$000(Lcom/tudou/ui/activity/WelcomeActivity;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$100(Lcom/tudou/ui/activity/WelcomeActivity;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$200(Lcom/tudou/ui/activity/WelcomeActivity;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 193
    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$300(Lcom/tudou/ui/activity/WelcomeActivity;)V

    goto :goto_0

    .line 237
    :sswitch_3
    const-string v6, "TAG_TUDOU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_SPLASH_FINISH=====isGoHome:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$100(Lcom/tudou/ui/activity/WelcomeActivity;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",isAdAPINoImage:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$200(Lcom/tudou/ui/activity/WelcomeActivity;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$100(Lcom/tudou/ui/activity/WelcomeActivity;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$400(Lcom/tudou/ui/activity/WelcomeActivity;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 240
    invoke-static {v4, v10}, Lcom/tudou/ui/activity/WelcomeActivity;->access$002(Lcom/tudou/ui/activity/WelcomeActivity;Z)Z

    .line 241
    invoke-virtual {v4, v9}, Lcom/tudou/ui/activity/WelcomeActivity;->goHome(I)V

    goto :goto_0

    .line 252
    :sswitch_4
    const-string v6, "TAG_TUDOU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_AD_IMAGE_RETURN=====isSplashFinish:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$000(Lcom/tudou/ui/activity/WelcomeActivity;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",isGoHome:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$100(Lcom/tudou/ui/activity/WelcomeActivity;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$000(Lcom/tudou/ui/activity/WelcomeActivity;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$100(Lcom/tudou/ui/activity/WelcomeActivity;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$700(Lcom/tudou/ui/activity/WelcomeActivity;)J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 261
    .local v2, "fareTime":J
    const-wide/16 v6, 0xbb8

    cmp-long v6, v2, v6

    if-ltz v6, :cond_3

    .line 262
    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$800(Lcom/tudou/ui/activity/WelcomeActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 263
    invoke-virtual {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->setPosterImage()V

    goto/16 :goto_0

    .line 265
    :cond_2
    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$300(Lcom/tudou/ui/activity/WelcomeActivity;)V

    goto/16 :goto_0

    .line 268
    :cond_3
    const/16 v6, 0x11

    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$900(Lcom/tudou/ui/activity/WelcomeActivity;)I

    move-result v7

    int-to-long v8, v7

    sub-long/2addr v8, v2

    const-wide/16 v10, 0x5

    add-long/2addr v8, v10

    invoke-virtual {p0, v6, v8, v9}, Lcom/tudou/ui/activity/WelcomeActivity$WelHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 274
    .end local v2    # "fareTime":J
    :sswitch_5
    const-string v6, "TAG_TUDOU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_AD_IMAGE_RETURN_SHOW=====isSplashFinish:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$000(Lcom/tudou/ui/activity/WelcomeActivity;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",isGoHome:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$100(Lcom/tudou/ui/activity/WelcomeActivity;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$000(Lcom/tudou/ui/activity/WelcomeActivity;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$100(Lcom/tudou/ui/activity/WelcomeActivity;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 278
    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$800(Lcom/tudou/ui/activity/WelcomeActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 279
    invoke-virtual {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->setPosterImage()V

    goto/16 :goto_0

    .line 281
    :cond_4
    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$300(Lcom/tudou/ui/activity/WelcomeActivity;)V

    goto/16 :goto_0

    .line 288
    :sswitch_6
    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1000(Lcom/tudou/ui/activity/WelcomeActivity;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 289
    const-string v6, "TAG_TUDOU"

    const-string/jumbo v7, "\u9875\u9762\u53ef\u89c1\uff0c\u5c55\u793a\u540e\u66dd\u5149"

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/vo/AdStartpage;->SUE:[Ljava/lang/String;

    array-length v5, v6

    .line 291
    .local v5, "sueLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_6

    .line 292
    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/vo/AdStartpage;->SUE:[Ljava/lang/String;

    aget-object v0, v6, v1

    .line 293
    .local v0, "exposeUrl":Ljava/lang/String;
    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/vo/AdStartpage;->SUESDK:[I

    aget v6, v6, v1

    if-ne v6, v10, :cond_5

    .line 294
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcn/com/mma/mobile/tracking/api/Countly;->onExpose(Ljava/lang/String;)V

    .line 291
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 296
    :cond_5
    new-instance v6, Lcom/youku/network/DisposableHttpTask;

    invoke-direct {v6, v0}, Lcom/youku/network/DisposableHttpTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/youku/network/DisposableHttpTask;->start()V

    goto :goto_2

    .line 300
    .end local v0    # "exposeUrl":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v5    # "sueLength":I
    :cond_6
    const-string v6, "TAG_TUDOU"

    const-string v7, "MSG_AFTER_AD_GO_HOME=====\u66dd\u5149\u540egoHome()"

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {v4}, Lcom/tudou/ui/activity/WelcomeActivity;->access$300(Lcom/tudou/ui/activity/WelcomeActivity;)V

    goto/16 :goto_0

    .line 304
    :sswitch_7
    const-string v6, "TAG_TUDOU"

    const-string v7, "MSG_JUMP_TO_HOME=====\u76f4\u63a5\u8df3\u8f6c\u9996\u9875"

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v4, v9}, Lcom/tudou/ui/activity/WelcomeActivity;->goHome(I)V

    goto/16 :goto_0

    .line 190
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_3
        0xf -> :sswitch_4
        0x11 -> :sswitch_5
        0x16 -> :sswitch_6
        0x17 -> :sswitch_2
        0x18 -> :sswitch_6
        0xc8 -> :sswitch_7
    .end sparse-switch
.end method
