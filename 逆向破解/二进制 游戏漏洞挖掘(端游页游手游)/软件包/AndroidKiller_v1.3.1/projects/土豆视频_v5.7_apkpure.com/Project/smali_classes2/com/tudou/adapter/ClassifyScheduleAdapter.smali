.class public Lcom/tudou/adapter/ClassifyScheduleAdapter;
.super Lcom/tudou/adapter/AbsAdapter;
.source "ClassifyScheduleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tudou/adapter/AbsAdapter",
        "<",
        "Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private dayItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelItem:Lcom/youku/vo/ChannelItem;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tudou/adapter/AbsAdapter;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/youku/vo/ChannelItem;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p3, "mChannelItem"    # Lcom/youku/vo/ChannelItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;",
            ">;",
            "Lcom/youku/vo/ChannelItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;>;"
    invoke-direct {p0, p2}, Lcom/tudou/adapter/AbsAdapter;-><init>(Ljava/util/List;)V

    .line 34
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyScheduleAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/tudou/adapter/ClassifyScheduleAdapter;->dayItems:Ljava/util/List;

    .line 36
    iput-object p3, p0, Lcom/tudou/adapter/ClassifyScheduleAdapter;->mChannelItem:Lcom/youku/vo/ChannelItem;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/adapter/ClassifyScheduleAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/ClassifyScheduleAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyScheduleAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initViewHolder(Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "viewholder"    # Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 73
    const v0, 0x7f0c02e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;->leftView:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0c02e3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;->linlayout:Landroid/widget/LinearLayout;

    .line 75
    return-void
.end method

.method private setViewHolderData(Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;I)V
    .locals 12
    .param p1, "viewholder"    # Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v11, 0x7f0301a4

    const/16 v10, 0x8

    const v9, 0x7f0c07a3

    const v8, 0x7f0c07a0

    const v7, 0x7f0c07a2

    .line 78
    iget-object v4, p0, Lcom/tudou/adapter/ClassifyScheduleAdapter;->dayItems:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;

    .line 79
    .local v3, "items":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    iget-object v4, p1, Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;->leftView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->weekday:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->week:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    if-nez p2, :cond_0

    .line 81
    iget-object v4, p1, Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;->leftView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tudou/adapter/ClassifyScheduleAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0e00b4

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 87
    :goto_0
    iget-object v4, v3, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->album:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 88
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, v3, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->album:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 89
    iget-object v4, v3, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->album:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;

    .line 90
    .local v1, "albumItem":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;
    iget-object v4, p0, Lcom/tudou/adapter/ClassifyScheduleAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v11, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "ablumItemView":Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v3, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->album:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;

    iget-object v5, v5, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v3, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->album:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;

    iget-object v5, v5, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->update_episode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget v4, v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->is_update:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 98
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget-object v5, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v6, 0x7f0e00b0

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 101
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget-object v5, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v6, 0x7f0e00af

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 113
    :goto_2
    iget-object v4, v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->area_name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :goto_3
    iget-object v4, p1, Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;->linlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    new-instance v4, Lcom/tudou/adapter/ClassifyScheduleAdapter$1;

    invoke-direct {v4, p0, v1}, Lcom/tudou/adapter/ClassifyScheduleAdapter$1;-><init>(Lcom/tudou/adapter/ClassifyScheduleAdapter;Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 84
    .end local v0    # "ablumItemView":Landroid/view/View;
    .end local v1    # "albumItem":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;
    .end local v2    # "i":I
    :cond_0
    iget-object v4, p1, Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;->leftView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tudou/adapter/ClassifyScheduleAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0e00a3

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 105
    .restart local v0    # "ablumItemView":Landroid/view/View;
    .restart local v1    # "albumItem":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget-object v5, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v6, 0x7f0e00ad

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 108
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget-object v5, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v6, 0x7f0e00ac

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2

    .line 117
    :cond_2
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 118
    const v4, 0x7f0c07a1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->area_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 132
    .end local v0    # "ablumItemView":Landroid/view/View;
    .end local v1    # "albumItem":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;
    .end local v2    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/tudou/adapter/ClassifyScheduleAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v11, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 134
    .restart local v0    # "ablumItemView":Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f53\u65e5\u6682\u65e0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/adapter/ClassifyScheduleAdapter;->mChannelItem:Lcom/youku/vo/ChannelItem;

    iget-object v6, v6, Lcom/youku/vo/ChannelItem;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u66f4\u65b0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget-object v5, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v6, 0x7f0e00ad

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 141
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 143
    new-instance v4, Lcom/tudou/adapter/ClassifyScheduleAdapter$2;

    invoke-direct {v4, p0}, Lcom/tudou/adapter/ClassifyScheduleAdapter$2;-><init>(Lcom/tudou/adapter/ClassifyScheduleAdapter;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v4, p1, Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;->linlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    .end local v0    # "ablumItemView":Landroid/view/View;
    :cond_4
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyScheduleAdapter;->dayItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyScheduleAdapter;->dayItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    if-nez p2, :cond_0

    .line 58
    iget-object v1, p0, Lcom/tudou/adapter/ClassifyScheduleAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030093

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 60
    new-instance v0, Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/ClassifyScheduleAdapter;)V

    .line 61
    .local v0, "viewholder":Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;
    invoke-direct {p0, v0, p2}, Lcom/tudou/adapter/ClassifyScheduleAdapter;->initViewHolder(Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;Landroid/view/View;)V

    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/tudou/adapter/ClassifyScheduleAdapter;->setViewHolderData(Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;I)V

    .line 69
    return-object p2

    .line 64
    .end local v0    # "viewholder":Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;

    .line 65
    .restart local v0    # "viewholder":Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;
    iget-object v1, v0, Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;->linlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;>;"
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyScheduleAdapter;->dayItems:Ljava/util/List;

    .line 42
    return-void
.end method
