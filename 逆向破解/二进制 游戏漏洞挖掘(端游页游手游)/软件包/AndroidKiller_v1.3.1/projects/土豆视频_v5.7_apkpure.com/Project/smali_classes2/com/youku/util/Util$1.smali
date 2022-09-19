.class final Lcom/youku/util/Util$1;
.super Landroid/os/Handler;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/util/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private previousToastShow:J

.field private previousToastString:Ljava/lang/String;

.field toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1345
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1376
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/util/Util$1;->previousToastString:Ljava/lang/String;

    return-void
.end method

.method private genImgToast(Ljava/lang/String;)Landroid/widget/Toast;
    .locals 6
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 1472
    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1473
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0302e9

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1474
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0c02bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1475
    .local v0, "contentTxt":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1476
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1478
    :cond_0
    new-instance v2, Landroid/widget/Toast;

    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1479
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1480
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 1481
    return-object v2
.end method

.method private genToast(Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 6
    .param p1, "txt"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 1485
    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1486
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0302ea

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1487
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0c02bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1488
    .local v0, "contentTxt":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1489
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1491
    :cond_0
    new-instance v2, Landroid/widget/Toast;

    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1492
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1493
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 1494
    return-object v2
.end method

.method private handleShowTipsEvents(Landroid/os/Message;Z)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "isshort"    # Z

    .prologue
    .line 1383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1384
    .local v4, "thisTime":J
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "tipsString"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1385
    .local v1, "thisTimeMsg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "threshold"

    const-wide/16 v10, -0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1386
    .local v6, "threshold":J
    iget-object v0, p0, Lcom/youku/util/Util$1;->previousToastString:Ljava/lang/String;

    .line 1387
    .local v0, "temp":Ljava/lang/String;
    iput-object v1, p0, Lcom/youku/util/Util$1;->previousToastString:Ljava/lang/String;

    .line 1388
    iget-wide v2, p0, Lcom/youku/util/Util$1;->previousToastShow:J

    .line 1389
    .local v2, "tempTime":J
    iput-wide v4, p0, Lcom/youku/util/Util$1;->previousToastShow:J

    .line 1403
    if-eqz v1, :cond_0

    sub-long v8, v4, v2

    const-wide/16 v10, 0xdac

    cmp-long v8, v8, v10

    if-gtz v8, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1405
    :cond_0
    iput-object v0, p0, Lcom/youku/util/Util$1;->previousToastString:Ljava/lang/String;

    .line 1406
    iput-wide v2, p0, Lcom/youku/util/Util$1;->previousToastShow:J

    .line 1440
    :goto_0
    return-void

    .line 1409
    :cond_1
    iget-object v8, p0, Lcom/youku/util/Util$1;->toast:Landroid/widget/Toast;

    if-eqz v8, :cond_3

    .line 1410
    iget-object v8, p0, Lcom/youku/util/Util$1;->toast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->cancel()V

    .line 1412
    if-eqz p2, :cond_2

    const/4 v8, 0x0

    :goto_1
    invoke-direct {p0, v1, v8}, Lcom/youku/util/Util$1;->genToast(Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v8

    iput-object v8, p0, Lcom/youku/util/Util$1;->toast:Landroid/widget/Toast;

    .line 1417
    :goto_2
    iget-object v8, p0, Lcom/youku/util/Util$1;->toast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1439
    iput-wide v4, p0, Lcom/youku/util/Util$1;->previousToastShow:J

    goto :goto_0

    .line 1412
    :cond_2
    const/4 v8, 0x1

    goto :goto_1

    .line 1415
    :cond_3
    if-eqz p2, :cond_4

    const/4 v8, 0x0

    :goto_3
    invoke-direct {p0, v1, v8}, Lcom/youku/util/Util$1;->genToast(Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v8

    iput-object v8, p0, Lcom/youku/util/Util$1;->toast:Landroid/widget/Toast;

    goto :goto_2

    :cond_4
    const/4 v8, 0x1

    goto :goto_3
.end method

.method private handleShowTipsEventsImg(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1449
    .local v4, "thisTime":J
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "tipsString"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1451
    .local v1, "thisTimeMsg":Ljava/lang/String;
    iget-object v0, p0, Lcom/youku/util/Util$1;->previousToastString:Ljava/lang/String;

    .line 1452
    .local v0, "temp":Ljava/lang/String;
    iput-object v1, p0, Lcom/youku/util/Util$1;->previousToastString:Ljava/lang/String;

    .line 1453
    iget-wide v2, p0, Lcom/youku/util/Util$1;->previousToastShow:J

    .line 1454
    .local v2, "tempTime":J
    iput-wide v4, p0, Lcom/youku/util/Util$1;->previousToastShow:J

    .line 1455
    if-eqz v1, :cond_0

    sub-long v6, v4, v2

    const-wide/16 v8, 0xdac

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1457
    :cond_0
    iput-object v0, p0, Lcom/youku/util/Util$1;->previousToastString:Ljava/lang/String;

    .line 1458
    iput-wide v2, p0, Lcom/youku/util/Util$1;->previousToastShow:J

    .line 1469
    :goto_0
    return-void

    .line 1461
    :cond_1
    iget-object v6, p0, Lcom/youku/util/Util$1;->toast:Landroid/widget/Toast;

    if-eqz v6, :cond_2

    .line 1462
    iget-object v6, p0, Lcom/youku/util/Util$1;->toast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->cancel()V

    .line 1463
    invoke-direct {p0, v1}, Lcom/youku/util/Util$1;->genImgToast(Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/youku/util/Util$1;->toast:Landroid/widget/Toast;

    .line 1467
    :goto_1
    iget-object v6, p0, Lcom/youku/util/Util$1;->toast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1468
    iput-wide v4, p0, Lcom/youku/util/Util$1;->previousToastShow:J

    goto :goto_0

    .line 1465
    :cond_2
    invoke-direct {p0, v1}, Lcom/youku/util/Util$1;->genImgToast(Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/youku/util/Util$1;->toast:Landroid/widget/Toast;

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 1349
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1372
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1373
    return-void

    .line 1354
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ToastMsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/youku/util/Util$1;->genToast(Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1358
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/util/Util$1;->handleShowTipsEvents(Landroid/os/Message;Z)V

    goto :goto_0

    .line 1365
    :pswitch_2
    invoke-direct {p0, p1, v2}, Lcom/youku/util/Util$1;->handleShowTipsEvents(Landroid/os/Message;Z)V

    goto :goto_0

    .line 1369
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/youku/util/Util$1;->handleShowTipsEventsImg(Landroid/os/Message;)V

    goto :goto_0

    .line 1349
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
