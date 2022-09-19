.class Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$3;
.super Landroid/os/Handler;
.source "EndActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 155
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 157
    :pswitch_0
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$1200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "YouMayLikeTask YOU_MAY_LIKE_SUCCESS "

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :try_start_0
    new-instance v1, Lcom/youku/http/ParseJson;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/youku/http/ParseJson;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, "parsejson":Lcom/youku/http/ParseJson;
    invoke-virtual {v1}, Lcom/youku/http/ParseJson;->parseVideoRecommend()Lcom/youku/vo/DetailRecomment;

    move-result-object v2

    .line 161
    .local v2, "recomment":Lcom/youku/vo/DetailRecomment;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 162
    :cond_0
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v1    # "parsejson":Lcom/youku/http/ParseJson;
    .end local v2    # "recomment":Lcom/youku/vo/DetailRecomment;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->finish()V

    goto :goto_0

    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "parsejson":Lcom/youku/http/ParseJson;
    .restart local v2    # "recomment":Lcom/youku/vo/DetailRecomment;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$1200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "YouMayLikeTask size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-static {v3, v2}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$1300(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;Lcom/youku/vo/DetailRecomment;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 173
    .end local v1    # "parsejson":Lcom/youku/http/ParseJson;
    .end local v2    # "recomment":Lcom/youku/vo/DetailRecomment;
    :pswitch_1
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$1200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "YouMayLikeTask YOU_MAY_LIKE_FAIL "

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$1300(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;Lcom/youku/vo/DetailRecomment;)V

    .line 175
    const v3, 0x7f0d0112

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    .line 176
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$3;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->finish()V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
