.class Lcom/tudou/ui/fragment/MoreFragment$16;
.super Ljava/lang/Thread;
.source "MoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MoreFragment;->getCachePathRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MoreFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MoreFragment;)V
    .locals 0

    .prologue
    .line 1758
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$16;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 1761
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1764
    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->getExternalStorageDirectory()Ljava/util/ArrayList;

    move-result-object v3

    .line 1766
    .local v3, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/SDCardManager$SDCardInfo;>;"
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1767
    .local v4, "msg":Landroid/os/Message;
    iput v12, v4, Landroid/os/Message;->what:I

    .line 1768
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1770
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1771
    .local v7, "size":I
    if-ge v7, v11, :cond_1

    .line 1772
    iget-object v8, p0, Lcom/tudou/ui/fragment/MoreFragment$16;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/MoreFragment;->access$4900(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1773
    iget-object v8, p0, Lcom/tudou/ui/fragment/MoreFragment$16;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/MoreFragment;->access$4900(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1813
    :cond_0
    :goto_0
    return-void

    .line 1777
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1779
    .local v1, "dPath":Ljava/lang/String;
    const-string v8, "dazhu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "size---"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    iget-object v8, p0, Lcom/tudou/ui/fragment/MoreFragment$16;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    new-array v9, v7, [Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/tudou/ui/fragment/MoreFragment;->access$5002(Lcom/tudou/ui/fragment/MoreFragment;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1781
    const/4 v0, 0x1

    .line 1782
    .local v0, "countId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_5

    .line 1783
    iget-object v8, p0, Lcom/tudou/ui/fragment/MoreFragment$16;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-virtual {v8}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1786
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    .line 1787
    .local v6, "sInfo":Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    iget-object v5, v6, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    .line 1789
    .local v5, "path":Ljava/lang/String;
    if-le v7, v11, :cond_4

    .line 1790
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    iget-object v8, v8, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1792
    const-string v8, "\u624b\u673a\u5185\u5b58"

    iput-object v8, v6, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->desc:Ljava/lang/String;

    .line 1793
    const-string v8, "\u624b\u673a\u5185\u5b58"

    iput-object v8, v6, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->descCurPath:Ljava/lang/String;

    .line 1808
    :goto_2
    iget-object v8, p0, Lcom/tudou/ui/fragment/MoreFragment$16;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v8, v6}, Lcom/tudou/ui/fragment/MoreFragment;->access$5100(Lcom/tudou/ui/fragment/MoreFragment;Lcom/tudou/service/download/SDCardManager$SDCardInfo;)V

    .line 1782
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1795
    :cond_2
    if-le v7, v12, :cond_3

    .line 1796
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SD\u5361"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5b58\u50a8"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->desc:Ljava/lang/String;

    .line 1797
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SD\u5361"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->descCurPath:Ljava/lang/String;

    .line 1798
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1800
    :cond_3
    const-string v8, "SD\u5361\u5b58\u50a8"

    iput-object v8, v6, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->desc:Ljava/lang/String;

    .line 1801
    const-string v8, "SD\u5361"

    iput-object v8, v6, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->descCurPath:Ljava/lang/String;

    goto :goto_2

    .line 1805
    :cond_4
    const-string v8, "\u624b\u673a\u5185\u5b58"

    iput-object v8, v6, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->desc:Ljava/lang/String;

    .line 1806
    const-string v8, "\u624b\u673a\u5185\u5b58"

    iput-object v8, v6, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->descCurPath:Ljava/lang/String;

    goto :goto_2

    .line 1811
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "sInfo":Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    :cond_5
    iget-object v8, p0, Lcom/tudou/ui/fragment/MoreFragment$16;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/MoreFragment;->access$4900(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1812
    iget-object v8, p0, Lcom/tudou/ui/fragment/MoreFragment$16;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/MoreFragment;->access$4900(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
