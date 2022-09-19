.class public Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClassifyFeatureInfoAdapter.java"


# instance fields
.field private mChannelName:Ljava/lang/String;

.field private mChannelPageModulesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelPageModules;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "channelName"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mContext:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mChannelName:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mChannelPageModulesList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mChannelPageModulesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mChannelPageModulesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/ChannelPageModules;

    iget v0, v0, Lcom/youku/vo/ChannelPageModules;->itemType:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 64
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mChannelPageModulesList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelPageModules;

    iget v1, v2, Lcom/youku/vo/ChannelPageModules;->itemType:I

    .line 66
    .local v1, "subType":I
    if-nez p2, :cond_0

    .line 67
    packed-switch v1, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mChannelPageModulesList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/ChannelPageModules;

    .line 94
    .local v0, "mChannelPageModules":Lcom/youku/vo/ChannelPageModules;
    packed-switch v1, :pswitch_data_1

    .line 118
    :goto_1
    return-object p2

    .line 69
    .end local v0    # "mChannelPageModules":Lcom/youku/vo/ChannelPageModules;
    :pswitch_0
    new-instance p2, Lcom/youku/widget/NormalHorizontalTabView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mChannelName:Ljava/lang/String;

    invoke-direct {p2, v2, v3}, Lcom/youku/widget/NormalHorizontalTabView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    .restart local p2    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 72
    :pswitch_1
    new-instance p2, Lcom/youku/widget/NormalVerticalTabView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mChannelName:Ljava/lang/String;

    invoke-direct {p2, v2, v3}, Lcom/youku/widget/NormalVerticalTabView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    .restart local p2    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 75
    :pswitch_2
    new-instance p2, Lcom/youku/widget/PodcaseTabView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mChannelName:Ljava/lang/String;

    invoke-direct {p2, v2, v3}, Lcom/youku/widget/PodcaseTabView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    .restart local p2    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 78
    :pswitch_3
    new-instance p2, Lcom/youku/widget/SelectnessTabView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mChannelName:Ljava/lang/String;

    invoke-direct {p2, v2, v3}, Lcom/youku/widget/SelectnessTabView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    .restart local p2    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 81
    :pswitch_4
    new-instance p2, Lcom/youku/widget/SpecialTopicTabView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mChannelName:Ljava/lang/String;

    invoke-direct {p2, v2, v3}, Lcom/youku/widget/SpecialTopicTabView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    .restart local p2    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 84
    :pswitch_5
    new-instance p2, Lcom/youku/widget/SelectnessListTabView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mChannelName:Ljava/lang/String;

    invoke-direct {p2, v2, v3}, Lcom/youku/widget/SelectnessListTabView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    .restart local p2    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 87
    :pswitch_6
    new-instance p2, Lcom/youku/widget/TudouModuleH5;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mContext:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-direct {p2, v2, v3}, Lcom/youku/widget/TudouModuleH5;-><init>(Landroid/content/Context;Z)V

    .restart local p2    # "convertView":Landroid/view/View;
    goto :goto_0

    .restart local v0    # "mChannelPageModules":Lcom/youku/vo/ChannelPageModules;
    :pswitch_7
    move-object v2, p2

    .line 96
    check-cast v2, Lcom/youku/widget/NormalHorizontalTabView;

    invoke-virtual {v2, v0}, Lcom/youku/widget/NormalHorizontalTabView;->setData(Lcom/youku/vo/ChannelPageModules;)V

    goto :goto_1

    :pswitch_8
    move-object v2, p2

    .line 99
    check-cast v2, Lcom/youku/widget/NormalVerticalTabView;

    invoke-virtual {v2, v0}, Lcom/youku/widget/NormalVerticalTabView;->setData(Lcom/youku/vo/ChannelPageModules;)V

    goto :goto_1

    :pswitch_9
    move-object v2, p2

    .line 102
    check-cast v2, Lcom/youku/widget/PodcaseTabView;

    invoke-virtual {v2, v0, p0}, Lcom/youku/widget/PodcaseTabView;->setData(Lcom/youku/vo/ChannelPageModules;Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;)V

    goto :goto_1

    :pswitch_a
    move-object v2, p2

    .line 105
    check-cast v2, Lcom/youku/widget/SelectnessTabView;

    invoke-virtual {v2, v0}, Lcom/youku/widget/SelectnessTabView;->setData(Lcom/youku/vo/ChannelPageModules;)V

    goto :goto_1

    :pswitch_b
    move-object v2, p2

    .line 108
    check-cast v2, Lcom/youku/widget/SpecialTopicTabView;

    invoke-virtual {v2, v0}, Lcom/youku/widget/SpecialTopicTabView;->setData(Lcom/youku/vo/ChannelPageModules;)V

    goto :goto_1

    :pswitch_c
    move-object v2, p2

    .line 111
    check-cast v2, Lcom/youku/widget/SelectnessListTabView;

    invoke-virtual {v2, v0}, Lcom/youku/widget/SelectnessListTabView;->setData(Lcom/youku/vo/ChannelPageModules;)V

    goto :goto_1

    :pswitch_d
    move-object v2, p2

    .line 114
    check-cast v2, Lcom/youku/widget/TudouModuleH5;

    iget-object v3, v0, Lcom/youku/vo/ChannelPageModules;->skip_inf:Lcom/youku/vo/SkipInfo;

    invoke-virtual {v2, v3}, Lcom/youku/widget/TudouModuleH5;->setData(Lcom/youku/vo/SkipInfo;)V

    goto :goto_1

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 94
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x7

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelPageModules;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "mChannelPageModulesList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelPageModules;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->mChannelPageModulesList:Ljava/util/List;

    goto :goto_0
.end method
