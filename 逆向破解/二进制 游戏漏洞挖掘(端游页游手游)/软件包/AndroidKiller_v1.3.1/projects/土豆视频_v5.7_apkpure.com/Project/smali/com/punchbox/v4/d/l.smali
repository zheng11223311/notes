.class Lcom/punchbox/v4/d/l;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/d/i;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/d/i;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/punchbox/response/b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/punchbox/response/b;

    iget-object v1, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-virtual {v1, v0}, Lcom/punchbox/v4/d/i;->a(Lcom/punchbox/response/b;)V

    iget-object v0, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-virtual {v0}, Lcom/punchbox/v4/d/i;->c()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/punchbox/exception/PBException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/punchbox/exception/PBException;

    iget-object v1, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-static {v1}, Lcom/punchbox/v4/d/i;->b(Lcom/punchbox/v4/d/i;)Lcom/punchbox/listener/AdListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-static {v1}, Lcom/punchbox/v4/d/i;->b(Lcom/punchbox/v4/d/i;)Lcom/punchbox/listener/AdListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/punchbox/listener/AdListener;->onFailedToReceiveAd(Lcom/punchbox/exception/PBException;)V

    :cond_1
    iget-object v1, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-virtual {v1, v0}, Lcom/punchbox/v4/d/i;->a(Lcom/punchbox/exception/PBException;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "callback"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AD_RETURN_MORE (result) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/punchbox/util/PBLog;->i(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    iget-object v2, v2, Lcom/punchbox/v4/d/i;->t:Lcom/punchbox/v4/d/a;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    iget-object v1, v1, Lcom/punchbox/v4/d/i;->t:Lcom/punchbox/v4/d/a;

    invoke-virtual {v1, v0}, Lcom/punchbox/v4/d/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-static {v0}, Lcom/punchbox/v4/d/i;->b(Lcom/punchbox/v4/d/i;)Lcom/punchbox/listener/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-static {v0}, Lcom/punchbox/v4/d/i;->b(Lcom/punchbox/v4/d/i;)Lcom/punchbox/listener/AdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/punchbox/listener/AdListener;->onReceiveAd()V

    invoke-static {}, Lcom/punchbox/v4/d/i;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad:onReceivedAd"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-static {v0}, Lcom/punchbox/v4/d/i;->b(Lcom/punchbox/v4/d/i;)Lcom/punchbox/listener/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-static {v0}, Lcom/punchbox/v4/d/i;->b(Lcom/punchbox/v4/d/i;)Lcom/punchbox/listener/AdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/punchbox/listener/AdListener;->onPresentScreen()V

    invoke-static {}, Lcom/punchbox/v4/d/i;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad:onPresentScreen"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-static {v0}, Lcom/punchbox/v4/d/i;->b(Lcom/punchbox/v4/d/i;)Lcom/punchbox/listener/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-static {v0}, Lcom/punchbox/v4/d/i;->b(Lcom/punchbox/v4/d/i;)Lcom/punchbox/listener/AdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/punchbox/listener/AdListener;->onDismissScreen()V

    invoke-static {}, Lcom/punchbox/v4/d/i;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad:onDismissScreen"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-static {v0}, Lcom/punchbox/v4/d/i;->b(Lcom/punchbox/v4/d/i;)Lcom/punchbox/listener/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/punchbox/exception/PBException;

    iget-object v1, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-static {v1}, Lcom/punchbox/v4/d/i;->b(Lcom/punchbox/v4/d/i;)Lcom/punchbox/listener/AdListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/punchbox/listener/AdListener;->onFailedToReceiveAd(Lcom/punchbox/exception/PBException;)V

    invoke-static {}, Lcom/punchbox/v4/d/i;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad:onFailedToReceiveAd"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    const-string v1, "com.anzhuoshangdian.market"

    sget-object v2, Lcom/punchbox/engine/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v5, v4}, Lcom/punchbox/v4/d/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    iget-object v0, v0, Lcom/punchbox/v4/d/i;->s:Lcom/punchbox/util/d;

    iget-object v1, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-virtual {v1}, Lcom/punchbox/v4/d/i;->d()I

    move-result v1

    const/16 v2, 0x29

    const-string v5, "ClickList"

    invoke-virtual/range {v0 .. v5}, Lcom/punchbox/util/d;->a(IIIILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-virtual {v0}, Lcom/punchbox/v4/d/i;->f()V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/punchbox/engine/PreDownloadData;

    iget-object v1, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-static {v1, v0}, Lcom/punchbox/v4/d/i;->a(Lcom/punchbox/v4/d/i;Lcom/punchbox/engine/PreDownloadData;)V

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adInfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-static {v2, v1, v0}, Lcom/punchbox/v4/d/i;->a(Lcom/punchbox/v4/d/i;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adInfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-virtual {v2, v1, v0}, Lcom/punchbox/v4/d/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_0

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-virtual {v1, v0}, Lcom/punchbox/v4/d/i;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-virtual {v1, v0}, Lcom/punchbox/v4/d/i;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adInfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-virtual {v2, v1, v0}, Lcom/punchbox/v4/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "adInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isrefreshing"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-virtual {v2, v1}, Lcom/punchbox/v4/d/i;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-virtual {v1, v0}, Lcom/punchbox/v4/d/i;->a(Z)V

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/punchbox/v4/d/i;->d:Z

    iget-object v0, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    new-instance v1, Lcom/punchbox/exception/PBException;

    const/16 v2, 0x7da

    const-string v3, "Load image time out"

    invoke-direct {v1, v2, v3}, Lcom/punchbox/exception/PBException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/d/i;->a(Lcom/punchbox/exception/PBException;)V

    goto/16 :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-virtual {v0}, Lcom/punchbox/v4/d/i;->d()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-virtual {v0}, Lcom/punchbox/v4/d/i;->f()V

    goto/16 :goto_0

    :sswitch_13
    iget-object v0, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-virtual {v0}, Lcom/punchbox/v4/d/i;->d()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "adInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "callback"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/punchbox/listener/b;

    goto/16 :goto_0

    :sswitch_14
    iget-object v0, p0, Lcom/punchbox/v4/d/l;->a:Lcom/punchbox/v4/d/i;

    invoke-virtual {v0}, Lcom/punchbox/v4/d/i;->d()I

    move-result v0

    if-ne v0, v4, :cond_0

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/util/ArrayList;

    sput-object v0, Lcom/punchbox/v4/d/i;->l:Ljava/util/ArrayList;

    :goto_1
    invoke-static {}, Lcom/punchbox/v4/d/i;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get downloaded apps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/punchbox/v4/d/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    sput-object v5, Lcom/punchbox/v4/d/i;->l:Ljava/util/ArrayList;

    goto :goto_1

    :sswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/ArrayList;

    sput-object v0, Lcom/punchbox/v4/d/i;->m:Ljava/util/ArrayList;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_16
        0x2711 -> :sswitch_0
        0x2712 -> :sswitch_1
        0x2713 -> :sswitch_2
        0x2714 -> :sswitch_3
        0x2715 -> :sswitch_4
        0x2716 -> :sswitch_5
        0x2717 -> :sswitch_6
        0x2718 -> :sswitch_7
        0x2719 -> :sswitch_8
        0x271a -> :sswitch_9
        0x271b -> :sswitch_a
        0x271c -> :sswitch_b
        0x271d -> :sswitch_c
        0x271e -> :sswitch_d
        0x271f -> :sswitch_e
        0x2720 -> :sswitch_f
        0x2721 -> :sswitch_10
        0x2722 -> :sswitch_12
        0x2723 -> :sswitch_13
        0x2724 -> :sswitch_11
        0x2725 -> :sswitch_14
    .end sparse-switch
.end method
