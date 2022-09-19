.class Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;
.super Ljava/lang/Thread;
.source "GiftLogicFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StarThread"
.end annotation


# instance fields
.field public flag:Z

.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;


# direct methods
.method private constructor <init>(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;)V
    .locals 1

    .prologue
    .line 111
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;->flag:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;
    .param p2, "x1"    # Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$1;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;-><init>(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 116
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 117
    :goto_0
    iget-boolean v4, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;->flag:Z

    if-eqz v4, :cond_4

    .line 119
    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    invoke-static {v4}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->access$000(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 125
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    invoke-static {v4}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->access$200(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    invoke-static {v4}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->access$300(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;)I

    move-result v4

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-ltz v4, :cond_2

    .line 126
    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    iget-object v4, v4, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->starQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 127
    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    iget-object v4, v4, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->starQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarListItemInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .local v3, "starInfo":Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarListItemInfo;
    :try_start_2
    iget-boolean v4, v3, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarListItemInfo;->isSelf:Z

    if-eqz v4, :cond_3

    .line 131
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v6, "drawable"

    const-string v7, "lf_crashstar_self"

    invoke-static {v4, v6, v7}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 133
    .local v1, "drawableID":I
    :goto_2
    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    .line 134
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/high16 v7, 0x42a00000    # 80.0f

    invoke-static {v7}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v7

    const/high16 v8, 0x42a00000    # 80.0f

    invoke-static {v8}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v8

    invoke-static {v4, v6, v7, v8}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->access$400(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 133
    invoke-static {v4}, Lcom/corncop/virgo/VirgoImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    invoke-static {v4}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->access$500(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;)Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->AddGift(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawableID":I
    :cond_1
    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarThread;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->access$202(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;J)J

    .line 145
    .end local v3    # "starInfo":Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarListItemInfo;
    :cond_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 120
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 132
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "starInfo":Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarListItemInfo;
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v6, "drawable"

    const-string v7, "lf_crashstar_normal"

    invoke-static {v4, v6, v7}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    goto :goto_2

    .line 138
    :catch_1
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 147
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "starInfo":Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarListItemInfo;
    :cond_4
    return-void
.end method
