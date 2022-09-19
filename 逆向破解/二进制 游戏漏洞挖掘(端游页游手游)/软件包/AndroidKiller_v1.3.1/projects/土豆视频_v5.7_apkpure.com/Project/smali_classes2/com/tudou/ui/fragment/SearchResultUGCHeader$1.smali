.class Lcom/tudou/ui/fragment/SearchResultUGCHeader$1;
.super Ljava/lang/Object;
.source "SearchResultUGCHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SearchResultUGCHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchResultUGCHeader;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$1;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 248
    invoke-static {}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v.getTag()--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$1;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->access$100(Lcom/tudou/ui/fragment/SearchResultUGCHeader;)Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    invoke-static {}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currPosition--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$1;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->access$200(Lcom/tudou/ui/fragment/SearchResultUGCHeader;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$1;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->access$100(Lcom/tudou/ui/fragment/SearchResultUGCHeader;)Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$1;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->moreFilterText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$1;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-static {v3}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->access$200(Lcom/tudou/ui/fragment/SearchResultUGCHeader;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;->onClick(Landroid/widget/TextView;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 257
    :pswitch_1
    invoke-static {}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ugcOb1"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v0, "\u641c\u7d22\u9875\u7efc\u5408\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u641c\u7d22\u9875-\u7efc\u5408"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$1;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/vo/SearchFilterAndOrder;->order:Ljava/lang/String;

    goto :goto_0

    .line 263
    :pswitch_2
    invoke-static {}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ugcOb2"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "\u641c\u7d22\u9875\u6700\u706b\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u641c\u7d22\u9875-\u6700\u706b"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$1;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/vo/SearchFilterAndOrder;->order:Ljava/lang/String;

    goto :goto_0

    .line 269
    :pswitch_3
    invoke-static {}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ugcOb3"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v0, "\u641c\u7d22\u9875\u6700\u65b0\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u641c\u7d22\u9875-\u6700\u65b0"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$1;->this$0:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/vo/SearchFilterAndOrder;->order:Ljava/lang/String;

    goto :goto_0

    .line 275
    :pswitch_4
    invoke-static {}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "filter"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c05cc
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
