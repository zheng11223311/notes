.class public Lcom/tudou/push/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/push/PushReceiver$DataProcessingAsyncTask;
    }
.end annotation


# static fields
.field public static final ACTION_CHAT:Ljava/lang/String; = "CHAT"

.field public static final ACTION_DOWNLOAD:Ljava/lang/String; = "DOWNLOAD"

.field public static final ACTION_IMG:Ljava/lang/String; = "IMG"

.field public static final ACTION_PLAY:Ljava/lang/String; = "PLAY"

.field public static MQTT_BROKER_PORT_NUM:I = 0x0

.field public static final MQTT_BROKER_PORT_NUM_OFFICIAL:I = 0x1f90

.field public static final MQTT_BROKER_PORT_NUM_TEST:I = 0x1bb

.field public static final NEW_PUSH_NEW_VIDEO:I = 0x4

.field public static final OLD_PUSH_NEW_VIDEO:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Push_Service"


# instance fields
.field private context:Landroid/content/Context;

.field private mMsgHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x1bb

    sput v0, Lcom/tudou/push/PushReceiver;->MQTT_BROKER_PORT_NUM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 115
    new-instance v0, Lcom/tudou/push/PushReceiver$1;

    invoke-direct {v0, p0}, Lcom/tudou/push/PushReceiver$1;-><init>(Lcom/tudou/push/PushReceiver;)V

    iput-object v0, p0, Lcom/tudou/push/PushReceiver;->mMsgHandler:Landroid/os/Handler;

    .line 97
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/tudou/push/PushReceiver;->dofeedback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/push/PushReceiver;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/push/PushReceiver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/tudou/push/PushReceiver;->processingData(Ljava/lang/String;)V

    return-void
.end method

.method private static dofeedback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "pushFeedbackForReceiveURL"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tudou/push/PushReceiver$2;

    invoke-direct {v1, p0, p1}, Lcom/tudou/push/PushReceiver$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 146
    return-void
.end method

.method private getBigViewNotification(Lcom/tudou/push/PushMsg;)Landroid/app/Notification;
    .locals 14
    .param p1, "msg"    # Lcom/tudou/push/PushMsg;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 341
    new-instance v10, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v11, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0203ee

    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    iget-object v11, p1, Lcom/tudou/push/PushMsg;->content:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    iget-object v11, p1, Lcom/tudou/push/PushMsg;->desc:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    iget-object v11, p1, Lcom/tudou/push/PushMsg;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    invoke-direct {p0}, Lcom/tudou/push/PushReceiver;->isPlaySound()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, -0x1

    :goto_0
    invoke-virtual {v11, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    const-string v11, "IMG"

    invoke-direct {p0, p1, v11}, Lcom/tudou/push/PushReceiver;->getPendingIntent(Lcom/tudou/push/PushMsg;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 347
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget v10, p1, Lcom/tudou/push/PushMsg;->type:I

    packed-switch v10, :pswitch_data_0

    .line 414
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    return-object v10

    .line 341
    .end local v1    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 349
    .restart local v1    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    :pswitch_0
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-lt v10, v11, :cond_0

    .line 350
    iget-object v9, p1, Lcom/tudou/push/PushMsg;->img:Ljava/lang/String;

    .line 351
    .local v9, "urlStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 352
    new-instance v6, Landroid/widget/RemoteViews;

    sget-object v10, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f030272

    invoke-direct {v6, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 354
    .local v6, "rv":Landroid/widget/RemoteViews;
    const v10, 0x7f0c0c21

    iget-object v11, p1, Lcom/tudou/push/PushMsg;->content:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 356
    const/4 v0, 0x0

    .line 358
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 359
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/InputStream;

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 364
    .end local v8    # "url":Ljava/net/URL;
    :goto_2
    const v10, 0x7f0c0c20

    invoke-virtual {v6, v10, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 368
    const v10, 0x7f0c0c23

    iget-object v11, p1, Lcom/tudou/push/PushMsg;->desc:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 370
    iget-object v10, p1, Lcom/tudou/push/PushMsg;->title:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 371
    const-string v10, ""

    invoke-virtual {v1, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 372
    const-string v10, ""

    invoke-virtual {v1, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 374
    const v10, 0x7f0203ee

    invoke-virtual {v1, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 375
    const/4 v10, -0x1

    invoke-virtual {v1, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 376
    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 377
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 379
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "rv":Landroid/widget/RemoteViews;
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 380
    .local v3, "i":Landroid/content/Intent;
    const/high16 v10, 0x34400000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 382
    const-string v10, "PushMsg"

    invoke-virtual {v3, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 383
    const-string v10, "from"

    const-string v11, "push"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v10, "action"

    const-string v11, "PLAY"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    sget-object v10, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-class v11, Lcom/tudou/push/EmptyActivity;

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 386
    iget v10, p1, Lcom/tudou/push/PushMsg;->type:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v11, v12

    add-int v5, v10, v11

    .line 387
    .local v5, "requestCode":I
    sget-object v10, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const/high16 v11, 0x8000000

    invoke-static {v10, v5, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 389
    .local v4, "p":Landroid/app/PendingIntent;
    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 360
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "p":Landroid/app/PendingIntent;
    .end local v5    # "requestCode":I
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "rv":Landroid/widget/RemoteViews;
    :catch_0
    move-exception v2

    .line 361
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 362
    iget-object v10, p0, Lcom/tudou/push/PushReceiver;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020052

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 395
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "rv":Landroid/widget/RemoteViews;
    .end local v9    # "urlStr":Ljava/lang/String;
    :pswitch_1
    iget-object v10, p1, Lcom/tudou/push/PushMsg;->icon:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 397
    :try_start_1
    new-instance v7, Ljava/net/URL;

    iget-object v10, p1, Lcom/tudou/push/PushMsg;->icon:Ljava/lang/String;

    invoke-direct {v7, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 398
    .local v7, "u":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/InputStream;

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 399
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 400
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "u":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 401
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "Push_Service"

    invoke-static {v10, v2}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    sget-object v10, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202bc

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 406
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    sget-object v10, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202bc

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1

    .line 347
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getCustomNotification(Lcom/tudou/push/PushMsg;I)Landroid/app/Notification;
    .locals 8
    .param p1, "msg"    # Lcom/tudou/push/PushMsg;
    .param p2, "icon"    # I

    .prologue
    const v7, 0x7f0c02f0

    const v6, 0x7f0202bc

    .line 302
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 303
    .local v1, "n":Landroid/app/Notification;
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 304
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 305
    invoke-direct {p0}, Lcom/tudou/push/PushReceiver;->isPlaySound()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    :goto_0
    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 306
    iput v6, v1, Landroid/app/Notification;->icon:I

    .line 307
    iget-object v3, p1, Lcom/tudou/push/PushMsg;->content:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    .line 309
    new-instance v3, Landroid/widget/RemoteViews;

    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f03009a

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 310
    iget-object v3, p1, Lcom/tudou/push/PushMsg;->icon:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 312
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p1, Lcom/tudou/push/PushMsg;->icon:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 313
    .local v2, "u":Ljava/net/URL;
    iget-object v4, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x7f0c02f0

    invoke-virtual {v2}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v2    # "u":Ljava/net/URL;
    :goto_1
    const-string/jumbo v3, "test_n"

    iget-object v4, p1, Lcom/tudou/push/PushMsg;->content:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x7f0c00f2

    iget-object v5, p1, Lcom/tudou/push/PushMsg;->content:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 323
    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x7f0c0221

    iget-object v5, p1, Lcom/tudou/push/PushMsg;->desc:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 324
    const-string v3, ""

    invoke-direct {p0, p1, v3}, Lcom/tudou/push/PushReceiver;->getPendingIntent(Lcom/tudou/push/PushMsg;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 325
    return-object v1

    .line 305
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Push_Service"

    invoke-static {v3, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v7, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 319
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v7, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private getPendingIntent(Lcom/tudou/push/PushMsg;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 7
    .param p1, "msg"    # Lcom/tudou/push/PushMsg;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/high16 v6, 0x8000000

    .line 481
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 482
    .local v0, "i":Landroid/content/Intent;
    const/high16 v3, 0x34400000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 486
    const-string v3, "PushMsg"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 487
    const-string v3, "from"

    const-string v4, "push"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string v3, "action"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    const/4 v1, 0x0

    .line 490
    .local v1, "p":Landroid/app/PendingIntent;
    iget v3, p1, Lcom/tudou/push/PushMsg;->type:I

    packed-switch v3, :pswitch_data_0

    .line 510
    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-class v4, Lcom/tudou/push/StartActivityService;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 511
    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    iget v4, p1, Lcom/tudou/push/PushMsg;->type:I

    add-int/lit16 v4, v4, 0x87

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3, v4, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 516
    :goto_0
    return-object v1

    .line 492
    :pswitch_0
    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-class v4, Lcom/tudou/push/EmptyActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 493
    iget v2, p1, Lcom/tudou/push/PushMsg;->type:I

    .line 494
    .local v2, "requestCode":I
    const-string v3, "IMG"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 495
    add-int/lit8 v2, v2, 0x5b

    .line 501
    :cond_0
    :goto_1
    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 503
    goto :goto_0

    .line 496
    :cond_1
    const-string v3, "PLAY"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 497
    add-int/lit8 v2, v2, 0x5c

    goto :goto_1

    .line 498
    :cond_2
    const-string v3, "DOWNLOAD"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 499
    add-int/lit8 v2, v2, 0x5d

    goto :goto_1

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private isPlaySound()Z
    .locals 3

    .prologue
    .line 329
    const-string v2, "app_nodisturb"

    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 331
    .local v1, "t":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 332
    iget v0, v1, Landroid/text/format/Time;->hour:I

    .line 333
    .local v0, "hour":I
    const/16 v2, 0x16

    if-ge v0, v2, :cond_0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 334
    :cond_0
    const/4 v2, 0x0

    .line 336
    .end local v0    # "hour":I
    .end local v1    # "t":Landroid/text/format/Time;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static notificationOpenFeedback(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "mid"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p0, p2}, Lcom/youku/http/URLContainer;->getPushFeedbackForOpenURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    invoke-static {v1, v2}, Lcom/tudou/push/PushReceiver;->dofeedback(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 112
    .local v0, "nm":Landroid/app/NotificationManager;
    add-int/lit16 v1, p1, 0x7fe

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 113
    return-void
.end method

.method private processingData(Ljava/lang/String;)V
    .locals 12
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const v11, 0x7f0202bc

    .line 189
    const-string v8, "msh"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PushService->showNotification: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v4, 0x0

    .line 192
    .local v4, "msg":Lcom/tudou/push/PushMsg;
    :try_start_0
    const-class v8, Lcom/tudou/push/PushMsg;

    invoke-static {p1, v8}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/tudou/push/PushMsg;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    iget-object v8, v4, Lcom/tudou/push/PushMsg;->content:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 198
    const-string/jumbo v8, "\u571f\u8c46\u63d0\u9192"

    iput-object v8, v4, Lcom/tudou/push/PushMsg;->content:Ljava/lang/String;

    .line 200
    :cond_0
    iget-object v8, v4, Lcom/tudou/push/PushMsg;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 201
    iget-object v8, v4, Lcom/tudou/push/PushMsg;->content:Ljava/lang/String;

    iput-object v8, v4, Lcom/tudou/push/PushMsg;->title:Ljava/lang/String;

    .line 204
    :cond_1
    iget-object v8, v4, Lcom/tudou/push/PushMsg;->mid:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 205
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 206
    .local v3, "message":Landroid/os/Message;
    iget-object v8, v4, Lcom/tudou/push/PushMsg;->mid:Ljava/lang/String;

    iput-object v8, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    iget-object v8, p0, Lcom/tudou/push/PushReceiver;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    .end local v3    # "message":Landroid/os/Message;
    :cond_2
    iget v8, v4, Lcom/tudou/push/PushMsg;->type:I

    packed-switch v8, :pswitch_data_0

    .line 230
    invoke-direct {p0, v4}, Lcom/tudou/push/PushReceiver;->getBigViewNotification(Lcom/tudou/push/PushMsg;)Landroid/app/Notification;

    move-result-object v5

    .line 231
    .local v5, "n":Landroid/app/Notification;
    const v8, 0x7f020435

    iput v8, v5, Landroid/app/Notification;->icon:I

    .line 234
    :goto_0
    iget v8, v4, Lcom/tudou/push/PushMsg;->type:I

    if-eqz v8, :cond_3

    if-eqz v5, :cond_3

    .line 235
    sget-object v8, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 240
    .local v6, "nm":Landroid/app/NotificationManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v7, v8

    .line 241
    .local v7, "notifyId":I
    invoke-virtual {v6, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 243
    .end local v5    # "n":Landroid/app/Notification;
    .end local v6    # "nm":Landroid/app/NotificationManager;
    .end local v7    # "notifyId":I
    :cond_3
    :goto_1
    return-void

    .line 193
    :catch_0
    move-exception v2

    .line 194
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 215
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xf

    if-lt v8, v9, :cond_5

    .line 216
    const-string v8, "Xiaomi"

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 217
    invoke-direct {p0, v4, v11}, Lcom/tudou/push/PushReceiver;->getCustomNotification(Lcom/tudou/push/PushMsg;I)Landroid/app/Notification;

    move-result-object v5

    .restart local v5    # "n":Landroid/app/Notification;
    goto :goto_0

    .line 219
    .end local v5    # "n":Landroid/app/Notification;
    :cond_4
    invoke-direct {p0, v4}, Lcom/tudou/push/PushReceiver;->getBigViewNotification(Lcom/tudou/push/PushMsg;)Landroid/app/Notification;

    move-result-object v5

    .line 220
    .restart local v5    # "n":Landroid/app/Notification;
    iput v11, v5, Landroid/app/Notification;->icon:I

    goto :goto_0

    .line 223
    .end local v5    # "n":Landroid/app/Notification;
    :cond_5
    invoke-direct {p0, v4, v11}, Lcom/tudou/push/PushReceiver;->getCustomNotification(Lcom/tudou/push/PushMsg;I)Landroid/app/Notification;

    move-result-object v5

    .line 225
    .restart local v5    # "n":Landroid/app/Notification;
    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static pushAction(I)V
    .locals 2
    .param p0, "action"    # I

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/youku/http/URLContainer;->getPushCollectionURL(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-static {v0, v1}, Lcom/tudou/push/PushReceiver;->dofeedback(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method private zoomBitMap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const v0, 0x3f19999a    # 0.6f

    .line 287
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 288
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 289
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 292
    .local v7, "newbmp":Landroid/graphics/Bitmap;
    return-object v7
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/tudou/push/PushReceiver;->context:Landroid/content/Context;

    .line 156
    const-string/jumbo v3, "tudou_push"

    const-string v4, "receive new push"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v3, "push_msg_content"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 159
    .local v0, "byteContent":[B
    if-eqz v0, :cond_0

    .line 160
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 161
    .local v1, "str":Ljava/lang/String;
    const-string/jumbo v3, "tudou_push"

    invoke-static {v3, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v2, Lcom/tudou/push/PushReceiver$DataProcessingAsyncTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/tudou/push/PushReceiver$DataProcessingAsyncTask;-><init>(Lcom/tudou/push/PushReceiver;Lcom/tudou/push/PushReceiver$1;)V

    .line 163
    .local v2, "task":Lcom/tudou/push/PushReceiver$DataProcessingAsyncTask;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/tudou/push/PushReceiver$DataProcessingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 165
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "task":Lcom/tudou/push/PushReceiver$DataProcessingAsyncTask;
    :cond_0
    return-void
.end method
