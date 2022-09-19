.class final Lcom/tudou/android/Youku$8;
.super Landroid/os/Handler;
.source "Youku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/android/Youku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1228
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 1230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Youku.msgHandler.new Handler() {...}.handleMessage()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;)V

    .line 1232
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 1275
    :goto_0
    :sswitch_0
    return-void

    .line 1252
    :sswitch_1
    new-instance v2, Landroid/widget/Toast;

    sget-object v5, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1253
    .local v2, "t":Landroid/widget/Toast;
    const/16 v5, 0x30

    invoke-virtual {v2, v5, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 1254
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "tipsDuration"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1255
    .local v0, "duration":I
    if-nez v0, :cond_0

    .line 1256
    invoke-virtual {v2, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 1260
    :goto_1
    sget-object v5, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1261
    .local v1, "mInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030338

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1262
    .local v4, "v":Landroid/view/View;
    const v5, 0x7f0c0df9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1263
    .local v3, "text":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "tipsString"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    const/16 v5, 0x270f

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1265
    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {v5}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1266
    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1267
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1258
    .end local v1    # "mInflater":Landroid/view/LayoutInflater;
    .end local v3    # "text":Landroid/widget/TextView;
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_1

    .line 1232
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_0
        0x16d -> :sswitch_0
        0x27b -> :sswitch_0
        0x29a -> :sswitch_1
    .end sparse-switch
.end method
