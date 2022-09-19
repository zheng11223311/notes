.class Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;
.super Landroid/os/Handler;
.source "DetailSerisCacheFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/DetailSerisCacheFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V
    .locals 0

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 1003
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1005
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/youku/vo/DetailSeris;

    .line 1006
    .local v1, "serislist":Lcom/youku/vo/DetailSeris;
    iget-object v3, v1, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v4, :cond_2

    .line 1007
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$2000(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1018
    :cond_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3, v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$2300(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;Lcom/youku/vo/DetailSeris;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1019
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->dismissLoading()V

    .line 1020
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1600(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1021
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$2400(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1600(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0c0423

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1024
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1600(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0c0422

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1026
    .local v2, "tv":Landroid/widget/TextView;
    const-string v3, "\u56e0\u7248\u6743\u9650\u5236\uff0c\u7981\u6b62\u7f13\u5b58"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1009
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_2
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$2000(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1010
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, v1, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1011
    iget-object v3, v1, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/DetailSeris$Languageinfo;

    iget-boolean v3, v3, Lcom/youku/vo/DetailSeris$Languageinfo;->is_default:Z

    if-eqz v3, :cond_3

    .line 1012
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$2100(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v3, v1, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/DetailSeris$Languageinfo;

    iget-object v3, v3, Lcom/youku/vo/DetailSeris$Languageinfo;->lang:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    iget-object v3, v1, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/DetailSeris$Languageinfo;

    iget-object v3, v3, Lcom/youku/vo/DetailSeris$Languageinfo;->lang:Ljava/lang/String;

    sput-object v3, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->langtextselect:Ljava/lang/String;

    .line 1014
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$2200(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Lcom/tudou/ui/fragment/CacheFields;

    move-result-object v4

    iget-object v3, v1, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/DetailSeris$Languageinfo;

    iget-object v3, v3, Lcom/youku/vo/DetailSeris$Languageinfo;->langCode:Ljava/lang/String;

    iput-object v3, v4, Lcom/tudou/ui/fragment/CacheFields;->language:Ljava/lang/String;

    .line 1010
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1029
    .end local v0    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/youku/vo/DetailSeris;

    invoke-static {v4, v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$2500(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;Lcom/youku/vo/DetailSeris;)V

    .line 1030
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$2600(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V

    .line 1031
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->updateUI()V

    .line 1032
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1600(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->dismissLoading()V

    goto/16 :goto_0

    .line 1036
    .end local v1    # "serislist":Lcom/youku/vo/DetailSeris;
    :sswitch_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->dismissLoading()V

    .line 1037
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$1600(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1041
    :sswitch_2
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$000(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1042
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$000(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-gt v3, v4, :cond_5

    .line 1043
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$200(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1045
    :cond_5
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$200(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1046
    iget-object v3, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$13;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$300(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/TextView;

    move-result-object v3

    sget-object v4, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->cachetextselect:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1003
    :sswitch_data_0
    .sparse-switch
        0x7d1 -> :sswitch_2
        0xfa0 -> :sswitch_0
        0xfa1 -> :sswitch_1
    .end sparse-switch
.end method
